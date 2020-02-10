<?php

namespace App\Http\Controllers;

use App\DailyShiftDetails;
use App\Dailyshift;
use App\Device;
use App\Events\NewWorkerAdded;
use App\Machine;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;


class MachineScreenController extends Controller
{
    public function allmachine()
    {
    	$machines = Machine::orderBy('number','asc')->get();
      $is_macchine = [];
      $n = 0;

        $is_user = Auth::user();

      if($is_user == ''){

        return redirect('/login');

      }
      else{

          $user_id = Auth::user()->id;
          //return $user_id;
          foreach ($machines as $item) {
            $is_m = Dailyshift::where('machine',$item->number)->where('added_by',$user_id)->first();
            if($is_m){
              $is_macchine[$n]['number'] = $item->number;
              $is_macchine[$n]['name'] = $item->name;
              $n++;
            }

          }
    	return view('user.allmachine',compact('is_macchine'));
      }

    }

    public function singlemachine($id)
    {
    	//$machine = Machine::with('workers')->where('number',$id)->get()->first();
        $machine = Machine::with('getShift')->where('number',$id)->first();
        $worker_data = Dailyshift::with('workers')->where('machine',$id)->first();
        $printer = Device::where('device_type','printer')->get();
        $last_barcode = $this->getLastBarcodeNumber($id);

        if($machine->getShift == NULL){
          return redirect('/allmachine')->with('status','Can\'t Use This Machine');
        }

    	// return $worker_data;
    	return view('user.singlemachine',compact('machine','worker_data','printer','last_barcode'));
    }



    public function getCurrentShiftDate($id)
    {
        $production_date = Dailyshift::where('machine',$id)->first();
        // dd($production_date);
        if($production_date == null){
            return ;
        }


        $date_full = new Carbon($production_date->production_date);
        $day   = $date_full->day;
        $month = $date_full->month;
        $year  = (int) substr( $date_full->year,-2);


        $date['day'] = sprintf('%02d',$day);
        $date['month'] = sprintf('%02d',$month);
        $date['year'] = $year;
        // $date['month_key'] = $this->getMonthLetter($month);
        return $date;
    }

    public function getLastBarcodeNumber($id)
    {
        $production_date   = $this->getCurrentShiftDate($id);
        $barcode_date      = $production_date['year'].$production_date['month'].$production_date['day'];
        $shift_details     = Dailyshift::where('machine',$id)->first();
        $current_shift     = (!empty($shift_details)) ? $shift_details->shift : '';
        $current_machine   = (!empty($shift_details)) ? $shift_details->machine : '';
        // dd($barcode_date);

        $search_string   = $barcode_date;
        $machine_string  = $current_machine;



        $data = DB::table('barcodes')
                ->selectRaw('substr(`barcode`,1,6) as lastest_barcode_num')
                ->where(DB::raw('substr(`barcode`,7,6)'),$search_string)
                ->where(DB::raw('substr(`barcode`,15,2)'),$machine_string)
                ->orderBy('id','desc')
                ->first();
        // dd($data);

        return ($data != null) ? (int) $data->lastest_barcode_num : 000000;
    }


}
