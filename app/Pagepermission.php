<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pagepermission extends Model
{
    public function user()
    {
    	return $this->belongsToMany('App\User');
    }
}
