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
        Schema::create('t_chat', function (Blueprint $table) {
            $table->id();
            $table->string('chat_number');
            $table->string('chat_branch_number')->nullable();
            $table->date('chat_date');
            $table->string('chat_time')->nullable();
            $table->string('chat_belong')->nullable();
            $table->string('chat_id')->nullable();
            $table->string('chat_content')->nullable();
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
        Schema::dropIfExists('t_chat');
    }
};
