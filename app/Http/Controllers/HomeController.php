<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\user;
use App\Pagepermission;

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
