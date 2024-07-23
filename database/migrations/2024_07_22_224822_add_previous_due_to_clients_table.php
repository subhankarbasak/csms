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
        Schema::table('clients', function (Blueprint $table) {
            $table->string('is_gst', 10)->default('no');
            $table->string('gst_no', 191)->nullable();
            $table->string('has_due', 10)->default('no');
            $table->decimal('previous_due', 10, 2)->default(0.0);
            $table->date('previous_due_date')->nullable();
            $table->string('previous_due_notes', 191)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('clients', function (Blueprint $table) {
            $table->dropColumn('is_gst');
            $table->dropColumn('gst_no');
            $table->dropColumn('has_due');
            $table->dropColumn('previous_due');
            $table->dropColumn('previous_due_date');
            $table->dropColumn('previous_due_notes');
        });
    }
};
