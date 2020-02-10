<?php 
namespace App\Traits;

use App\Barcode;



Trait FindItemFromBarcode{
	
	public function getItemDetailsFromBarcode($barcode)
	{
		return Barcode::with('item')->where('barcode',$barcode)->first();
	}


}




