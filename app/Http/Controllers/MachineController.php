<?php

namespace App\Http\Controllers;

use App\Machine;
use App\Traits\LogActivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MachineController extends Controller
{
    use LogActivity;

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
        if (!Auth::user()->can('machine_view')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $machines = Machine::orderBy('id','desc')->get();
        return view('admin.machine.list')->with('machines',$machines);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (!Auth::user()->can('machine_add')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        return view('admin.machine.add');
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
            'name'=>'required',
            'number'=>'required',
        ]);

        $machine         = new Machine;
        $machine->name   = $request->name;
        $machine->number = strtoupper($request->number);
        $machine->save();

        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Added new machine',$machine,'',Auth::user()->employee_id);

        return redirect()->route('machines.index')->with('success','New Machine addded');



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
        if (!Auth::user()->can('machine_edit')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $machine = Machine::find($id);
        return view('admin.machine.edit')->with('machine',$machine);
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
            'name'=>'required',
            'number'=>'required',
        ]);

        $machine         = Machine::find($id);
        $machine->name   = $request->name;
        $machine->number = strtoupper($request->number);
        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Updated machine',$machine->getDirty(),$machine->getOriginal(),Auth::user()->employee_id);

        $machine->save();

        return redirect()->route('machines.index')->with('success',' Machine updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $machine = Machine::find($id);

        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Deleted machine',$machine,'',Auth::user()->employee_id);

        $machine->delete();
        return redirect()->route('machines.index')->with('success',' Machine deleted');
    }

    public function checkMachineId(Request $request)
    {
        $message = [];

        $machine = Machine::where('number',strtoupper($request->number));

        if ($request->filled('machine_id')) {
            $machine->where('id','<>',$request->machine_id);
        }

        $machine = $machine->get()->count();

        if ($machine > 0) {
            $message['message'] = 'Machine number already existes in the database';
        }else{
            $message['message'] = '';
        }
        return json_encode($message);
    }
}
