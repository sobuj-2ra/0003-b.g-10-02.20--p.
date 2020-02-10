<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductStockInsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_stock_ins', function (Blueprint $table) {
            $table->increments('id');
            $table->string('barcode');
            $table->string('item');
            $table->string('batch_no');
            $table->string('scanner_id');
            $table->string('is_delivered')->dafault(0);
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
        Schema::dropIfExists('product_stock_ins');
    }
}
