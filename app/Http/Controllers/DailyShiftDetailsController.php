<?php

namespace App\Http\Controllers;

use App\DailyShiftDetails;
use App\Item;
use App\Machine;
use App\Shift;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DailyShiftDetailsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $shifts = Shift::all();
        $watchers = User::where('group','watcher')->whereNotIn('employee_id',DailyShiftDetails::select('worker')->where('worker_type','watcher')->get())->get();
        $packers = User::where('group','packer')->whereNotIn('employee_id',DailyShiftDetails::select('worker')->where('worker_type','packer')->get())->get();
        $machines = Machine::all();
        $items = Item::all();
       // dd($watchers);
        return view('user.dailyshift',compact('shifts','watchers','packers','machines','items'));
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
        //return $request->all();

        $this->validate($request, [
                'shift'=>'required',
                'machine'=>'required',
                'item'=>'required',
                'watcher'=>'required',
                'packer'=>'required',
            ]);

       $_insert = DailyShiftDetails::insert($this->getSqlForInput($request));

        //return $this->getSqlForInput($request);
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
        //
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
        return $request->all();
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


    public function getSqlForInput($request)
    {
        $worker = [];
        $packer = [];


        foreach ($request->watcher as $key => $single_watcher) {
            $worker[$key]['shift']        = $request->shift;
            $worker[$key]['machine']      = $request->machine;
           // $worker[$key]['item']         = $request->item;
            $worker[$key]['worker']       = $single_watcher;
            $worker[$key]['worker_type']  = 'watcher';
            $worker[$key]['added_by']     = Auth::user()->id;
        }

        foreach ($request->packer as $key => $single_packer) {
            $packer[$key]['shift']        = $request->shift;
            $packer[$key]['machine']      = $request->machine;
           // $packer[$key]['item']         = $request->item;
            $packer[$key]['worker']       = $single_packer;
            $packer[$key]['worker_type']  = 'packer';
            $packer[$key]['added_by']     = Auth::user()->id;
        }

        foreach ($packer as $packer_tomerge) {
            $worker[] = $packer_tomerge;
        }

        return  $worker ;
    }
}
