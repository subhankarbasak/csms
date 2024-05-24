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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('type', 192);
            $table->string('code', 192);
            $table->string('Type_barcode', 192);
            $table->string('name', 192);
            $table->double('cost');
            $table->double('price');
            $table->unsignedBigInteger('category_id');
            $table->unsignedBigInteger('brand_id')->nullable();
            $table->unsignedBigInteger('unit_id')->nullable();
            $table->unsignedBigInteger('unit_sale_id')->nullable();
            $table->unsignedBigInteger('unit_purchase_id')->nullable();
            $table->double('TaxNet')->default(0);
            $table->string('tax_method', 192)->default('1');
            $table->text('image')->nullable();
            $table->text('note')->nullable();
            $table->double('stock_alert')->default(0);
            $table->double('qty_min')->default(0);
            $table->tinyInteger('is_promo')->default(0);
            $table->double('promo_price')->default(0);
            $table->date('promo_start_date')->nullable();
            $table->date('promo_end_date')->nullable();
            $table->tinyInteger('is_variant')->default(0);
            $table->tinyInteger('is_imei')->default(0);
            $table->tinyInteger('not_selling')->default(0);
            $table->tinyInteger('is_active')->default(1);
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::table('products', function (Blueprint $table) {
            $table->foreign('category_id')->references('id')->on('categories');
            $table->foreign('brand_id')->references('id')->on('brands');
            $table->foreign('unit_id')->references('id')->on('units');
            $table->foreign('unit_sale_id')->references('id')->on('units');
            $table->foreign('unit_purchase_id')->references('id')->on('units');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropForeign(['category_id']);
            $table->dropForeign(['brand_id']);
            $table->dropForeign(['unit_id']);
            $table->dropForeign(['unit_sale_id']);
            $table->dropForeign(['unit_purchase_id']);
        });
        
        Schema::dropIfExists('products');
    }
};
