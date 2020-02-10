<?php

namespace App;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Machine extends Model
{
    public function workers()
    {
    	return $this->hasMany('App\DailyShiftDetails','machine','number');
    }

    public function getShift()
    {
    	return $this->hasOne('App\Dailyshift','machine','number');
    }

    public function getWorkers()
    {
    	//$daily_shift = $this->getShift();
    	return User::whereIn('id',DB::table('dailyshift_user')->where('dailyshift_id',$daily_shift->id)->pluck('user_id')->toArray())->get();
    }
}
