<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barcode extends Model
{
    protected $fillable = ['barcode','item','batch_no','total_print','created_at','updated_at'];

    public function item()
    {
    	return $this->hasOne('App\Item','item_code','item');
    }
    public function getShift()
    {
      return $this->hasMany('App\Barcode', 'shift', );
    }
    public function getShifts()
    {
      return $this->belongsTo('App\Barcode', 'shift');
    }
}
