<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use Auth;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        if(!Auth::user()->can('customer_add')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }
        $allCustomer = Customer::orderby('id','DESC')->get();
        return view('admin.customer.add',compact('allCustomer'));
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
    public function store(Request $r)
    {
        // return $r->all();
        $d_check = Customer::where('cust_name',$r->cust_name)->where('company',$r->company_name)->count();
        if($d_check < 1){
            $is_save = Customer::Create(['cust_name'=>$r->cust_name,'phone'=>$r->phone,'company'=>$r->company_name,'address'=>$r->address]);
    
            if($is_save){
                return redirect()->back()->with(['msg'=>'Data Inserted Successfully','status'=>'success','add'=>1]);
            }
            else{
                return redirect()->back()->with(['msg'=>'Data Couldn\'t insert','status'=>'danger','add'=>1]);
            }
        }
        else{
            return redirect()->back()->with(['msg'=>'Data Already Exist','status'=>'warning','add'=>1]);
        }
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
        $editData = Customer::find($id);
        $cust_name = $editData->cust_name;
        $phone = $editData->phone;
        $company = $editData->company;
        $address = $editData->address;
        $id = $editData->id;
        return redirect()->back()->with(['edit'=>1,'cust_name'=>$cust_name,'phone'=>$phone,'id'=>$id,'company'=>$company,'address'=>$address]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $r, $id)
    {
        $is_save = Customer::find($id)->update(['cust_name'=>$r->cust_name,'phone'=>$r->phone,'company'=>$r->company_name,'address'=>$r->address]);

        if($is_save){
            return redirect()->back()->with(['msg'=>'Data Updated Successfully','status'=>'success','add'=>1]);
        }
        else{
            return redirect()->back()->with(['msg'=>'Data Couldn\'t update','status'=>'danger','add'=>1]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $is_delete = Customer::find($id)->delete();
        if($is_delete){
            return redirect()->back()->with(['msg'=>'Data Deleted Successfully','status'=>'success','view'=>'1']);
        }
        else{
            return redirect()->back()->with(['msg'=>'Data Couldn\'t Delete','status'=>'danger','view'=>'1']);
        }
    }
}
