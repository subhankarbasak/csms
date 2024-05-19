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
        Schema::create('general_settings', function (Blueprint $table) {
            $table->id();
            $table->string('site_title')->nullable();
            $table->string('site_logo')->nullable();
            $table->boolean('is_rtl')->default(false);
            $table->string('currency')->nullable();
            $table->unsignedBigInteger('package_id')->nullable();
            $table->string('subscription_type')->nullable();
            $table->string('staff_access')->nullable();
            $table->string('date_format')->nullable();
            $table->string('developed_by')->nullable();
            $table->string('invoice_format')->nullable();
            $table->integer('decimal')->default(2);
            $table->string('state')->nullable();
            $table->string('theme')->nullable();
            $table->timestamps();
            $table->string('currency_position')->nullable();
            $table->date('expiry_date')->nullable();
            $table->boolean('is_zatca')->default(false);
            $table->string('company_name')->nullable();
            $table->string('gst_registration_number')->nullable();
            $table->string('without_stock')->nullable();
            $table->string('modules')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('general_settings');
    }
};
