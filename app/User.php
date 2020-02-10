<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Auth;

class User extends Authenticatable
{
    use Notifiable;
   // protected $dates = ['join_date'];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function shift()
    {
        return $this->belongsToMany('App\Dailyshift');
    }

    public function permissions(){
        return $this->belongsToMany('App\Pagepermission');
    }

    public function hasPermission($permission){
        $user_permissions = Auth::user()->permissions;
        // dd($user_permissions);

        foreach ($user_permissions as $user_permission) {
            if ($permission->id == $user_permission->id) {
               return true;
            }
        }
    }
}
