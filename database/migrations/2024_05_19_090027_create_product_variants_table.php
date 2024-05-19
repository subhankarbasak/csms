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
        Schema::create('product_variants', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('product_id');
            $table->unsignedInteger('variant_id');
            $table->integer('position');
            $table->string('item_code');
            $table->double('additional_cost')->nullable();
            $table->double('additional_price')->nullable();
            $table->double('qty');
            $table->timestamps();

            // Foreign key constraints (optional)
            // $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');
            // $table->foreign('variant_id')->references('id')->on('variants')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_variants');
    }
};
