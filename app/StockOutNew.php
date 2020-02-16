<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StockOutNew extends Model
{
    protected $table = 'stockout_new';
    protected $guarded = [];
    public $timestamps = false;


    public function GetCustName(){
        return $this->hasOne('App\Customer','id','cust_id');
    }
}
