<?php

namespace App\Http\Controllers;

use App\Events\NewSalesOrderAdded;
use App\Item;
use App\ProductStockIn;
use App\Stockout;
use App\OrderRef;
use App\Customer;
use App\Barcode;
use App\StockOutNew;
use App\Failed_handheld;
use App\Temporarystockout;
use App\Traits\FindItemFromBarcode;
use App\Traits\LogActivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use DB;

class StockoutController extends Controller
{
	use FindItemFromBarcode;
  use LogActivity;

    public function __construct(){
       $this->middleware('auth');
    }

    public function allItemMenu(){
      return view('user.main_delivery');
    }

    public function index()
    {
      if (!Auth::user()->can('delivery_section')) {
          return redirect()->route('index')->with('warning','You are not authorized to access that page');
      }
    	$temp_stockouts = Stockout::where('is_delivered',0)->latest()->get();
    	return view('user.stockout')->with('temp_stockouts',$temp_stockouts);
    }

    public function show($sales_order)
    {
    	
    	$datas = Stockout::where('sales_order',$sales_order)->get();

    	return view('user.singleStockout')->with('datas',$datas);
    }


    public function store(Request $request)
    {
    	//return $request->all();
    	$stockout_order_placed = Stockout::create($request->except(['barcodes']));

    	$stockout_order_placed->stockin()->sync($request->barcodes);

    	ProductStockIn::whereIn('id',$request->barcodes)->update(['is_delivered'=> 1]);
    }


    public function groupby($sales_order = '123456')
    {
        //gets all ordered items with details
       $data = Stockout::with('ordereditem')->where('sales_order',$sales_order)->first();
       //all ordered items
       $collection = $data->ordereditem;

       //groups by item and batch no 
       // similar to SELECT COUNT(`item`),`batch_no`,`item` FROM `product_stock_ins` GROUP BY(`item`), `batch_no`
      $collection = $collection->groupBy('item')
                   ->transform(function($item,$k){
                         return $item->groupBy('batch_no');
                   });

       $invoice_details = [];

       foreach ($collection as $key => $value) {
          //$key = item_code, $value = total batch_no
          //$invoice_details[$key] = $value->count();
          $item_details = $this->getItemDetailsFromItemCode($key);
            
          foreach ($value as $k => $val) {
            // return $val; //contains all data
            //$k = batch no $val = total cartoon no under this item and batch
            $invoice_details[$k]['item_name'] = $item_details->item_name;
            $invoice_details[$k]['item_code'] = $key;
            $invoice_details[$k]['batch_no'] = $k;
            $invoice_details[$k]['pack_size'] = $item_details->pack_size;
            $invoice_details[$k]['total_cartoon'] = $val->count();
            $invoice_details[$k]['total_qty'] = $val->count()*$item_details->pack_size;

              foreach ($val as $barcode_key => $value) {
                $invoice_details[$k]['barcodes'][$barcode_key] = $value->barcode;
              }
          }
           
       }
       

       return $invoice_details;
    }


    public function getItemDetailsFromItemCode($item_code)
    {
        return Item::where('item_code',$item_code)->first();
    }


    public function tempSalesOrder(Request $request)
    {
      // return $request->all();

      $sales_order               = new Stockout;

      $sales_order->name         = $request->name;
      $sales_order->sales_order  = $request->sales_order;
      $sales_order->transport_no = $request->transport_no;
      $sales_order->reference_no = $request->reference_no;
      $sales_order->save();

      event(new NewSalesOrderAdded($sales_order));


      //Logs Activity
      $this->LogActivity(Auth::user()->name,'Added New Sales Order',$request->except('_token'),'',Auth::user()->employee_id);

      return $sales_order;
    }


    public function stockOutHand(){
      $allOrderRef = OrderRef::orderBy('id','DESC')->get();
      return view('user.stockout_hand',compact('allOrderRef'));
    }

