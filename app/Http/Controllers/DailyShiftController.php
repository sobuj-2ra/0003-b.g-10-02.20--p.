<?php

namespace App\Http\Controllers;

use App\Dailyshift;
use App\Events\NewWorkerAdded;
use App\Item;
use App\Machine;
use App\Shift;
use App\Traits\LogActivity;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;

class DailyShiftController extends Controller
{
    use LogActivity;
    public function __construct()
    {
        $this->middleware('auth')->except(['getDailyShiftDetailsByMachine']);
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(!Auth::user()->can('daily_shift')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }
        $shifts = Shift::all();
        $watchers = User::where('group','watcher')->whereNotIn('id',DB::table('dailyshift_user')->pluck('user_id')->toArray())->get();
        $packers = User::where('group','packer')->whereNotIn('id',DB::table('dailyshift_user')->pluck('user_id')->toArray())->get();

        $machines = Machine::all();

        $machineIdArr = [];
        foreach($machines as $index=>$mItem){
            $old_shift = Dailyshift::where('machine',$mItem->number)->first();
            if(!$old_shift){
                $machineIdArr[$index]['machine_no'] = $mItem->number;
            }

        }
        $items_group = Item::distinct()->get(['group_name']);
        // dd($items_group);
        return view('user.dailyshift',compact('shifts','watchers','packers','machineIdArr','items_group'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return $this->arraymerge($request);
       // return $request->all();

        $this->validate($request, [
                'shift'=>'required',
                'machine'=>'required',
                'item'=>'required',
                'watcher'=>'required',
                'packer'=>'required',
                'production_date'=>'required',
            ]);
        $old_shift = Dailyshift::where('machine',$request->machine)->first();
        // dd($old_shift);
        if ($old_shift != null) {
            $old_shift->delete();
            $old_shift->workers()->sync([]);
        }

        $new_shift           = new Dailyshift;
        $new_shift->shift    = $request->shift;
        $new_shift->machine  = $request->machine;
        $new_shift->item     = $request->item;
        $new_shift->production_date     = $request->production_date;
        $new_shift->added_by = Auth::user()->id;
        $new_shift->save();

        $new_shift->workers()->sync($this->arraymerge($request));

       //$_insert = DailyShiftDetails::insert($this->getSqlForInput($request));

        //return $this->getSqlForInput($request);
        $worker_data = Dailyshift::with('workers')->where('machine',$request->machine)->first();
        // event(new NewWorkerAdded($worker_data));
        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Added',$new_shift,'',Auth::user()->employee_id);


        return redirect()->route('dailyshift')->with('success','Info Added succesfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (!Auth::user()->can('daily_shift')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }
        //get current shift
        $current_shift =  Dailyshift::with('workers','getitem')->where('machine',$id)->first();
        // return $current_shift->getitem->group_name;

         $shifts = Shift::all();
         $watchers = User::where('group','watcher')->whereNotIn('id',DB::table('dailyshift_user')->pluck('user_id')->toArray())->get();
         $packers = User::where('group','packer')->whereNotIn('id',DB::table('dailyshift_user')->pluck('user_id')->toArray())->get();
         $machines = Machine::all();
         $items_group = Item::distinct()->get(['group_name']);
        // dd($items_group);
         return view('user.dailyshift_edit',compact('shifts','watchers','packers','machines','items_group','current_shift'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // return $request->all();

         $update_shift           = Dailyshift::find($id);
         $update_shift->item     = $request->item;
         $update_shift->production_date     = $request->production_date;

         // dd($this->oldData($id));
          //Logs Activity
         // $this->LogActivity(Auth::user()->name,'Updated DailyShift',$update_shift->getDirty(),$update_shift->getOriginal(),Auth::user()->employee_id);
         $update_shift->save();

         $update_shift->workers()->sync($this->arraymerge($request));

         return redirect()->route('singlemachine',$request->machine)->with('success','Info Added succesfully');
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

    public function arraymerge($request)
    {
        $watcher = [];

        foreach ($request->packer as $single_packer) {
            $watcher[] = $single_packer;
        }

        foreach ($request->watcher as $single_watcher) {
            $watcher[] = $single_watcher;
        }

        return $watcher;
    }

    public function getDailyShiftDetailsByMachine($machine)
    {
        $data =  Dailyshift::with('workers')->where('machine',$machine)->first();
        // dd($data);
        if ($data == null) {
           return ($data);
        }
        $data->workers->map(function ($value) {
                return $value->image = URL::asset('public/storage/employees/'.$value->image);
            });
        return ($data);
    }


    public function getEmployeeId($id)
    {
        $user = User::find($id);

        return $user->employee_id;
    }

    // public function EmployeeIdFromUserId($request)
    // {
    //     $watcher = [];

    //     foreach ($request->packer as $single_packer) {
    //         $watcher[] = $this->getEmployeeId($single_packer);
    //     }

    //     foreach ($request->watcher as $single_watcher) {
    //         $watcher[] = $this->getEmployeeId($single_packer);
    //     }

    //     return $watcher;
    // }

    // public function newData($request,$dirty)
    // {
    //     $data = [];

    //     $data['workers'] = $this->EmployeeIdFromUserId($request);
    //     $data['changes'] = $dirty;
    //     return $data;
    // }

    // public function oldData($id)
    // {
    //     $shift = Dailyshift::find($id);
    //     $data = [];

    //     $data['workers'] = $shift->workers();
    //     $data['changes'] = $shift;
    //     return $data;
    // }
}
