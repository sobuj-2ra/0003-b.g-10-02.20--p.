<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderRef extends Model
{
    protected $table = 'order_refs';
    protected $guarded = [];
    public $timestamps = false;



    public function GetCustName(){
        return $this->hasOne('App\Customer','id','cust_id');
    }
}
