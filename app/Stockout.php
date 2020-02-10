<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Stockout extends Model
{
    protected $guarded = [];

    public function ordereditem()
    {
    	return $this->belongsToMany('App\ProductStockIn')->orderBy('created_at','desc');
    }



}
