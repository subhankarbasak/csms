<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('providers', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->string('name', 191);
            $table->string('code', 191);
            $table->string('email', 192)->nullable();
            $table->string('phone', 191)->nullable();
            $table->string('country', 191)->nullable();
            $table->string('city', 191)->nullable();
            $table->string('address', 191)->nullable();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::table('providers', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('providers', function (Blueprint $table) {
            $table->dropForeign(['user_id']);
        });
        
        Schema::dropIfExists('providers');
    }
};
