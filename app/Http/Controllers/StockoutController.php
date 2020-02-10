<?php

namespace App\Http\Controllers;

use App\Events\NewSalesOrderAdded;
use App\Item;
use App\ProductStockIn;
use App\Stockout;
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


}
