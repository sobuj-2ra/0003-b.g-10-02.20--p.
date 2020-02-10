<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductStockIn extends Model
{
    protected $guarded =[];

    public function stockout()
    {
    	return $this->belongsToMany('App\Stockout');
    }

    public function stockin()
    {
    	return $this->belongsToMany('App\Item');
    }

}
