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
        Schema::create('pos_setting', function (Blueprint $table) {
            $table->id();
            $table->integer('customer_id')->unsigned();
            $table->integer('warehouse_id')->unsigned();
            $table->integer('biller_id')->unsigned();
            $table->integer('product_number')->unsigned();
            $table->boolean('keybord_active');
            $table->boolean('is_table')->default(0);
            $table->string('stripe_public_key')->nullable();
            $table->string('stripe_secret_key')->nullable();
            $table->string('paypal_live_api_username')->nullable();
            $table->string('paypal_live_api_password')->nullable();
            $table->string('paypal_live_api_secret')->nullable();
            $table->text('payment_options')->nullable();
            $table->string('invoice_option', 10)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pos_setting');
    }
};
