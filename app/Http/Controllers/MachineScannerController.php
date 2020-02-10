<?php

namespace App\Http\Controllers;

use App\MachineScanner;
use App\Barcode;
use App\ProductStockIn;
use App\Item;
use Auth;
use Illuminate\Http\Request;

class MachineScannerController extends Controller
{
    public function index()
    {
    	$all_data = MachineScanner::orderBy('created_at','desc')->get();
    	return response()->json($all_data);
    }


    public function add(Request $request)
    {   
        
    	if ($request->has(['barcode', 'scanner_id'])) {

            
            $getbarcode = Barcode::where('barcode', $request->barcode)->first();
            if($getbarcode){
                $check_if_already_stockin = ProductStockIn::where('barcode',$getbarcode->barcode)->get();
                if(count($check_if_already_stockin) < 1){
                    $datastockin = new ProductStockIn([
                        'barcode' => $getbarcode->barcode,
                        'item' =>$getbarcode->item,
                        'batch_no' => $getbarcode->batch_no,
                        'if_scanner' => $request->scanner_id,
                        'is_delivered' => 0,
                      ]);
                    $datastockin->save();
                    $oldItemQty = Item::where('item_code',$getbarcode->item)->first();
                    $qtyF = $oldItemQty['item_qty']+1;
                    $itemData = Item::where('item_code',$getbarcode->item)->first();
                    $itemData->item_qty = $qtyF;
                    $itemData->update();
                }
            }




            $data = MachineScanner::where('barcode',$request->barcode)->where('scanner_id',$request->scanner_id)->get()->count();
            $total_box = MachineScanner::all()->count();
            if ($data > 0) {
                $json_response = [];
                $json_response['Code_status'] = 2;
                $json_response['box_count'] = $total_box;
                return response()->json($json_response);
            }

    		$data = new MachineScanner;
    		$data->scanner_id = $request->scanner_id;
    		$data->barcode = $request->barcode;
    		$data->save();

    		return response()->json($this->JsonResponse($request));
        }
    	return 'Please input barcode and scanner_id';
    }


    public function JsonResponse($request){

        $json_response = [];
        $data = MachineScanner::where('barcode',$request->barcode)->where('scanner_id',$request->scanner_id)->get()->count();
        $total_box = MachineScanner::all()->count();

        switch ($data) {
            case 0:
                $json_response['Code_status'] = 0;
                $json_response['box_count'] = $total_box;
                return $json_response;
                break;

            case 1:
                $json_response['Code_status'] = 1;
                $json_response['box_count'] = $total_box;
                return $json_response;
                break;
            case 2:
                $json_response['Code_status'] = 2;
                $json_response['box_count'] = $total_box;
                return $json_response;
                break;

            default:
                $json_response['Code_status'] = 3;
                $json_response['box_count'] = $total_box;
                $json_response['message'] = 'entry more than 2 time';
                return $json_response;
                break;
        }
    }


    public function deleteRecord(Request $request)
    {
        $json_response = [];
        $data = MachineScanner::where('barcode',$request->barcode)->where('scanner_id',$request->scanner_id)->count();

        if ($data > 0) {
            $data = MachineScanner::where('barcode',$request->barcode)->where('scanner_id',$request->scanner_id)->first();
            $data->delete();
            $json_response['code_status'] = 1;
            return response()->json($json_response);
        }

        $json_response['code_status'] = 2;
        return response()->json($json_response);
    }

    public function truncate()
    {
        if(MachineScanner::query()->truncate()){
            $json_response['code_status'] = 1;
            return response()->json($json_response);
        }
        $json_response['code_status'] = 2;

        return response()->json($json_response);
    }




}
