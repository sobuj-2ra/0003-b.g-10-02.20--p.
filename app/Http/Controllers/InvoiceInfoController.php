<?php

namespace App\Http\Controllers;

use App\InvoiceInfo;
use App\Traits\LogActivity;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class InvoiceInfoController extends Controller
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
        if (!Auth::user()->can('invoiceinfo_view')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $data = InvoiceInfo::find(1);

        return view('admin.invoiceinfo.list',compact('data'));
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
        //
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
        if (!Auth::user()->can('invoiceinfo_edit')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $data = InvoiceInfo::find(1);

        return view('admin.invoiceinfo.edit',compact('data'));
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
        $data = InvoiceInfo::find($id);

        $data->document_no = $request->document_no;
        $data->revision_no = $request->revision_no;
        $data->effective_date = Carbon::parse($request->effective_date);
        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Updated invoiceinfo',$data->getDirty(),$data->getOriginal(),Auth::user()->employee_id);

        $data->save();
        return redirect()->route('invoiceinfo.index')->with('success',' Data updated');
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
}