    public function getMonthCode($month){
          switch ($month) {
            case '01':
                return 'A';
                break;
            case '02':
                return 'B';
                break;
            case '03':
                return 'C';
                break;
            case '04':
                return 'D';
                break;
            case '05':
                return 'E';
                break;
            case '06':
                return 'F';
                break;
            case '07':
                return 'G';
                break;
            case '08':
                return 'H';
                break;
            case '09':
                return 'I';
                break;
            case '10':
                return 'J';
                break;
            case '11':
                return 'K';
                break;
            case '12':
                return 'L';
                break;

            default:
                return 'AAA';
                break;
        }
    }
    public function stockOutStoreTemp(Request $request){
            $datas = $request->all();
            $user_id = Auth::user()->id;
            $curDate = Date('Y-m-d H:i:s');
            $curTime = Date('H:i:s');
            $selDate = strtotime($datas['selected_date']);
            $selectedDate = Date("Y-m-d $curTime",$selDate);
            $order_ref = $request->order_ref;
            $arrTemp = [];
            $succArr = [];
            $rejectArr = [];

            foreach($request->barcode as $index=>$row)
            {
              $arrTemp[$index]['barcode'] = $datas['barcode'][$index];
            }


            foreach($arrTemp as $i=>$item){

              $bar_code = $item['barcode'];
              if(strlen($bar_code) == 29){
                    $bar_year = substr($bar_code,6,2);
                    $bar_month = substr($bar_code,8,2);
                    $bar_monthF = $this->getMonthCode($bar_month);
                    $bar_day = substr($bar_code,10,2);
                    $bar_shift = substr($bar_code,12,1);
                    $bar_grade = substr($bar_code,13,1);
                    $bar_item = substr($bar_code,16,7);
                    $bar_batch = $bar_day.$bar_monthF.$bar_year.$bar_shift.$bar_grade;

                    $is_item = Item::where('item_code', $bar_item)->first();
                    if($is_item){
                      $check_if_already_stockout = Temporarystockout::where('barcode',$bar_code)->where('status',1)->count();
                      if($check_if_already_stockout < 1){
                          $datastockin = new Temporarystockout([
                            'order_ref' => $order_ref,
                            'barcode' => $bar_code,
                            'item' =>$bar_item,
                            'batch' => $bar_batch,
                            'selected_date' => $selectedDate,
                            'saved_by' => $user_id,
                            'status' => 1,
                          ]);
                          $datastockin->save();

                          $succArr[$i]['barcode'] = $item['barcode'];
                      }
                      else{
                        $rejectArr[$i]['barcode'] = $item['barcode'];
                      }
                    }else{
                      $rejectArr[$i]['barcode'] = $item['barcode'];
                    }
              }
              else{
                $rejectArr[$i]['barcode'] = $item['barcode'];
              }

            }
            foreach ($rejectArr as $reItem){
              Failed_handheld::create([
                      'barcode' =>  $reItem['barcode'],
                      'fail_by' =>  $user_id,
                      'status' =>  3,
                      'fail_date' =>  $curDate,
                  ]);
            }


            $total_fail_data = Failed_handheld::where('fail_by',$user_id)
              ->whereDate('fail_date', Date('Y-m-d'))
              ->count();

            $total_save = Temporarystockout::whereDate('selected_date', Date('Y-m-d'))
                      ->where('saved_by',$user_id)
                      ->where('status',1)
                      ->count();
            $recent_saved = count($succArr);
            $recent_failed = count($rejectArr);

          return response()->json(['reject'=>$rejectArr,'total_save'=>$total_save,'total_fail'=>$total_fail_data,'rec_save'=>$recent_saved,'rec_fail'=>$recent_failed]);

    }


    public function SlipSectioinView(){
      $allRef = Temporarystockout::where('order_ref','<>',null)->where('status',1)->groupBy('order_ref')->orderBy('id','DESC')->get();
      return view('user.slip_view',compact('allRef'));
    }
    public function SlipSearchDataGet(Request $r){
      $ref = $r->order_ref;
      $cust_ref = OrderRef::select('order_ref_no','cust_id')->where('order_ref_no',$ref)->first();
      $cust_name = Customer::find($cust_ref->cust_id);
      $cust_id = $cust_name->id;
      $cust_name = $cust_name->cust_name;
      $curDate = Date("Y-m-d");
      $lastSOData = StockOutNew::select('created_at','id','sl_no')->whereDate('created_at',$curDate)->orderBy('id','DESC')->first();
      if($lastSOData['sl_no'] == ''){
        $lastSl = 1;
        $sl_no = Date('ymd').$lastSl;
      }
      else{
         $sl_no = $lastSOData['sl_no']+1;
      }

      
      $allRef = Temporarystockout::where('order_ref','<>',null)->where('status',1)->groupBy('order_ref')->orderBy('id','DESC')->get();
      $itemWise = Temporarystockout::where('order_ref',$ref)->where('status',1)->groupBy('item')->get();
      return view('user.slip_view',compact('allRef','itemWise','ref','cust_name','sl_no','cust_id'));
    }
    
