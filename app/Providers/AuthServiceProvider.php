<?php

namespace App\Providers;

use App\Pagepermission;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //

        foreach ($this->getPermissions() as $permission) {

            Gate::define($permission->page_name,function ($user) use ($permission){
                return $user->hasPermission($permission);
            });
        }
    }

    

    protected function getPermissions(){
        return Pagepermission::OrderBy('page_name','desc')->get();
    }
}
