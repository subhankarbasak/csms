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
        Schema::create('transfers_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('transfer_id');
            $table->unsignedBigInteger('product_id');
            $table->unsignedBigInteger('product_variant_id')->nullable();
            $table->double('cost');
            $table->unsignedBigInteger('purchase_unit_id')->nullable();
            $table->double('TaxNet')->nullable();
            $table->string('tax_method', 192)->default('1');
            $table->double('discount')->nullable();
            $table->string('discount_method', 192)->default('1');
            $table->double('quantity');
            $table->double('total');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transfers_details');
    }
};
