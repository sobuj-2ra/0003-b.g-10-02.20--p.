<?php

namespace App\Http\Controllers;

use App\Invoice;
use App\Item;
use App\ProductStockIn;
use App\Stockout;
use App\Traits\LogActivity;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;
use App\Barcode;
use App\Shift;
use DateTime;

class InvoiceController extends Controller
{
  use LogActivity;

	public function __construct()
	{
	    $this->middleware('auth');
	}

  public function index()
  {
    if (!Auth::user()->can('invoice_customer')) {
        return redirect()->route('index')->with('warning','You are not authorized to access that page');
    }

      return view('admin.invoice.list');
  }

  public function invoice($sales_order)
  {


  	$order_details = $this->groupby($sales_order);
  	$customer_info = $data = Stockout::where('sales_order',$sales_order)->first();
    // $order_details = $this->groupby($sales_order);
    // dd(count($order_details));
    if (count($order_details) >= 1) {
      $this->updateOrderStatus($sales_order,$customer_info,$order_details);
    }
  	return view('user.invoice')->with('order_details',$order_details)->with('customer_info',$customer_info);
  }

  public function ajax()
  {
    DB::statement(DB::raw('set @rownum=0'));
    $invoices = Invoice::get(['invoices.*',
                DB::raw('@rownum  := @rownum  + 1 AS rownum')]);
    return DataTables::of($invoices)
        ->addColumn('action', function ($invoice) {
            $col_to_show = '<a href="#" class="btn btn-primary" id="modal_switch" data-id='.$invoice->id.'><i class="fa fa-eye"></i></a>';
            $col_to_show .= '<a href="'.route('generateInvoice',$invoice->sales_order).'" class="btn btn-danger"><i class="fa fa-download"></i></a>';
            return $col_to_show;
        })
        ->editColumn('sl_no',function($invoice){
          return sprintf('%08d', $invoice->sl_no);
        })
        ->editColumn('delivery_time',function($invoice){
          return Carbon::parse($invoice->delivery_time)->toDateString();
        })
        ->rawColumns(['action'])
        ->make(true);
  }

  public function getInvoiceDataById(Request $request)
  {
    $data =  Invoice::find($request->id);
    $data->delivery_data = json_decode($data->delivery_data);
    return $data;
  }



    public function downloadinvoice($sales_order)
    {
    	$order_details = $this->groupby($sales_order);
    	$customer_info = $data = Stockout::where('sales_order',$sales_order)->first();
    	//return view('testinvoicedownload')->with('order_details',$order_details)->with('customer_info',$customer_info);
      $this->updateOrderStatus($sales_order,$customer_info,$order_details);

       return view('user.invoice_download',compact('order_details','customer_info'));

    	// $pdf = App::make('dompdf.wrapper');
     //  $pdf->loadView('user.invoice_download',['order_details'=>$order_details,'customer_info'=>$customer_info])
     //  	  ->setPaper('a4', 'portrait')
     //  	  ->setOptions(["enable_php"=>true,'isRemoteEnabled'=> true]);
      // $file_name = $sales_order.".pdf";
      // $output = $pdf->output();
      // file_put_contents(storage_path("app/public/invoice/".$file_name), $output);
      // $pdf->stream($file_name);

       // return response()->file(asset('storage/invoice/'.$file_name));
       // return view('user.invoice_download',compact('order_details','customer_info','file_name'));

      // return view('user.invoice_download',compact('order_details','customer_info'));
     //  $output = $pdf->output();
     //  if(file_put_contents(storage_path("app/public/invoice/".$sales_order.'_'.time().".pdf"), $output)){
     //  	return $pdf->stream('document.pdf');
     //  }else{
     //  	return $pdf->stream('document.pdf');
     //  }
    }


    public function groupby($sales_order)
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

    public function updateOrderStatus($sales_order,$customer_info,$order_details)
    {
      $check_if_sales_order_exists = Invoice::where('sales_order',$sales_order)->get()->first();
      // dd($check_if_sales_order_exists);

      if ($check_if_sales_order_exists == null) {
        $sl_no = (int) $this->getLatestSerialNo() + 1;
        Stockout::where('sales_order',$sales_order)->update(['is_delivered'=>1,'sl_no'=>$sl_no]);
        $this->updateItemStatus($order_details);

        $invoice                = new Invoice;
        $invoice->name          = $customer_info->name;
        $invoice->user_id       = Auth::user()->id;
        $invoice->sales_order   = $sales_order;
        $invoice->transport_no  = $customer_info->transport_no;
        $invoice->reference_no  = $customer_info->reference_no;
        $invoice->sl_no         = $sl_no;
        $invoice->delivery_time = Carbon::now();
        $invoice->delivery_data = json_encode($order_details);
        $invoice->save();

        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Generated Invoice',$invoice,'',Auth::user()->employee_id);
      }
    }

    public function getLatestSerialNo()
    {
      return Invoice::latest()->first() == null ? 000000 : Invoice::latest()->first()->sl_no;
    }

    public function updateItemStatus($items)
    {
      //$items = $this->groupby($sales_order);

      foreach ($items as $item) {
        foreach ($item['barcodes'] as $barcode) {
          // dd($barcode);
          ProductStockIn::where('barcode',$barcode)->where('item',$item['item_code'])->where('batch_no',$item['batch_no'])->update(['is_delivered'=>1]);
        }

      }
    }



    public function ReportProductionSumm(){

      if (!Auth::user()->can('production_sum_report')) {
          return redirect()->route('index')->with('warning','You are not authorized to access that page');
      }

      return view('admin.report.production_summ_report');

    }

    public function ReportProductionSummStore(Request $request){

      if (!Auth::user()->can('production_sum_report')) {
          return redirect()->route('index')->with('warning','You are not authorized to access that page');
      }
        $fromDate = $request->from_date;
        $fromDateTime = strtotime($request->from_date);
        $from = Date('Y-m-d 00:00:00', $fromDateTime);

        $toDate = $request->to_date;
        $toDateTime = strtotime($request->to_date);
        $toDateW = Date('Y-m-d 23:59:59', $toDateTime);


        $barcodeData = Barcode::select('created_at','barcode','shift','m_id','grade')->whereBetween('created_at',[$from,$toDateW])
                          ->groupBy(DB::raw('Date(created_at)'))      
                          ->get();
        // $Datas = collect($allDatas);
        // $barcodeData = $Datas->groupBy(function($item) {
        //   return Carbon::parse($item->created_at)->format('Y-m-d ');
        // });

        //return $barcodeData;

        return view('admin.report.production_summ_report_result_table_old', compact(['barcodeData','fromDate','toDate']));
    }
    public function ReportProductionDetails(){
      return view('admin.report.production_detail_report');
    }


    public function ReportProductionShiftWise(){
      $data['GetAllShift'] = Shift::all();
      return view('admin.report.shift_wise_production',$data);
    }
    public function ReportProductionShiftWiseGet(Request $r){
        $data['selected_shift'] = $r->shift_number;
        $data['fromDate'] = $fromDate = DATE('Y-m-d 07:00:00',strtotime($r->from_date));
          $To = DATE('Y-m-d H:i:s',strtotime($fromDate));
          $Modifydate = new DateTime($To);
          $Modifydate->modify('+1 day');
        $data['toDate'] = $toDate = $Modifydate->format('Y-m-d H:i:s');
        
      return view('admin.report.shift_wise_production_view',$data);
    }
}
