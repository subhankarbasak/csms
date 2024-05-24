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
        Schema::create('transfers', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->string('Ref', 192);
            $table->dateTime('date');
            $table->unsignedBigInteger('from_warehouse_id');
            $table->unsignedBigInteger('to_warehouse_id');
            $table->double('items');
            $table->double('tax_rate')->default(0);
            $table->double('TaxNet')->default(0);
            $table->double('discount')->default(0);
            $table->string('discount_type', 192);
            $table->double('discount_percent_total')->default(0);
            $table->double('shipping')->default(0);
            $table->double('GrandTotal');
            $table->string('statut', 192);
            $table->text('notes')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transfers');
    }
};
