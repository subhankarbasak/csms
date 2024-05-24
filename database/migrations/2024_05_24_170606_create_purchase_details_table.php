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
        Schema::create('purchase_details', function (Blueprint $table) {
            $table->id();
            $table->dateTime('date');
            $table->double('cost');
            $table->unsignedBigInteger('purchase_unit_id')->nullable();
            $table->double('TaxNet')->default(0);
            $table->string('tax_method', 192)->default('1');
            $table->double('discount')->default(0);
            $table->string('discount_method', 192)->default('1');
            $table->unsignedBigInteger('purchase_id');
            $table->unsignedBigInteger('product_id');
            $table->unsignedBigInteger('product_variant_id')->nullable();
            $table->text('imei_number')->nullable();
            $table->double('total');
            $table->double('quantity');
            $table->timestamps();
        });

        Schema::table('purchase_details', function (Blueprint $table) {
            $table->foreign('purchase_id')->references('id')->on('purchases');
            $table->foreign('product_id')->references('id')->on('products');
            $table->foreign('product_variant_id')->references('id')->on('product_variants');
            $table->foreign('purchase_unit_id')->references('id')->on('units');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('purchase_details', function (Blueprint $table) {
            $table->dropForeign(['purchase_id']);
            $table->dropForeign(['product_id']);
            $table->dropForeign(['product_variant_id']);
            $table->dropForeign(['purchase_unit_id']);
        });
        
        Schema::dropIfExists('purchase_details');
    }
};
