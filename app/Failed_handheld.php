<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Failed_handheld extends Model
{
    protected $table = 'failed_handhelds';
    public $timestamps = false;
    public $guarded = [];
}
