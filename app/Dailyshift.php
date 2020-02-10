<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Dailyshift extends Model
{
    protected $guarded = [];
    public function workers()
    {
    	return $this->belongsToMany('App\User');
    }

    public function getWorkersId()
    {
        return $this->workers()->pluck('id')->get();
    }

    public function getWorkersEmployeeId()
    {
    	return $this->workers()->pluck('employee_id')->get();
    }

    public function getMachine()
    {
    	return $this->belongsTo('App\Machine','machine','number');
    }

    public function getitem()
    {
        return $this->belongsTo('App\Item','item','item_code');
    }

    public function getProductionDateAttribute($production_date)
    {
        return Carbon::parse($production_date);
    }
}
