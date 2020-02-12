<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\OrderRef;
use App\Customer;

class OrderRefController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $allOrderRef = OrderRef::orderby('id','DESC')->with('GetCustName')->get();
        $allCustomer = Customer::orderby('id','DESC')->get();
        return view('admin.order_ref.add',compact('allOrderRef','allCustomer'));
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
        $d_check = OrderRef::where('order_ref_no',$r->order_ref)->count();
        if($d_check < 1){
            $is_save = OrderRef::Create(['order_ref_no'=>$r->order_ref,'cust_id'=>$r->cust_name,'status'=>$r->status]);
    
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
        echo 'dd';
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {   
        $editData = OrderRef::find($id);
        $ref_no = $editData->order_ref_no;
        $ref_status = $editData->status;
        $id = $editData->id;
        $custId = $editData->cust_id;
        $allCustomer = Customer::orderby('id','DESC')->get();
        return redirect()->back()->with(['edit'=>1,'ref_no'=>$ref_no,'status'=>$ref_status,'id'=>$id,'custId'=>$custId]);
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
        $is_save = OrderRef::find($id)->update(['order_ref_no'=>$r->order_ref,'status'=>$r->status]);

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
        $is_delete = OrderRef::find($id)->delete();
        if($is_delete){
            return redirect()->back()->with(['msg'=>'Data Deleted Successfully','status'=>'success','view'=>'1']);
        }
        else{
            return redirect()->back()->with(['msg'=>'Data Couldn\'t Delete','status'=>'danger','view'=>'1']);
        }
    }
}
