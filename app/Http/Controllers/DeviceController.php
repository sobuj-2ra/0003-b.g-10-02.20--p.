<?php

namespace App\Http\Controllers;

use App\Device;
use App\Traits\LogActivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PrintNode;

class DeviceController extends Controller
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
        if (!Auth::user()->can('device_view')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $devices = Device::orderBy('id','desc')->get();
        return view('admin.device.list')->with('devices',$devices);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (!Auth::user()->can('device_add')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        return view('admin.device.add');
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
            'device_name'=>'required',
            'device_type'=>'required',
            'device_id'=>'required',
        ]);

        $device = new Device;
        $device->device_name = $request->device_name;
        $device->device_ip   = $request->device_ip;
        $device->device_type = $request->device_type;
        $device->device_id   = strtoupper($request->device_id);
        $device->save();

        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Added new Device',$device,'',Auth::user()->employee_id);

        return redirect()->route('devices.index')->with('success','New Device added');
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
        if (!Auth::user()->can('device_edit')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $device = Device::find($id);
        return view('admin.device.edit')->with('device',$device);
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

        $this->validate($request, [
            'device_name'=>'required',
            'device_type'=>'required',
            'device_id'=>'required',
        ]);

        $device = Device::find($id);
        $device->device_name = $request->device_name;
        $device->device_ip   = $request->device_ip;
        $device->device_type = $request->device_type;
        $device->device_id   = strtoupper($request->device_id);

        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Updated Device',$device->getDirty(),$device->getOriginal(),Auth::user()->employee_id);

        $device->save();

        return redirect()->route('devices.index')->with('success','Device Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $device = Device::find($id);

        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Deleted Device',$device,'',Auth::user()->employee_id);

        $device->delete();
        return redirect()->route('devices.index')->with('success','Device Deleted');
    }

    public function checkDeviceId(Request $request)
    {
        $message = [];

        $user = Device::where('device_id',$request->device_id)->get()->count();

        if ($user > 0) {
            $message['message'] = 'Device id already existes in the database';
        }else{
            $message['message'] = '';
        }
        return json_encode($message);
    }

    public function getAllPrinters()
    {
        $details_printer_data = [];
        $api_key = env('PRINTNODE_API');
        // dd($api_key);

        $credentials = new PrintNode\Credentials();
        $credentials->setApiKey($api_key);
        // Hint: Your API username is in the format description.integer, where description 
        // is the name given to the API key when you created it, followed by a dot (.) and an integer. 
        // All this information is provided for you when you create your API Key.
        // Step 3: Get a list of computers, printers or printjobs which are available.
        // To get a list of computers, printers or printjobs, create a new PrintNode\Request 
        // object, passing it your credentials as the argument to it's constructor.
        $request = new \PrintNode\Request($credentials);
        // Hint: Before you can get a list of computers or printers, you must have successfully 
        // connected using the PrintNode Client software. If you have not yet connected with 
        // the client software you will not receive any results from the API.
        // Call the getComputers, getPrinters() or getPrintJobs() method on the object:
        // $computers = $request->getComputers();
        $printers = $request->getPrinters();

        foreach ($printers as $key => $printer) {
            $details_printer_data[$key]['id'] = $printer->id;
            $details_printer_data[$key]['name'] = $printer->name;
            $details_printer_data[$key]['description'] = $printer->description;
            $details_printer_data[$key]['default'] = $printer->default;
            $details_printer_data[$key]['state'] = $printer->state;
        }

        return $details_printer_data;
    }
}
