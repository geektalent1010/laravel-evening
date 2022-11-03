<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('m_checkfee', function (Blueprint $table) {
            $table->id();
            $table->string('check_depart')->nullable();
            $table->string('yard')->nullable();
            $table->string('destination')->nullable();
            $table->string('car_category')->nullable();
            $table->string('car_type')->nullable();
            $table->string('type_number')->nullable();
            $table->string('displacement_type')->nullable();
            $table->integer('check_fee')->nullable();
            $table->integer('management_fee')->nullable();
            $table->integer('gl_fee')->nullable();
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
        Schema::dropIfExists('m_checkfee');
    }
};
