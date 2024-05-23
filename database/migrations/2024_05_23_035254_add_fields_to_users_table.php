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
        Schema::table('users', function (Blueprint $table) {
            //
            $table->string('username', 192);
			$table->string('avatar', 192)->nullable();
			$table->boolean('status')->default(1);
			$table->bigInteger('role_users_id')->unsigned()->index('users_role_users_id');
            $table->foreign('role_users_id', 'users_role_users_id')->references('id')->on('roles')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			// $table->bigInteger('role_users_id')->unsigned()->index('users_role_users_id');
			$table->boolean('is_all_warehouses')->default(0);
			$table->softDeletes()->after('updated_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            //
            $table->dropColumn('role_users_id');
            $table->dropColumn('is_all_warehouses');
            $table->dropForeign('users_role_users_id');
        });
    }
};
