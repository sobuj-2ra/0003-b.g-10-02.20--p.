<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Temporarystockout extends Model
{
    protected $guarded = [];


    public function item()
    {
    	return $this->hasManyThrough('App\Item','App\ProductStockIn','barcode','item_code','barcode','item');
    }

    public function getbarcode()
    {
    	return $this->hasOne('App\ProductStockIn','barcode','barcode');
    }
}
