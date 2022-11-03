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
        Schema::create('t_car', function (Blueprint $table) {
            $table->id();
            $table->string('gl_no');
            $table->string('billing_address');
            $table->string('shipper_name');
            $table->string('ref_no');
            $table->string('maker_name')->nullable();
            $table->string('car_model_name')->nullable();
            $table->string('car_body_number')->nullable();
            $table->string('colour')->nullable();
            $table->date('reg_date')->nullable();
            $table->string('import_yard1')->nullable();
            $table->string('import_yard2')->nullable();
            $table->date('import_expect_date')->nullable();
            $table->date('import_date')->nullable();
            $table->date('shipping_date')->nullable();
            $table->date('moving_date')->nullable();
            $table->string('moving_yard')->nullable();
            $table->integer('purchase_total')->nullable();
            $table->integer('total_profit')->nullable();
            $table->string('memo')->nullable();
            $table->string('pdf_link1')->nullable();
            $table->string('pdf_link2')->nullable();
            $table->string('pdf_link3')->nullable();
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
        Schema::dropIfExists('t_car');
    }
};
