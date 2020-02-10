<?php

namespace App\Http\Controllers;

use App\Device;
use App\Invoice;
use App\Item;
use App\Stockout;
use App\Traits\XattaPrinter;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\URL;
use PDF;


class TestController extends Controller
{
  use XattaPrinter;
    public function invoice()
    {
    	$order_details = $this->groupby();
    	$customer_info = $data = Stockout::where('reference_no','123456')->first();

    	return view('testinvoice')->with('order_details',$order_details)->with('customer_info',$customer_info);
    }

    public function downloadinvoice()
    {
    	$order_details = $this->groupby();
    	$customer_info = $data = Stockout::where('reference_no','123456')->first();
    	//return view('testinvoicedownload')->with('order_details',$order_details)->with('customer_info',$customer_info);


    	// Custom Footer
    	$pdf = App::make('dompdf.wrapper');
      $pdf->loadView('testinvoicedownload',['order_details'=>$order_details,'customer_info'=>$customer_info])->setPaper('a4', 'portrait')->setOptions(["enable_php"=>true,'isRemoteEnabled'=> true]);
      return $pdf->stream();
      // $dom_pdf = $pdf->getDomPDF();

      // $canvas = $dom_pdf ->get_canvas();
      // $canvas->page_text(0, 0, "Page {PAGE_NUM} of {PAGE_COUNT}", null, 10, array(0, 0, 0));
    }


    public function generateBarcode($barcode='000001181223CAM002_A002003001001',$batch='11L11AC')
    {
      $pdf = App::make('dompdf.wrapper');
      $pdf->loadView('barcode',['barcode'=>$barcode,'batch'=>$batch])->setPaper([0, 0,72 , 223.2], 'landscape');
      $pdf->stream();
      $output = $pdf->output();
      if(file_put_contents(storage_path("app/public/pdfs/".$barcode.".pdf"), $output)){
        return response()->json(true);
      }else{
        return response()->json(false);
      }
      
    }



    public function groupby($sales_order = 123456)
    {
        //gets all ordered items with details
       return $data = Stockout::with('ordereditem')->where('sales_order',$sales_order)->first();
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
          }
           
       }
       

       return $invoice_details;
    }


    public function getItemDetailsFromItemCode($item_code)
    {
        return Item::where('item_code',$item_code)->first();
    }

    public function getLatestSerialNo()
    {
      return Invoice::latest()->first() == null ? 000000 : Invoice::latest()->first()->sl_no;
    }


    public function printtoprinter()
    {
      // $printer_data = Device::where('id',$printer_id=3)->first();
      // // dd((int)$printer_data->device_ip);
      // $barcode_fullpath = URL::asset('storage/pdfs/'.000001181229AA01_A001001002001.'.pdf');
      // dd($barcode_fullpath);
      // return $this->PrintDocument(543465,$barcode_fullpath);

      // Storage::delete(['public/pdfs/01.pdf','public/pdfs/02.pdf','public/pdfs/03.pdf',]);
      // $files = Storage::files('public/pdfs');

      // $collection = collect($files);

      // // Storage::delete($collection->all()); // Note the "all()" call here
      // dd($collection);
        $machine = '01';
        $files = Storage::files('public/pdfs/'.$machine.'/');
        $collection = collect($files);
        Storage::delete($collection->all());
    }

    public function demo(){
        //return view('demo');

//formating the 2nd data
//        $string = "1b411b50531b574b3278323230336470691b25321b48303535391b5630303136311b5031321b5030341b52444140302c3031342c3032342c3131323334354530333030303030301b25321b48303536391b5630303133301b424730323038383130414243373839373839373839371b25321b48303535391b5630303032351b5030321b52444140302c3031342c3032342c303132333435453033303030303030343741424344454647481b51311b5a03";
//        $string = "hi";
////        $string .= "\x1d\x6b\x02";   # GS k 2
////        $string .= "111114123457\x00";  # [data] 00
////        $string .= "-end-\n";
//
//
////send data via TCP/IP port : the printer has tcp interface
//        $port = "9100";
//        $host = "192.168.1.92";
//        $socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
//        if ($socket === false) {
//            echo "socket_create() failed: reason: " . socket_strerror(socket_last_error    ()) . "\n";
//        } else {
//            echo "OK.\n";
//        }
//        $result = socket_connect($socket, $host, $port);
//        if ($result === false) {
//            echo "socket_connect() failed.\nReason: ($result) " . socket_strerror(socket_last_error($socket)) . "\n";
//        } else {
//            echo "OK.\n";
//        }
//        var_dump($socket);
//        socket_write($socket, $string, strlen($string));
//        socket_close($socket);
        return view('demo');
    }


}
