<?php

namespace App\Http\Controllers;

use App\Barcode;
use App\Dailyshift;
use App\Traits\BarcodeGenerator;
use App\Traits\LogActivity;
use App\Traits\XattaPrinter;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;
use PDFMerger;

class ReprintBarcodeController extends Controller
{
    use BarcodeGenerator;
    use XattaPrinter;
    use LogActivity;




    public function getCurrentBarcodedata(Request $request)
    {
    	//return json_encode($request->all());

    	$production_date = $this->getProductionDate($request);
        $barcode_date = $production_date['year'].$production_date['month'].$production_date['day'];

        $search_string  = $barcode_date.$request->shift;



       return  $data = DB::table('barcodes')
                ->select('*')
                ->where(DB::raw('substr(`barcode`,7,7)'),$search_string)
                ->where(DB::raw('substr(`barcode`,15,2)'),$request->machine)
                ->orderBy('id','desc')
                ->get();


    }

    public function getProductionDate(Request $request)
    {
        
        $date = [];

        $today = Carbon::now()->toDateString();
        $production_date = Dailyshift::select('production_date')->where('machine',$request->machine)->where('shift',$request->shift)->first();
        $date_to_check = Carbon::parse($production_date->production_date)->toDateString();
        //return json_encode($second);
        //return strtotime($production_date);

        if ($request->shift == "C" && strtotime($today) > strtotime($date_to_check)) {

            $date_full = new Carbon($production_date->production_date); 
            $day   = $date_full->day;
            $month = $date_full->month;
            $year  = (int) substr( $date_full->year,-2);

            
        }else{
            // $date_full = Carbon::now(); 
            $date_full = new Carbon($production_date->production_date); 
            $day   = $date_full->day;
            $month = $date_full->month;
            $year  = (int) substr( $date_full->year,-2);
        }

        $date['day'] = sprintf('%02d',$day);
        $date['month'] = sprintf('%02d',$month);
        $date['year'] = $year;
        return $date;
        
    }

    public function requestToReprintBarcode(Request $request)
    {
        $find_barcode = Barcode::where('barcode',$request->barcode)->first();

        //all barcode // to make from object to array
        $all_barcodes = json_decode(json_encode($find_barcode));
        // dd($all_barcodes);

        if ($find_barcode != null) {
            //send command to printer
            $this->generateBarcode($find_barcode->barcode,$find_barcode->batch_no,$request->machine);

            // $barcode_path = URL::asset('storage/pdfs/'.$find_barcode->barcode.'.pdf');

            // $this->PrintDocument((int)$request->printer,$barcode_path);
            Barcode::where('barcode',$request->barcode)->increment('total_print');

            $response = $this->mergeBarcode($all_barcodes,$request->machine);

            //Logs Activity
            $this->LogActivity('','Reprinted Barcode',$request->except('_token'),'','');

            // return json_encode("Barcode Sent to Printer");
            return response(["pdf"=>$response,"msg"=>"Barcode Sent to Printer"]);
        }
        return response(["pdf"=>'',"msg"=>"No existing barcode matched"]);
        // return json_encode("No existing barcode matched");
    }

    public function mergeBarcode($all_barcodes,$machine)
    {
        if ($all_barcodes != null) {
             // return $all_barcodes[0]['barcode'];
            $merger = PDFMerger::init();
            // dd($all_barcodes);

            // foreach ($all_barcodes as $single_barcode) {
               $merger->addPathToPDF(storage_path('app/public/pdfs/'.$machine.'/'.$all_barcodes->barcode.'.pdf'), [1], 'L');
            // }
            $merger->merge();
            $raw = $merger->string();
            file_put_contents(storage_path("app/public/merged/merged_".$machine.".pdf"), $raw);

            return "merged_".$machine;
        }else{
            // return storage_path('app/public/pdfs/'.$all_barcodes[0]['barcode'].'.pdf');
        }
    }


    public function pdfstream($link = null)
    {
        $path = storage_path('app/public/pdfs/'.$link.'.pdf');
        return response()->file($path);
    }
}
