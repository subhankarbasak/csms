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
        Schema::create('sale_return_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('sale_return_id');
            $table->unsignedBigInteger('product_id');
            $table->double('price');
            $table->unsignedBigInteger('sale_unit_id')->nullable();
            $table->double('TaxNet')->default(0);
            $table->string('tax_method', 192)->default('1');
            $table->double('discount')->default(0);
            $table->string('discount_method', 192)->default('1');
            $table->unsignedBigInteger('product_variant_id')->nullable();
            $table->text('imei_number')->nullable();
            $table->double('quantity');
            $table->double('total');
            $table->timestamps();
        });

        Schema::table('sale_return_details', function (Blueprint $table) {
            $table->foreign('sale_return_id')->references('id')->on('sale_returns');
            $table->foreign('product_id')->references('id')->on('products');
            $table->foreign('sale_unit_id')->references('id')->on('units')->onDelete('set null');
            $table->foreign('product_variant_id')->references('id')->on('product_variants')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('sale_return_details', function (Blueprint $table) {
            $table->dropForeign(['sale_return_id']);
            $table->dropForeign(['product_id']);
            $table->dropForeign(['sale_unit_id']);
            $table->dropForeign(['product_variant_id']);
        });

        Schema::dropIfExists('sales_return_details');
    }
};
