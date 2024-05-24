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
        Schema::create('pos_settings', function (Blueprint $table) {
            $table->id();
            $table->string('note_customer', 192)->default('Thank You For Shopping With Us . Please Come Again');
            $table->tinyInteger('show_note')->default(1);
            $table->tinyInteger('show_barcode')->default(1);
            $table->tinyInteger('show_discount')->default(1);
            $table->tinyInteger('show_customer')->default(1);
            $table->tinyInteger('show_email')->default(1);
            $table->tinyInteger('show_phone')->default(1);
            $table->tinyInteger('show_address')->default(1);
            $table->tinyInteger('show_Warehouse')->default(1);
            $table->tinyInteger('is_printable')->default(1);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pos_settings');
    }
};
