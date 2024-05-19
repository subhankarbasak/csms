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
        Schema::create('customers', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('customer_group_id');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('name', 191);
            $table->string('company_name', 191)->nullable();
            $table->string('email', 191)->nullable();
            $table->string('phone_number', 191);
            $table->string('tax_no', 191)->nullable();
            $table->string('address', 191);
            $table->string('city', 191);
            $table->string('state', 191)->nullable();
            $table->string('postal_code', 191)->nullable();
            $table->string('country', 191)->nullable();
            $table->double('points')->nullable();
            $table->double('deposit')->nullable();
            $table->double('expense')->nullable();
            $table->tinyInteger('is_active')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customers');
    }
};
