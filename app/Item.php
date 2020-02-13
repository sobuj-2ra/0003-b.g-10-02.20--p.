<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{   
    public function getUser()
    {
    	return $this->belongsTo('App\User','added_by');
    }

    public function StockIn()
    {
    	return $this->hasMany('App\ProductStockIn','item','item_code');
    }

    public function StockOut()
    {
    	return $this->hasMany('App\ProductStockIn','item','item_code')->where('is_delivered',1);
    }

    public function NotStockedIn()
    {
    	return $this->hasMany('App\Barcode','item','item_code');
    }

    


}
