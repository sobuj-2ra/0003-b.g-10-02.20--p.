<?php

namespace App\Http\Controllers;

use App\Barcode;
use App\Dailyshift;
use App\Device;
use App\Traits\BarcodeGenerator;
use App\Traits\LogActivity;
use App\Traits\XattaPrinter;
use App\Item;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\URL;
use PDFMerger;
//use PDF;

class BarcodeController extends Controller
{
    use BarcodeGenerator;
    use XattaPrinter;
    use LogActivity;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        // return $request->all();
        //Logs Activity
        $this->LogActivity('','Generated Barcode',$request->except('_token'),'','');

        //$ddd  = $this->getTotalBarcodeRow($request);
        $all_barcode  = $this->getTotalBarcodeRow($request);

//         =$batchhex '';
//        for ($i=0; $i<strlen($batch); $i++){
//            $ord = ord($batch[$i]);
//            $hexCode = dechex($ord);
//            $batchhex .= substr('0'.$hexCode, -2);
//        }
//        $b = strToUpper($batchhex);

        $inserted_row = Barcode::insert($all_barcode);


        $response  = $this->mergeBarcode($all_barcode,$request->machine);
        return response(["pdf"=>$response, "bar"=>$all_barcode]);

        // $this->deleteFiles($request->machine);

