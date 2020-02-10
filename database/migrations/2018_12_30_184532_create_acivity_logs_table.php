<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAcivityLogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('acivity_logs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->string('action')->nullable();
            $table->string('employee_id')->nullable();
            $table->longText('old_data')->nullable();
            $table->longText('new_data')->nullable();
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
        Schema::dropIfExists('acivity_logs');
    }
}
