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
        Schema::create('sale_details', function (Blueprint $table) {
            $table->id();
            $table->datetime('date');
            $table->unsignedBigInteger('sale_id');
            $table->unsignedBigInteger('product_id');
            $table->unsignedBigInteger('product_variant_id')->nullable();
            $table->text('imei_number')->nullable();
            $table->double('price');
            $table->unsignedBigInteger('sale_unit_id')->nullable();
            $table->double('TaxNet')->nullable()->default(null);
            $table->string('tax_method', 192)->default('1');
            $table->double('discount')->nullable()->default(null);
            $table->string('discount_method', 192)->default('1');
            $table->double('total');
            $table->double('quantity');
            $table->string('optional_pname', 192)->nullable()->default(null);
            $table->timestamps();
        });

        Schema::table('sale_details', function (Blueprint $table) {
            $table->foreign('sale_id')->references('id')->on('sales');
            $table->foreign('product_id')->references('id')->on('products');
            $table->foreign('product_variant_id')->references('id')->on('product_variants');
            $table->foreign('sale_unit_id')->references('id')->on('units');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('sale_details', function (Blueprint $table) {
            $table->dropForeign(['sale_id']);
            $table->dropForeign(['product_id']);
            $table->dropForeign(['product_variant_id']);
            $table->dropForeign(['sale_unit_id']);
        });

        Schema::dropIfExists('sales_details');
    }
};
