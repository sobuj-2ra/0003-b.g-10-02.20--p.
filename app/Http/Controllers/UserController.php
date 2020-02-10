<?php

namespace App\Http\Controllers;

use App\Pagepermission;
use App\Traits\LogActivity;
use App\User;
use Session;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
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
        if (!Auth::user()->can('employee_view')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

       $users = User::orderBy('id','desc')->get();
       return view('admin.user.list')->with('users',$users);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   
        //return $user = Session::sync();

        if (!Auth::user()->can('employee_add')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $permissions = Pagepermission::orderBy('page_name','asc')->get();
        return view('admin.user.add',compact('permissions'));
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


        $fileNameWithExt    =  $request->file('image')->getClientOriginalName();
        $fileNameWithoutExt = pathinfo($fileNameWithExt,PATHINFO_FILENAME);
        $extension          = $request->file('image')->getClientOriginalExtension();
        $NewFileToStore     = $request->employee_id.'.'.$extension;
        //return $NewFileToStore;
        $path               = $request->file('image')->move('public/storage/employees',$NewFileToStore);

        $user = new User;
        
        $user->name        = $request->name;
        $user->employee_id = $request->employee_id;
        $user->password    = Hash::make($request->password);
        $user->group       = $request->group;
        $user->image       = $NewFileToStore;

        $user->save();
        return $user->permissions()->sync($request->permission);
        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Added new Employee',$user,'',Auth::user()->employee_id);

        return redirect()->route('users.index')->with('success','Employee added successfully');
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
        if (!Auth::user()->can('employee_edit')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $user = User::find($id);
        $permissions = Pagepermission::orderBy('page_name','asc')->get();
        return view('admin.user.edit')->with('user',$user)->with('permissions',$permissions);
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

        $user = User::find($id);
        $old_image = $user->image;


        if ($request->hasFile('image')) {
	        //delete old image
	        Storage::delete('public/employees/'.$old_image);
	        //retrive new file data
	        $fileNameWithExt    =  $request->file('image')->getClientOriginalName();
	        $fileNameWithoutExt = pathinfo($fileNameWithExt,PATHINFO_FILENAME);
	        $extension          = $request->file('image')->getClientOriginalExtension();
	        $NewFileToStore     = $request->employee_id.'.'.$extension;
	        //return $NewFileToStore;
	        $path               = $request->file('image')->move('public/storage/employees',$NewFileToStore);
	    }else{
	        $NewFileToStore     = $user->image;
	    }

	    $user->name        = $request->name;
        $user->employee_id = $request->employee_id;
        $user->group       = $request->group;
        $user->image       = $NewFileToStore;

        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Updated Employee',$user->getDirty(),$user->getOriginal(),Auth::user()->employee_id);

	    $user->save();
        $user->permissions()->sync($request->permission);

        

	    return redirect()->route('users.index')->with('success','Employee updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);
    	Storage::delete('public/employees/'.$user->image);
        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Deleted Employee',$user,'','',Auth::user()->employee_id);

        $user->delete();
        return redirect()->route('users.index')->with('success','Employee deleted successfully');
    }

    public function employeeIdChcek(Request $request)
    {
    	$message = [];

    	$user = User::where('employee_id',$request->employee_id)->get()->count();

    	if ($user > 0) {
    		$message['message'] = 'Employee id already existes in the database';
    	}else{
    		$message['message'] = '';
    	}
    	return json_encode($message);
    }

    public function empolyeeEmailCheck(Request $request)
    {
    	$message = [];

    	$user = User::where('email',$request->email)->get()->count();

    	if ($user > 0) {
    		$message['message'] = 'email address already existes in the database';
    	}else{
    		$message['message'] = '';
    	}
    	return json_encode($message);
    }

    public function employeePhnCheck(Request $request)
    {
    	$message = [];

    	$user = User::where('phone',$request->phone)->get()->count();

    	if ($user > 0) {
    		$message['message'] = 'Phone number already existes in the database';
    	}else{
    		$message['message'] = '';
    	}
    	return json_encode($message);
    }

    public function getUserDataById(Request $request)
    {
    	$user = User::find($request->id);
    	return json_encode($user);
    }
}