    public function SlipSearchDataPrint(Request $r){
      
      $user_id = Auth::user()->id;
      $transport_no = $r->transport_no;
      $ref = $r->ref_no;
      $cust_id = $r->cust_id;
      $cust_name = $r->cust_name;
      $sl_no = $r->sl_no;
      $sales_order = $r->sales_order;
      $curDateTime = Date("Y-m-d H:i:s");

      
      $allTempData = Temporarystockout::where('order_ref',$ref)->where('status',1)->get();
      foreach($allTempData as $itemData){
        $is_save = StockOutNew::create([
          'cust_id'=>$cust_id,
          'ref_no'=>$ref,
          'sl_no'=>$sl_no,
          'sales_order'=>$sales_order,
          'transport_no'=>$transport_no,
          'barcode'=>$itemData->barcode,
          'item'=>$itemData->item,
          'batch'=>$itemData->batch,
          'saved_by'=>$user_id,
          'created_at'=>$curDateTime,
        ]);
        if($is_save){
          $ItemGet = Item::where('item_code',$itemData->item)->first();
          if($itemData){
            $sub_qty = $ItemGet->item_qty - 1;
            $itemSet =  Item::where('item_code',$ItemGet->item_code)->first();
            $itemSet->item_qty = $sub_qty;
            $itemSet->update();
          }
          Temporarystockout::where('barcode',$itemData->barcode)->update(['status'=>0]);
        }
      }
      
      $allRef = Temporarystockout::where('order_ref','<>',null)->where('status',1)->groupBy('order_ref')->orderBy('id','DESC')->get();
      $itemWise = StockOutNew::where('ref_no',$ref)->where('sl_no',$sl_no)->groupBy('item')->get();
      return view('user.slip_view_print',compact('allRef','itemWise','ref','transport_no','cust_name','sales_order','sl_no'));
    }


    public function StockOutRePrintView(){
      $allSL = StockOutNew::where('sl_no','<>',null)->groupBy('sl_no')->orderBy('id','DESC')->get();
      return view('user.reprint_slip_view',compact('allSL'));
    }

    public function StockOutRePrint(Request $r){
      $sl_no = $r->sl_no;
      $allSL = StockOutNew::where('sl_no','<>',null)->groupBy('sl_no')->orderBy('id','DESC')->get();
      $itemWise = StockOutNew::where('sl_no',$sl_no)->groupBy('item')->with('GetCustName')->get();
      $cust_Data = Customer::find($itemWise[0]->cust_id);
      $cust_name = $cust_Data->cust_name;
      return view('user.reprint_slip_print',compact('sl_no','itemWise','allSL','cust_name'));
    }



    public function stockoutReport(){
      
      // if (!Auth::user()->can('production_stockin_report')) {
      //     return redirect()->route('index')->with('warning','You are not authorized to access that page');
      // }
        return view('admin.report.stockout_report');
    }

    public function stockoutReportResult(Request $request){
      // if (!Auth::user()->can('production_stockin_report')) {
      //     return redirect()->route('index')->with('warning','You are not authorized to access that page');
      // }
        $from = $fromDate = $request->from_date;
        $from = date('Y-m-d',strtotime($from));
        $from  = $from.' 00:00:00';
        $to = $toDate = $request->to_date;
        $to = date('Y-m-d',strtotime($to));
        $to  = $to.' 23:59:59';

        $stockinDatas = StockOutNew::whereBetween('created_at',[$from,$to])
                          ->groupBy(DB::raw('Date(created_at)')) 
                          ->get();

        // $Datas = collect($stockoutDatas);
        // $stockinDatas = $Datas->groupBy(function($item) {
        //   return Carbon::parse($item->created_at)->format('Y-m-d ');
        // });
        return view('admin.report.stockout_report_result', compact(['stockinDatas','fromDate','toDate']));
    }

    public function getItemInfo(Request $r){
      $ref = $r->ref;
      $item = $r->item_no;

      $itemWiseData = Temporarystockout::where('order_ref',$ref)->where('item',$item)->where('status',1)->get();
      return response()->json(['itemWiseData'=>$itemWiseData]);
    }


}
