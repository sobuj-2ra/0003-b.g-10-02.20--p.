<?php

namespace App\Http\Controllers;

use App\Shift;
use App\Traits\LogActivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ShiftController extends Controller
{
    use LogActivity;

    public function __construct(){
       $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (!Auth::user()->can('shift_view')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $shifts = Shift::orderBy('id','desc')->get();
        return view('admin.shift.list')->with('shifts',$shifts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (!Auth::user()->can('shift_add')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        return view('admin.shift.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       // return $request->all();

        $this->validate($request, [
            'shift_number'=>'required',
            'shift_start'=>'required',
            'shift_end'=>'required',
        ]);

        $shift = new Shift;

        $shift->shift_number = $request->shift_number;
        $shift->shift_start  = $request->shift_start;
        $shift->shift_end    = $request->shift_end; 

        $shift->save();

        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Added new Shift',$shift,'',Auth::user()->employee_id);

        return redirect()->route('shifts.index')->with('success','New shift Added');
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
        if (!Auth::user()->can('shift_edit')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $shift = Shift::find($id);
        return view('admin.shift.edit')->with('shift',$shift);
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
        $this->validate($request, [
            'shift_number'=>'required',
            'shift_start'=>'required',
            'shift_end'=>'required',
        ]);

        $shift = Shift::find($id);

        $shift->shift_number = $request->shift_number;
        $shift->shift_start  = $request->shift_start;
        $shift->shift_end    = $request->shift_end; 
        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Updated shift',$shift->getDirty(),$shift->getOriginal(),Auth::user()->employee_id);

        $shift->save();

        return redirect()->route('shifts.index')->with('success',' shift Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $shift = Shift::find($id);
        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Deleted shift',$shift,'',Auth::user()->employee_id);

        $shift->delete();

        return redirect()->route('shifts.index')->with('success',' shift deleted');

    }
}
