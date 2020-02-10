<?php

namespace App\Providers;

use App\Invoice;
use Illuminate\Support\ServiceProvider;

class LastSerialNo extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('*',function($view){
             $view->with('last_serial_no', Invoice::latest()->first() == null ? 000000 : Invoice::latest()->first()->sl_no);
        });
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
