<?php

namespace App\Http\Controllers;

use App\DataTables\ItemsDataTable;
use App\Item;
use App\Traits\LogActivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class ItemController extends Controller
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
        if (!Auth::user()->can('item_view')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $items = Item::orderBy('id','desc')->get();

        return view('admin.item.list')->with('items',$items);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   

        if (!Auth::user()->can('item_add')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }
        $allGroups = DB::table('group_names')->get();

        return view('admin.item.add',compact('allGroups'));
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
            'item_name'=>'required',
            'item_code'=>'required',
            'group_name'=>'required',
            'group_code'=>'required',
            'pack_size'=>'required',
        ]);

        $item = new Item;
        $item->item_name = $request->item_name;
        $item->item_code   = $request->item_code;
        $item->group_name = $request->group_name;
        $item->group_code   = $request->group_code;
        $item->pack_size   = $request->pack_size;
        $item->added_by   = Auth::user()->id;
        $item->save();

        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Added new Item',$item,'',Auth::user()->employee_id);

        return redirect()->route('items.index')->with('success','New Item added');
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
        if (!Auth::user()->can('item_edit')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }

        $item = Item::find($id);
        $allGroups = DB::table('group_names')->get();
        return view('admin.item.edit')->with(['item'=>$item,'allGroups'=>$allGroups]);
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
            'item_name'=>'required',
            'item_code'=>'required',
            'group_name'=>'required',
            'group_code'=>'required',
            'pack_size'=>'required',
        ]);

        $item = Item::find($id);
        $item->item_name = $request->item_name;
        $item->item_code   = $request->item_code;
        $item->group_name = $request->group_name;
        $item->group_code   = $request->group_code;
        $item->pack_size   = $request->pack_size;
        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Updated item',$item->getDirty(),$item->getOriginal(),Auth::user()->employee_id);

        $item->save();

        return redirect()->route('items.index')->with('success','Item updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Item::find($id);
        //Logs Activity
        $this->LogActivity(Auth::user()->name,'Deleted item',$item,'',Auth::user()->employee_id);
        $item->delete();

        return redirect()->route('items.index')->with('success','Item deleted');
    }

    public function checkItemCode(Request $request)
    {
        $message = [];

        $Item = Item::where('item_code',strtoupper($request->item_code));

        if ($request->filled('item_id')) {
            $Item->where('id','<>',$request->item_id);
        }

        $Item = $Item->get()->count();

        if ($Item > 0) {
            $message['message'] = 'Item already existes in the database';
        }else{
            $message['message'] = '';
        }
        return json_encode($message);
    }


    public function all()
    {
        if (!Auth::user()->can('invoice_item')) {
            return redirect()->route('index')->with('warning','You are not authorized to access that page');
        }
        
        return view('admin.invoice.list_by_items');
    }

    public function ajax()
    {
      DB::statement(DB::raw('set @rownum=0'));
      $items = Item::get(['items.*', 
                  DB::raw('@rownum  := @rownum  + 1 AS rownum')]);

      return DataTables::of($items)
          ->addColumn('action', function ($item) {
              $col_to_show = '<a href="#" class="btn btn-primary" id="modal_switch" data-id='.$item->id.'><i class="fa fa-eye"></i></a>';
              return $col_to_show;
          })
          ->addColumn('total_stock', function ($item) {
              return $item->StockIn->count() + $item->NotStockedIn->count();
          })
          ->addColumn('stockout', function ($item) {
              return $item->StockOut->count();
          })
          ->editColumn('added_by',function($item){
            return $item->getUser->name;
          })
          ->rawColumns(['action'])
          ->make(true);
    }

    public function getItemDataById(Request $request)
    {
        return Item::with('StockIn')->where('id',$request->id)->first();
    }

    public function getItemDetailsByGroupName(Request $request)
    {
      //return $request->all();
      return Item::where('group_name',$request->item_group)->get();
    }


}
