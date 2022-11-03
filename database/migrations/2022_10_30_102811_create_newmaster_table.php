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
        Schema::create('t_newmaster', function (Blueprint $table) {
            $table->id();
            $table->string('symbol');
            $table->string('export_check');
            $table->string('area_symbol')->nullable();
            $table->string('departure_scheduled_date')->nullable();
            $table->string('sales_side_shipping')->nullable();
            $table->string('car_status')->nullable();
            $table->string('public_flag')->nullable();
            $table->string('sale_status')->nullable();
            $table->string('situation')->nullable();
            $table->string('sales_month')->nullable();
            $table->string('ref_no')->nullable();
            $table->string('maker_name')->nullable();
            $table->string('car_name')->nullable();
            $table->string('car_model')->nullable();
            $table->string('supplier_name')->nullable();
            $table->date('supply_date')->nullable();
            $table->string('inventory_days')->nullable();
            $table->string('yard_name')->nullable();
            $table->string('wise_person')->nullable();
            $table->string('export_number')->nullable();
            $table->string('regist_year')->nullable();
            $table->string('regist_month')->nullable();
            $table->string('grade')->nullable();
            $table->string('car_body_number')->nullable();
            $table->string('distance')->nullable();
            $table->string('colour')->nullable();
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
        Schema::dropIfExists('t_newmaster');
    }
};