        // return response()->json(Barcode::insert($all_barcode));
        // return response(['pdf' =>'000002190202BA01_A001001002001']);
        //return json_encode($this->getLastBarcodeSerial($request));
        // $path = storage_path('app/public/pdfs/000001190202BA01_A001001002001.pdf');
        // return redirect()->route('pdfstream','000001190202BA01_A001001002001');
    }




	public function storeweb(Request $request)  /* safwan */
    {

        $curDateTime = Date('Y-m-d H:i:s');
        $this->LogActivity('','Generated Barcode',$request->except('_token'),'','');
        $data['shift'] = $request->shift;
        $data['machine'] = $request->machine;
        $data['grade'] = $request->grade;
        $data['production_date'] = $request->production_date;
        $data['packer'] = $request->packer;
        $data['watcher'] = $request->watcher;
        $data['printer'] = $request->printer;
        $data['totalbarcodetoprint'] = $request->totalbarcodetoprint;


        $all_barcode  = $this->getTotalBarcodeRowweb($data);

        $barcode=$all_barcode[0]['barcode'];
        $item=$all_barcode[0]['item'];
        $batch_no=$all_barcode[0]['batch_no'];
        $total_print=$all_barcode[0]['totalbarcodetoprint'];
      foreach($all_barcode as $all_get_barcode){

            $data = array(
                'barcode' => $all_get_barcode['barcode'],
                'item' => $all_get_barcode['item'],
                'batch_no' => $all_get_barcode['batch_no'],
                'total_print' => $all_get_barcode['totalbarcodetoprint'],
                'shift' => $request->shift,
                'm_id' => $request->machine,
                'grade' => $request->grade,
                'created_at' => $curDateTime,
                'updated_at' => $curDateTime,
            );

        DB::table('barcodes')->insert($data);
       }
       $itemData = Item::select('item_code','item_name')->where('item_code',$item)->first();
       $dataarr['item_name'] = substr($itemData->item_name,0,17);
       $dataarr['send_barcode']=$all_barcode;
       $dataarr['send_machine']=$request->machine;
       return view('user.singlemachine_print',$dataarr);

         //$response  = $this->mergeBarcode($all_barcode,$request->machine);
         //$data=$request->all();

    }


    public function BarcodeReprint($printer,$barcode,$machine){

        $BarcodeData = Barcode::where('barcode',$barcode)->first();
        if($BarcodeData){
            $item_name = Item::select('item_code','item_name')->where('item_code',$BarcodeData->item)->first();
        }
        $dataarr['send_barcode']=$BarcodeData->barcode;
        $dataarr['send_machine']=$machine;
        $dataarr['send_batch_no']=$BarcodeData->batch_no;
        $dataarr['send_item_name']= substr($item_name->item_name,0,17);

      return view('user.singlemachine_reprint',$dataarr);
    }





    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function getProductionDate(Request $request)
    {

        $date = [];

        // $today = Carbon::now()->toDateString();
        // $production_date = Dailyshift::select('created_at')->where('machine',$request->machine)->where('shift',$request->shift)->first();
        $production_date = $request->production_date;
        // $date_to_check = Carbon::parse($production_date->created_at)->toDateString();
        //return json_encode($second);
        //return strtotime($production_date);
        $date_full = new Carbon($production_date);
        $day   = $date_full->day;
        $month = $date_full->month;
        $year  = (int) substr( $date_full->year,-2);

        $date['day'] = sprintf('%02d',$day);
        $date['month'] = sprintf('%02d',$month);
        $date['year'] = $year;
        $date['month_key'] = $this->getMonthLetter($month);
        return $date;

    }


	public function getProductionDateweb($request) /* safwan */
    {
        $date = [];
        $production_date = $request['production_date'];
        $date_full = new Carbon($production_date);
        $day   = $date_full->day;
        $month = $date_full->month;
        $year  = (int) substr( $date_full->year,-2);

        $date['day'] = sprintf('%02d',$day);
        $date['month'] = sprintf('%02d',$month);
        $date['year'] = $year;
        $date['month_key'] = $this->getMonthLetterweb($month);
        return $date;
    }





    public function getMonthLetter($month_value)
    {
        switch ($month_value) {
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


	public function getMonthLetterweb($month_value) /* safwan */
    {
        switch ($month_value) {
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



    public function getBatchNo(Request $request)
    {
        $production_date = $this->getProductionDate($request);

        return $production_date['day'].$production_date['month_key'].$production_date['year'].$request->shift.$request->grade;
    }


	public function getBatchNoweb($request)  /* safwan */
    {
        $production_date = $this->getProductionDateweb($request);
        return $production_date['day'].$production_date['month_key'].$production_date['year'].$request['shift'].$request['grade'];
    }


    public function getBarcode(Request $request,$last_num,$items)
    {
        $shift_data = Dailyshift::where('machine',$request->machine)->where('shift',$request->shift)->first();
        $production_date = $this->getProductionDate($request);
        // dd($production_date);

        return sprintf('%06d', $last_num).$production_date['year'].$production_date['month'].$production_date['day'].$request->shift.$request->grade.$shift_data->machine.$items.str_replace('.','',$request->watcher);
    }


	public function getBarcodeweb($request,$last_num,$items) /* safwan */
    {
        $shift_data = Dailyshift::where('machine',$request['machine'])->where('shift',$request['shift'])->first();
        $production_date = $this->getProductionDateweb($request);
        // dd($production_date);

        //return sprintf('%06d', $last_num).$production_date['year'].$production_date['month'].$production_date['day'].$request['shift'].$request['grade'].$shift_data['machine'].'_A'.str_replace('.','',$request['watcher']).str_replace('.','',$request['packer']);
        return sprintf('%06d', $last_num).$production_date['year'].$production_date['month'].$production_date['day'].$request['shift'].$request['grade'].$shift_data['machine'].$items.str_replace('.','',$request['watcher']);
    }



    public function getTotalBarcodeRow(Request $request)
    {
        $barcodes_to_print = [];
        $prints = [];
        $shift_data = Dailyshift::where('machine',$request->machine)->where('shift',$request->shift)->first();
        $batch_no = $this->getBatchNo($request);
        $latest_barcode = sprintf('%06d',$this->getLastBarcodeSerial($request));
        $loop_barcode_number = $latest_barcode;

        $path = public_path().'/storage/pdfs/'.$request->machine;
        // File::isDirectory($path) or File::makeDirectory($path, 0777, true, true);
        is_dir($path);


        for ($i=0; $i < $request->total_print ; $i++) {
            $barcodes_to_print[$i]['barcode']= $hexcode = $this->getBarcode($request,$loop_barcode_number+1,$shift_data->item);
            $barcodes_to_print[$i]['item']   = $shift_data->item;
            $barcodes_to_print[$i]['batch_no'] = $batch= $batch_no;
            $barcodes_to_print[$i]['total_print'] = 1;
            $barcodes_to_print[$i]['created_at']  = Carbon::now();
            $barcodes_to_print[$i]['updated_at']  = Carbon::now();




            //$this->barcodePrintData($hexcode,$batch);

            $this->generateBarcode($barcodes_to_print[$i]['barcode'],$barcodes_to_print[$i]['batch_no'],$request->machine);
            // $this->sendToPrinter($request->printer,$barcodes_to_print[$i]['barcode']);

            $loop_barcode_number++;

        }
        return $barcodes_to_print;
    }



	public function getTotalBarcodeRowweb($request) /* safwan */
    {

        $barcodes_to_print = [];
        $shift_data = Dailyshift::where('machine',$request['machine'])->where('shift',$request['shift'])->first();

        $batch_no = $this->getBatchNoweb($request);

        $latest_barcode = sprintf('%06d',$this->getLastBarcodeSerialweb($request));
        $loop_barcode_number = $latest_barcode;


        for ($i=0; $i < $request['totalbarcodetoprint'] ; $i++) {
            $barcodes_to_print[$i]['barcode']     = $this->getBarcodeweb($request,$loop_barcode_number+1,$shift_data['item']);
            $barcodes_to_print[$i]['item']        = $shift_data->item;
            $barcodes_to_print[$i]['batch_no']    = $batch_no;
            $barcodes_to_print[$i]['totalbarcodetoprint'] = 1;
            $barcodes_to_print[$i]['created_at']  = Carbon::now();
            $barcodes_to_print[$i]['updated_at']  = Carbon::now();

            $this->generateBarcode($barcodes_to_print[$i]['barcode'],$barcodes_to_print[$i]['batch_no'],$request['machine']);
            // $this->sendToPrinter($request->printer,$barcodes_to_print[$i]['barcode']);

            $loop_barcode_number++;
        }
        return $barcodes_to_print;
    }





    /**
     * @param $hex_bar_code
     * @param $batch
     */
    public function barcodePrintData($hex_bar_code, $batch){
        $batchhex = '';
        for ($i=0; $i<strlen($batch); $i++){
            $ord = ord($batch[$i]);
            $hexCode = dechex($ord);
            $batchhex .= substr('0'.$hexCode, -2);
        }
        $b = strToUpper($batchhex);
        $hex_bar_codehex = '';
        for ($i=0; $i<strlen($hex_bar_code); $i++){
            $ord = ord($hex_bar_code[$i]);
            $hexCode = dechex($ord);
            $hex_bar_codehex .= substr('0'.$hexCode, -2);
        }
        $bar = strToUpper($hex_bar_codehex);

         $link ='1b411b50531b574b3278323230336470691b25321b48303535391b5630303136311b5031321b5030341b52444140302c3031342c3032342c'.$b.'1b25321b48303536391b5630303133301b42473032303838'.$bar.'1b25321b48303535391b5630303032351b5030321b52444140302c3031342c3032342c'.$bar.'1b51311b5a03';
        //$link = '1b411b50531b574b3278323230336470691b25321b48303535391b5630303136311b5031321b5030341b52444140302c3031342c3032342c3131323334354530333030303030301b25321b48303536391b5630303133301b424730323038383130414243373839373839373839371b25321b48303535391b5630303032351b5030321b52444140302c3031342c3032342c303132333435453033303030303030343741424344454647481b51311b5a03';
         $l = "http://localhost:8080/Printer/SendRawData?__encoding=hex&__send_data=$link";
        // create a new cURL resource
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, 'http://www.google.com/');

        curl_setopt($ch, CURLOPT_HEADER, 0);

        curl_exec($ch);
        curl_close($ch);

    }

    public function getLastBarcodeSerial(Request $request)
    {
        $production_date = $this->getProductionDateweb($request);
        $barcode_date    = $production_date['year'].$production_date['month'].$production_date['day'];

        $search_string   = $barcode_date;
        $machine_string  = $request->machine;


        $data = DB::table('barcodes')
                ->selectRaw('substr(`barcode`,1,6) as lastest_barcode_num')
                ->where(DB::raw('substr(`barcode`,7,6)'),$search_string)
                ->where(DB::raw('substr(`barcode`,15,2)'),$machine_string)
                ->orderBy('id','desc')
                ->first();

        return ($data != null) ? (int) $data->lastest_barcode_num : 000000;

    }


	public function getLastBarcodeSerialweb($request) /* safwan */
    {
        $production_date = $this->getProductionDateweb($request);
        $barcode_date    = $production_date['year'].$production_date['month'].$production_date['day'];
        $search_string   = $barcode_date;
        $machine_string  = $request['machine'];


        $data = DB::table('barcodes')
                ->selectRaw('substr(`barcode`,1,6) as lastest_barcode_num')
                ->where(DB::raw('substr(`barcode`,7,6)'),$search_string)
                ->where(DB::raw('substr(`barcode`,15,2)'),$machine_string)
                ->orderBy('id','desc')
                ->first();

        //var_dump($data);
        //exit();

        return ($data != null) ? (int) $data->lastest_barcode_num : 000000;

     }




    public function sendToPrinter($printer_id,$barcode)
    {
        // $printer_data = Device::where('id',$printer_id)->first();

        $barcode_fullpath = URL::asset('storage/pdfs/'.$barcode.'.pdf');
        // dd($barcode_fullpath);

        $this->PrintDocument((int)$printer_id,$barcode_fullpath);
    }

    public function mergeBarcode($all_barcodes,$machine)
    {
        if (count($all_barcodes) >= 1) {
             // return $all_barcodes[0]['barcode'];
            $merger = PDFMerger::init();

            foreach ($all_barcodes as $single_barcode) {
               $merger->addPathToPDF(storage_path('app/public/pdfs/'.$machine.'/'.$single_barcode['barcode'].'.pdf'), [1], 'L');
            }
            $merger->merge();
            $raw = $merger->string();
            file_put_contents(storage_path("app/public/merged/".$machine.".pdf"), $raw);

            $this->deleteFiles($machine);
            return $machine;
        }else{
            // return storage_path('app/public/pdfs/'.$all_barcodes[0]['barcode'].'.pdf');
        }
    }

    public function pdfstream($link = null)
    {
        $path = storage_path('app/public/merged/'.$link.'.pdf');
        return response()->file($path);

        // $file = file_get_contents($path);

        // $response = Response::make($file, 200);
        // // using this will allow you to do some checks on it (if pdf/docx/doc/xls/xlsx)
        // $response->header('Content-Type', 'application/pdf');
        // $response->header('Content-Disposition:','attachment; filename='.$link.'".pdf"');

        // return $response->stream();
    }

    public function getBarcodeNames($all_barcode)
    {
        $barcode_names = array_pluck($all_barcode,'barcode');
        $barcode_paths = collect($barcode_names);

        $barcode_paths = $barcode_paths->map(function ($barcode, $key) {
            return public_path("storage/pdfs/".$barcode.".pdf");
        });

        return ($barcode_paths);
    }

    public function deleteFiles($machine)
    {
        // $machine = implode("",$machine);
        $files = Storage::files("public/pdfs/".$machine."/");

        $collection = collect($files);
         // dd($collection);
        Storage::delete($collection->all());
    }

    public function test(Request $request){
        $batchhex = '';
        $batch = '05B19BA';
        $hex_bar_code= '000158190205BA01_A001002002002';
        for ($i=0; $i<strlen($batch); $i++){
            $ord = ord($batch[$i]);
            $hexCode = dechex($ord);
            $batchhex .= substr('0'.$hexCode, -2);
        }
        $b = strToUpper($batchhex);
        $hex_bar_codehex = '';
        for ($i=0; $i<strlen($hex_bar_code); $i++){
            $ord = ord($hex_bar_code[$i]);
            $hexCode = dechex($ord);
            $hex_bar_codehex .= substr('0'.$hexCode, -2);
        }
        $bar = strToUpper($hex_bar_codehex);

        $link ='1b411b50531b574b3278323230336470691b25321b48303535391b5630303136311b5031321b5030341b52444140302c3031342c3032342c'.$b.'1b25321b48303536391b5630303133301b42473032303838'.$bar.'1b25321b48303535391b5630303032351b5030321b52444140302c3031342c3032342c'.$bar.'1b51311b5a03';
        //$link = '1b411b50531b574b3278323230336470691b25321b48303535391b5630303136311b5031321b5030341b52444140302c3031342c3032342c3131323334354530333030303030301b25321b48303536391b5630303133301b424730323038383130414243373839373839373839371b25321b48303535391b5630303032351b5030321b52444140302c3031342c3032342c303132333435453033303030303030343741424344454647481b51311b5a03';
        $l = "http://localhost:8080/Printer/SendRawData?__encoding=hex&__send_data=$link";
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, 'https://google.com');

        curl_setopt($ch, CURLOPT_HEADER, 0);

        curl_exec($ch);
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
    }
}
