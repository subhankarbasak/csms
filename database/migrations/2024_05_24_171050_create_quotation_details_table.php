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
        Schema::create('quotation_details', function (Blueprint $table) {
            $table->id();
            $table->double('price');
            $table->unsignedBigInteger('sale_unit_id')->nullable();
            $table->double('TaxNet')->default(0);
            $table->string('tax_method', 192)->default('1');
            $table->double('discount')->default(0);
            $table->string('discount_method', 192)->default('1');
            $table->double('total');
            $table->double('quantity');
            $table->unsignedBigInteger('product_id');
            $table->unsignedBigInteger('product_variant_id')->nullable();
            $table->text('imei_number')->nullable();
            $table->unsignedBigInteger('quotation_id');
            $table->timestamps();
        });

        Schema::table('quotation_details', function (Blueprint $table) {
            $table->foreign('sale_unit_id')->references('id')->on('units');
            $table->foreign('product_id')->references('id')->on('products');
            $table->foreign('product_variant_id')->references('id')->on('product_variants');
            $table->foreign('quotation_id')->references('id')->on('quotations');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('quotation_details', function (Blueprint $table) {
            $table->dropForeign(['sale_unit_id']);
            $table->dropForeign(['product_id']);
            $table->dropForeign(['product_variant_id']);
            $table->dropForeign(['quotation_id']);
        });
        
        Schema::dropIfExists('quotation_details');
    }
};
