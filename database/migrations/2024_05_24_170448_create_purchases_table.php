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
        Schema::create('purchases', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->string('Ref', 192);
            $table->dateTime('date');
            $table->unsignedBigInteger('provider_id');
            $table->unsignedBigInteger('warehouse_id');
            $table->double('tax_rate')->default(0);
            $table->double('TaxNet')->default(0);
            $table->double('discount')->default(0);
            $table->string('discount_type', 192);
            $table->double('discount_percent_total')->default(0);
            $table->double('shipping')->default(0);
            $table->double('GrandTotal');
            $table->double('paid_amount')->default(0);
            $table->string('statut', 191);
            $table->string('payment_statut', 192);
            $table->text('notes')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::table('purchases', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('provider_id')->references('id')->on('providers');
            $table->foreign('warehouse_id')->references('id')->on('warehouses');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('purchases', function (Blueprint $table) {
            $table->dropForeign(['user_id']);
            $table->dropForeign(['provider_id']);
            $table->dropForeign(['warehouse_id']);
        });
        
        Schema::dropIfExists('purchases');
    }
};
