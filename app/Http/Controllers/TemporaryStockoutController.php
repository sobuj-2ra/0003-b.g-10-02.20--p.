<?php

namespace App\Http\Controllers;

use App\Temporarystockout;
use Illuminate\Http\Request;

class TemporaryStockoutController extends Controller
{
    public function stockout(Request $request)
    {
    	if ($request->has(['barcode', 'customer_ref_no'])) {
    		$if_areaddy_inserted = Temporarystockout::where('barcode',$request->barcode)->first();

    		if ($if_areaddy_inserted == null) {
    			Temporarystockout::create($request->all());
    		}
    	}else{
    		return 'please provide barcode and customer ref no';
    	}
    }

    
}
