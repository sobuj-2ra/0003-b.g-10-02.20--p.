<?php

namespace App\Http\Controllers;

use App\Barcode;
use App\ProductStockIn;
use App\Failed_handheld;
use App\Item;
use Auth;
use DB;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ProductStockInController extends Controller
{


    public function stockinCreate(){
      if(!Auth::user()->can('stockin_hand_device')) {
        return redirect()->route('index')->with('warning','You are not authorized to access that page');
      }
      return view('user.stockin_hand');
    }
    public function stockinStore(Request $request){
            $datas = $request->all();
            $user_id = Auth::user()->id;
            $curDate = Date('Y-m-d H:i:s');
            $selDate = strtotime($datas['selected_date']);
            $selectedDate = Date('Y-m-d',$selDate);
            $arrTemp = [];
            $succArr = [];
            $rejectArr = [];

            foreach($request->barcode as $index=>$row)
            {
              $arrTemp[$index]['barcode'] = $datas['barcode'][$index];
            }


            foreach($arrTemp as $i=>$item){

              $bar_code = $item['barcode'];

              $getbarcode = Barcode::where('barcode', $bar_code)->where('status',1)->first();
              if($getbarcode){
                $check_if_already_stockin = ProductStockIn::where('barcode',$getbarcode->barcode)->where('is_delivered',0)->count();
                if($check_if_already_stockin < 1){
                    $datastockin = new ProductStockIn([
                      'barcode' => $getbarcode->barcode,
                      'item' =>$getbarcode->item,
                      'batch_no' => $getbarcode->batch_no,
                      'stock_by' => $user_id,
                      'is_delivered' => 0,
                    ]);
                    $datastockin->save();
                    
                    $oldItemQty = Item::where('item_code',$getbarcode->item)->first();
                    $qtyF = $oldItemQty['item_qty']+1;
                    $itemData = Item::where('item_code',$getbarcode->item)->first();
                    $itemData->item_qty = $qtyF;
                    $itemData->update();
                    $barcodeT = Barcode::where('barcode',$getbarcode->barcode)->first();
                    $barcodeT->status = 2;
                    $barcodeT->update();

                    $succArr[$i]['barcode'] = $item['barcode'];
                }
                else{
                  $rejectArr[$i]['barcode'] = $item['barcode'];
                }
              }else{
                $rejectArr[$i]['barcode'] = $item['barcode'];
              }

            }
            foreach ($rejectArr as $reItem){
              Failed_handheld::create([
                      'barcode' =>  $reItem['barcode'],
                      'fail_by' =>  $user_id,
                      'status' =>  2,
                      'fail_date' =>  $curDate,
                  ]);
            }


            $total_fail_data = Failed_handheld::where('fail_by',$user_id)
              ->whereDate('fail_date', Date('Y-m-d'))
              ->count();
            //$total_fail_data = count($total_fail_data);
            //echo 'Total F'.$total_fail_data;

            $total_save = ProductStockIn::whereDate('created_at', Date('Y-m-d'))
                      ->where('stock_by',$user_id)
                      ->where('is_delivered',0)
                      ->count();
           // $total_save = count($total_save);
            $recent_saved = count($succArr);
            $recent_failed = count($rejectArr);

          return response()->json(['reject'=>$rejectArr,'total_save'=>$total_save,'total_fail'=>$total_fail_data,'rec_save'=>$recent_saved,'rec_fail'=>$recent_failed]);

    }

    public function OnloadstockinCheck(){
      $user_id = Auth::user()->id;
        $curDate = Date('Y-m-d');


        $total_fail_data = Failed_handheld::where('fail_by',$user_id)
          ->whereDate('fail_date', Date('Y-m-d'))
          ->count();
        //$total_fail_data = count($total_fail_data);
        //echo 'Total F'.$total_fail_data;

        $total_save = ProductStockIn::whereDate('created_at', Date('Y-m-d'))
                  ->where('stock_by',$user_id)
                  ->where('is_delivered',0)
                  ->get();
        $total_save = count($total_save);

        return response()->json(['total_fail'=>$total_fail_data,'total_save'=>$total_save]);
    }


    public function add(Request $request)
    {
    	$json_response = [];


    	if ($request->has(['barcode', 'scanner_id'])) {
            $check_if_produced = Barcode::where('barcode',$request->barcode)->count(); //0 means not produced yet, 1 means produced but not stocked in

            if ($check_if_produced == 0) {
            	$check_if_already_stockin = ProductStockIn::where('barcode',$request->barcode)->count();

            	if ($check_if_already_stockin == 0) {
            		$json_response['Code_status'] = 0;//not produced yet
            	}elseif($check_if_already_stockin == 1){
            		$json_response['Code_status'] = 2;// produced and stocked in
            	}else{
            		$json_response['Code_status'] = 3; //code has been scanned two times
            	}
            }elseif($check_if_produced == 1){ //produced but not stocked in

            	$old_data = Barcode::where('barcode',$request->barcode)->first();

            	$new_data                 = $old_data->attributesToArray();
                $new_data['scanner_id']   = $request->scanner_id;
            	$new_data['is_delivered'] = 0;

            	// remove attributes
            	$new_data = array_except($new_data, ['id','total_print','created_at','updated_at']);
            	// create new Stock in from cloned data
            	$cloned_data =  ProductStockIn::create($new_data);
            	//delete temp barcode record
            	$old_data->delete();
            	$json_response['Code_status'] = 1;
            }

            $total_box                  = ProductStockIn::all()->count();
    		$json_response['box_count'] = $total_box;
            return response()->json($json_response);

    	}

    	return 'Please input barcode and scanner_id';
    }

    public function stockinReport(){
      
      if (!Auth::user()->can('production_stockin_report')) {
          return redirect()->route('index')->with('warning','You are not authorized to access that page');
      }
        return view('admin.report.stockin_report');
    }

    public function stockinReportResult(Request $request){
      if (!Auth::user()->can('production_stockin_report')) {
          return redirect()->route('index')->with('warning','You are not authorized to access that page');
      }
        $from = $fromDate = $request->from_date;
        $from = date('Y-m-d',strtotime($from));
        $from  = $from.' 00:00:00';
        $to = $toDate = $request->to_date;
        $to = date('Y-m-d',strtotime($to));
        $to  = $to.' 23:59:59';

        $stockinDatas = ProductStockIn::whereBetween('created_at',[$from,$to])
        ->get();

        $Datas = collect($stockinDatas);
        $stockinDatas = $Datas->groupBy(function($item) {
          return Carbon::parse($item->created_at)->format('Y-m-d ');
        });
        return view('admin.report.stockin_report_result', compact(['stockinDatas','Datas','fromDate','toDate']));
    }

    public function storeReport(){
      if (!Auth::user()->can('production_store_report')) {
          return redirect()->route('index')->with('warning','You are not authorized to access that page');
      }

      $StoreData = Item::all();
      return view('admin.report.store_report_result',compact('StoreData'));
    }




}
