<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStockoutsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stockouts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('sales_order')->nullable();
            $table->string('transport_no')->nullable();
            $table->string('reference_no')->nullable();
            $table->integer('is_delivered')->default(0);
            $table->integer('sl_no')->unsigned()->nullable();
            $table->dateTime('delivery_time')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stockouts');
    }
}
