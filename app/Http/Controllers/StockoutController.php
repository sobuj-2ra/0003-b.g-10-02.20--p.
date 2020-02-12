<?php

namespace App\Http\Controllers;

use App\Events\NewSalesOrderAdded;
use App\Item;
use App\ProductStockIn;
use App\Stockout;
use App\OrderRef;
use App\Customer;
use App\Barcode;
use App\Failed_handheld;
use App\Temporarystockout;
use App\Traits\FindItemFromBarcode;
use App\Traits\LogActivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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

              $getbarcode = Barcode::where('barcode', $bar_code)->where('status','<>',0)->first();
              if($getbarcode){
                $check_if_already_stockout = Temporarystockout::where('barcode',$getbarcode->barcode)->where('status',1)->count();
                if($check_if_already_stockout < 1){
                    $datastockin = new Temporarystockout([
                      'order_ref' => $order_ref,
                      'barcode' => $getbarcode->barcode,
                      'item' =>$getbarcode->item,
                      'batch' => $getbarcode->batch_no,
                      'selected_date' => $selectedDate,
                      'saved_by' => $user_id,
                      'status' => 1,
                    ]);
                    $datastockin->save();
                    
                    // $oldItemQty = Item::where('item_code',$getbarcode->item)->first();
                    // $qtyF = $oldItemQty['item_qty']+1;
                    // $itemData = Item::where('item_code',$getbarcode->item)->first();
                    // $itemData->item_qty = $qtyF;
                    // $itemData->update();
                    $barcodeT = Barcode::where('barcode',$getbarcode->barcode)->first();
                    $barcodeT->status = 3;
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
                      'status' =>  3,
                      'fail_date' =>  $curDate,
                  ]);
            }


            $total_fail_data = Failed_handheld::where('fail_by',$user_id)
              ->whereDate('fail_date', Date('Y-m-d'))
              ->count();
            //$total_fail_data = count($total_fail_data);
            //echo 'Total F'.$total_fail_data;

            $total_save = Temporarystockout::whereDate('selected_date', Date('Y-m-d'))
                      ->where('saved_by',$user_id)
                      ->where('status',1)
                      ->count();
          // $total_save = count($total_save);
            $recent_saved = count($succArr);
            $recent_failed = count($rejectArr);

          return response()->json(['reject'=>$rejectArr,'total_save'=>$total_save,'total_fail'=>$total_fail_data,'rec_save'=>$recent_saved,'rec_fail'=>$recent_failed]);

    }


    public function SlipSectioinView(){
      $allRef = Temporarystockout::where('order_ref','<>',null)->groupBy('order_ref')->orderBy('id','DESC')->get();
      return view('user.slip_view',compact('allRef'));
    }
    public function SlipSearchDataGet(Request $r){
      $ref = $r->order_ref;
      $cust_ref = OrderRef::select('order_ref_no','cust_id')->where('order_ref_no',$ref)->first();
      $cust_name = Customer::find($cust_ref->cust_id);
      $cust_name = $cust_name->cust_name;
      
      $allRef = Temporarystockout::where('order_ref','<>',null)->groupBy('order_ref')->orderBy('id','DESC')->get();
      $itemWise = Temporarystockout::where('order_ref',$ref)->groupBy('item')->get();
      return view('user.slip_view',compact('allRef','itemWise','ref','cust_name'));
    }
    
    public function SlipSearchDataPrint(Request $r){
      
      $transport_no = $r->transport_no;
      $ref = $r->ref_no;
      $cust_name = $r->cust_name;
      
      $allRef = Temporarystockout::where('order_ref','<>',null)->groupBy('order_ref')->orderBy('id','DESC')->get();
      $itemWise = Temporarystockout::where('order_ref',$ref)->groupBy('item')->get();
      return view('user.slip_view_print',compact('allRef','itemWise','ref','transport_no','cust_name'));
    }



}
