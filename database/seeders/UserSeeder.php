<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'id' => 1,
            'username' => 'Admin',
            'email' => 'admin@admin.com',
            'email_verified_at' => null,
            'avatar' => 'no_avatar.png',
            'status' => 1,
            'role_users_id' => 1,
            'is_all_warehouses' => 1,
            'password' => Hash::make('12345678'),
            'remember_token' => null,
            'created_at' => '2024-05-23 08:04:03',
            'updated_at' => null,
            'deleted_at' => null,
        ]);
        $user = User::findOrFail(1);
        $user->assignRole(1);
    }
}
