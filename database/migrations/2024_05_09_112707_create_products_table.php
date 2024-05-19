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
            $table->string('name', 191);
            $table->string('code', 191);
            $table->string('type', 191);
            $table->string('barcode_symbology', 191);
            $table->unsignedBigInteger('brand_id')->nullable();
            $table->unsignedBigInteger('category_id');
            $table->unsignedBigInteger('unit_id');
            $table->unsignedBigInteger('purchase_unit_id');
            $table->unsignedBigInteger('sale_unit_id');
            $table->double('cost');
            $table->double('price');
            $table->double('qty')->nullable();
            $table->double('alert_quantity')->nullable();
            $table->double('daily_sale_objective')->nullable();
            $table->tinyInteger('promotion')->nullable();
            $table->string('promotion_price', 191)->nullable();
            $table->string('starting_date', 200)->nullable();
            $table->date('last_date')->nullable();
            $table->unsignedBigInteger('tax_id')->nullable();
            $table->unsignedBigInteger('tax_method')->nullable();
            $table->longText('image')->nullable();
            $table->string('file', 191)->nullable();
            $table->tinyInteger('is_embeded')->nullable();
            $table->tinyInteger('is_variant')->nullable();
            $table->tinyInteger('is_batch')->nullable();
            $table->tinyInteger('is_diffPrice')->nullable();
            $table->tinyInteger('is_imei')->nullable();
            $table->tinyInteger('featured')->nullable();
            $table->string('product_list', 191)->nullable();
            $table->string('variant_list', 191)->nullable();
            $table->string('qty_list', 191)->nullable();
            $table->string('price_list', 191)->nullable();
            $table->text('product_details')->nullable();
            $table->text('variant_option')->nullable();
            $table->text('variant_value')->nullable();
            $table->tinyInteger('is_active')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
