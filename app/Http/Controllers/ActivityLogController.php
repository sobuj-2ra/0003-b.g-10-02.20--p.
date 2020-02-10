<?php

namespace App\Http\Controllers;

use App\AcivityLog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class ActivityLogController extends Controller
{
    public function index()
    {
    	return view('admin.activitylog.list');
    }

    public function ajax()
    {
      DB::statement(DB::raw('set @rownum=0'));
      $acivity_logs = AcivityLog::get(['acivity_logs.*', 
                  DB::raw('@rownum  := @rownum  + 1 AS rownum')]);

      return DataTables::of($acivity_logs)
          ->editColumn('old_data',function($old_data){
            return $old_data->getParsedOldData();
          })
          ->editColumn('new_data',function($new_data){
            return $new_data->getParsedNewData();
          })
          ->rawColumns(['old_data','new_data'])
          ->make(true);
    }
}
