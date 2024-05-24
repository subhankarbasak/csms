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
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('currency_id')->nullable();
            $table->unsignedBigInteger('client_id')->nullable();
            $table->unsignedBigInteger('warehouse_id')->nullable();
            $table->string('email', 191);
            $table->string('app_name', 192);
            $table->string('CompanyName', 191);
            $table->string('CompanyPhone', 191);
            $table->string('CompanyAdress', 191);
            $table->string('logo', 191)->nullable();
            $table->string('invoice_footer', 192)->nullable();
            $table->string('footer', 192);
            $table->string('developed_by', 192)->nullable();
            $table->string('default_language', 192)->default('en');
            $table->string('default_sms_gateway', 192)->nullable();
            $table->string('symbol_placement', 192)->default('before');
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::table('settings', function (Blueprint $table) {
            $table->foreign('currency_id')->references('id')->on('currencies')->onDelete('set null');
            $table->foreign('client_id')->references('id')->on('clients')->onDelete('set null');
            $table->foreign('warehouse_id')->references('id')->on('warehouses')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('settings', function (Blueprint $table) {
            $table->dropForeign(['currency_id']);
            $table->dropForeign(['client_id']);
            $table->dropForeign(['warehouse_id']);
        });

        Schema::dropIfExists('settings');
    }
};
