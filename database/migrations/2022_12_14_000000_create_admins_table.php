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
        Schema::create('admins', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('userid')->unique(); // email -> useridに変更
            $table->timestamp('userid_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->text('extra_admins_column1')->nullable()->comment('追加カラム1'); // 任意のフィールドを追加しても問題ありません。membersテーブルと構造が違ってもOKです。
            $table->text('extra_admins_column2')->nullable()->comment('追加カラム2');
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
        Schema::dropIfExists('admins');
    }
};