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
        Schema::create('t_import', function (Blueprint $table) {
            $table->id();
            $table->string('gl_no');
            $table->integer('gl_order_no');
            $table->string('supplier_name')->nullable();
            $table->date('order_date')->nullable();
            $table->date('delivery_date')->nullable();
            $table->string('purchasing_item')->nullable();
            $table->integer('purchase_amount')->nullable();
            $table->integer('consumption_tax')->nullable();
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
        Schema::dropIfExists('t_import');
    }
};
