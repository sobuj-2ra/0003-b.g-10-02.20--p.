<?php

namespace App\Http\Controllers;

use App\Events\NewBarcodeScan;
use App\Stockout;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Device;
use Auth;

class HandHeldController extends Controller
{

    public function handHeldSection(){
      $is_login = Auth::user();
      if($is_login){
        return view('user.main_handheld');
      }
      else{
        return redirect('login');
      }
    }
    public function showallscanner()
    {
        $scanners = Device::where('device_type','scanner')->get();
        return view('user.scanner',compact('scanners'));
    }

    public function all($scanner_id)
    {
         // return $scanner_id;
    	$sales_orders = Stockout::where('is_delivered',0)->get();
        $scanner_id = $scanner_id;

    	return view('user.handheld',compact('sales_orders','scanner_id'));
    }

    public function getSalesOrders()
    {
    	return Stockout::where('is_delivered',0)->latest()->get();
    }

    public function singleSalesOrder($scanner_id,$sales_order)
    {
        $check_data = DB::table('current_scanning_order')->where('scanner_id',$scanner_id)->first();

        if ($check_data == null) {
            DB::insert('insert into current_scanning_order (scanner_id, sales_order) values (?, ?)', [$scanner_id,$sales_order]);
        }else{
            DB::table('current_scanning_order')->where('scanner_id',$scanner_id)->update(['sales_order'=>$sales_order]);
        }
        $data = DB::table('current_scanning_order')->where('scanner_id',$scanner_id)->first();

        return view('user.handheld_single',compact('data'));
    }


    public function getCurrentSalesOrder()
    {
        $data = DB::table('current_scanning_order')->first();
        return $data->sales_order;
    }

    public function getCurrentSalesOrderByScanner($scanner_id)
    {
    	$data = DB::table('current_scanning_order')->where('scanner_id',$scanner_id)->first();
    	return $data->sales_order;
    }

    public function getAllBarcodeBySalesOrder($sales_order)
    {
       $data = Stockout::with('ordereditem')->where('sales_order',$sales_order)->first();
       return response()->json($data->ordereditem);
    }

    public function getLatestBarcodeBySalesOrder($sales_order)
    {
       $data = Stockout::with('ordereditem')->where('sales_order',$sales_order)->first();
       return response()->json($data->ordereditem->last());
    }

    public function scannedBarcode(Request $request)
    {
        $response = [];
        // return $request->all();
        if ($request->has(['barcode','scanner_id'])) {
            $current_sales_order = DB::table('current_scanning_order')->where('scanner_id',$request->scanner_id)->first();
            // dd($current_sales_order);
            if ($this->getCurrentSalesOrderByScanner($request->scanner_id) == $current_sales_order->sales_order) {

                $product_stock_in_id = DB::table('product_stock_ins')->where('barcode',$request->barcode)->where('is_delivered',0)->first();

                $stockout_id = DB::table('stockouts')->where('sales_order',$current_sales_order->sales_order)->first();

                if($product_stock_in_id == null || $stockout_id == null){
                    return $response['code_status'] = 0;
                }

                $check_if_duplicate = DB::table('product_stock_in_stockout')->where('product_stock_in_id',$product_stock_in_id->id)->first();

                if ($check_if_duplicate != null) {
                    return $response['code_status'] = 2;
                }

                $data = DB::table('product_stock_in_stockout')->insert(['product_stock_in_id'=>$product_stock_in_id->id,'stockout_id'=>$stockout_id->id]);
               // DB::table('product_stock_ins')->where('barcode',$request->barcode)->update('is_delivered',0)->first();
                 // event(new NewBarcodeScan($this->getLatestBarcodeBySalesOrder($request->sales_order)));
                return $response['code_status'] = 1;
            }
        }

        return $response['code_status'] = 0;
    }

    public function deleteScannedBarcode(Request $request)
    {
        //return $request->all();
        $data = DB::table('product_stock_in_stockout')->where('product_stock_in_id',$request->product_stock_in_id)
                                                ->where('stockout_id',$request->stockout_id)->delete();
        //$data = $data->delete();
        return response()->json($data);


    }
}
