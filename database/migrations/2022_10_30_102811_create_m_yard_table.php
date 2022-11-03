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
        Schema::create('m_yard', function (Blueprint $table) {
            $table->id();
            $table->string('yard_name');
            $table->string('depart');
            $table->string('alias1')->nullable();
            $table->string('alias2')->nullable();
            $table->string('alias3')->nullable();
            $table->string('alias4')->nullable();
            $table->string('alias5')->nullable();
            $table->string('alias6')->nullable();
            $table->string('alias7')->nullable();
            $table->string('alias8')->nullable();
            $table->string('alias9')->nullable();
            $table->string('alias10')->nullable();
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
        Schema::dropIfExists('m_yard');
    }
};
