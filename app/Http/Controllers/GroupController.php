<?php

namespace App\Http\Controllers;
use DB;
use Auth;

use Illuminate\Http\Request;

class GroupController extends Controller
{
    public function create(){
        if (!Auth::user()->can('group_name_add')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        return view('admin.group.add');
    }
    public function store(Request $r){
        if (!Auth::user()->can('group_name_add')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $name = $r->group_name;
        $curDateTime = Date('Y-m-d H:i:s');
        $dataCheck = DB::table('group_names')->where('group_name',$name)->count();
        if($dataCheck < 1){
            $is_save = DB::table('group_names')->insert([
                'group_name'=>$name,
                'created_at'=>$curDateTime,
            ]);
            if($is_save){
                return redirect('group/view')->with(['msg'=>'Data Inserted Successfully','status'=>'success']);
            }
            else{
                return redirect('group/create')->with(['msg'=>'Data Couldn\'t Insert','status'=>'danger']);
            }
        }else{
            return redirect('group/create')->with(['msg'=>'Data Already Exist','status'=>'warning']);
        }
    }
    public function view(){
        if (!Auth::user()->can('group_name_view')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $allGroup = DB::table('group_names')->get();

        return view('admin.group.list',compact('allGroup'));
    }
    public function destroy($id){
        if (!Auth::user()->can('group_name_delete')){
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $is_delete = DB::table('group_names')->where('id',$id)->delete();
        if($is_delete){
            return redirect('group/view')->with(['msg'=>'Data Deleted Successfully','status'=>'success']);
        }
    }


}
