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
        Schema::create('payment_sale_returns', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('account_id')->nullable();
            $table->dateTime('date');
            $table->string('Ref', 192);
            $table->unsignedBigInteger('sale_return_id');
            $table->double('montant');
            $table->double('change')->default(0);
            $table->unsignedBigInteger('payment_method_id');
            $table->text('notes')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });

        Schema::table('payment_sale_returns', function (Blueprint $table) {
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('account_id')->references('id')->on('accounts');
            $table->foreign('sale_return_id')->references('id')->on('sale_returns');
            $table->foreign('payment_method_id')->references('id')->on('payment_methods');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('payment_sale_returns', function (Blueprint $table) {
            $table->dropForeign(['user_id']);
            $table->dropForeign(['account_id']);
            $table->dropForeign(['sale_return_id']);
            $table->dropForeign(['payment_method_id']);
        });
        Schema::dropIfExists('payment_sale_returns');
    }
};
