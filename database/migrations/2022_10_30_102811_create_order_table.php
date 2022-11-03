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
        Schema::create('t_order', function (Blueprint $table) {
            $table->id();
            $table->string('gl_no');
            $table->integer('gl_order_no');
            $table->date('requested_date')->nullable();
            $table->integer('passed_day_count')->nullable();
            $table->string('order_category1')->nullable();
            $table->string('order_division2')->nullable();
            $table->string('priority_flag')->nullable();
            $table->string('billing_content')->nullable();
            $table->integer('billing_amount')->nullable();
            $table->integer('tax_rate')->nullable();
            $table->integer('consumption_tax')->nullable();
            $table->string('site_status')->nullable();
            $table->string('sales_status')->nullable();
            $table->date('deadline')->nullable();
            $table->date('complete_date')->nullable();
            $table->date('delivery_date')->nullable();
            $table->string('chat_number')->nullable();
            $table->string('check_agency')->nullable();
            $table->string('bf_maintain_id')->nullable();
            $table->string('office_name')->nullable();
            $table->string('worker_name')->nullable();
            $table->string('save_location')->nullable();
            $table->string('destination')->nullable();
            $table->date('check_date')->nullable();
            $table->date('recheck_date')->nullable();
            $table->string('pass_flag')->nullable();
            $table->string('failed_content')->nullable();
            $table->date('start_date')->nullable();
            $table->string('repair_destination')->nullable();
            $table->integer('repair_amount')->nullable();
            $table->date('check_fee_payment_date')->nullable();
            $table->string('deleted_original')->nullable();
            $table->date('certificate_receipt_date')->nullable();
            $table->date('certificate_pass_date')->nullable();
            $table->string('billing_month')->nullable();
            $table->integer('check_fee_excluding_tax')->nullable();
            $table->integer('manage_fee_with_tax')->nullable();
            $table->integer('business_trip_inspection_fee')->nullable();
            $table->string('subcontract_depart')->nullable();
            $table->integer('subcontract_fee')->nullable();
            $table->integer('gl_fee')->nullable();
            $table->string('remark1')->nullable();
            $table->string('remark2')->nullable();
            $table->string('remark3')->nullable();
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
        Schema::dropIfExists('t_order');
    }
};
