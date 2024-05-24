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
        Schema::create('clients', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->string('username', 191);
            $table->string('code', 192);
            $table->tinyInteger('status')->default(1);
            $table->string('photo', 192)->nullable();
            $table->string('email', 192)->nullable();
            $table->string('country', 191)->nullable();
            $table->string('city', 191)->nullable();
            $table->string('phone', 191)->nullable();
            $table->string('address', 191)->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('clients');
    }
};
