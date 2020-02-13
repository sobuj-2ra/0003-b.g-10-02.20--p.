<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\user;
use App\Pagepermission;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function maniIndex(){
        // $user_id = Auth::user()->id;
        // if($user_id){
            return view('welcome');
        // }
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return redirect()->route('index');
    }

    

    public function dashboard(){

        //$user = User::find($id);
       // return $permissions = Pagepermission::orderBy('page_name','asc')->get();

        return view('admin.home');
    }

}
