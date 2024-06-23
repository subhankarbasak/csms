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
            [
                'id' => 1,
                'username' => 'Super Admin',
                'email' => 'superadmin@smartstock.in',
                'email_verified_at' => null,
                'avatar' => 'no_avatar.png',
                'status' => 0,
                'role_users_id' => 1,
                'is_all_warehouses' => 1,
                'password' => Hash::make('12345678'),
            ],
            [
                'id' => 2,
                'username' => 'Admin',
                'email' => 'admin@smartstock.in',
                'email_verified_at' => null,
                'avatar' => 'no_avatar.png',
                'status' => 1,
                'role_users_id' => 2,
                'is_all_warehouses' => 1,
                'password' => Hash::make('12345678'),
            ],
            [
                'id' => 3,
                'username' => 'Manager',
                'email' => 'manager@smartstock.in',
                'email_verified_at' => null,
                'avatar' => 'no_avatar.png',
                'status' => 1,
                'role_users_id' => 3,
                'is_all_warehouses' => 1,
                'password' => Hash::make('12345678'),
            ],
            [
                'id' => 4,
                'username' => 'Salesman',
                'email' => 'seller@smartstock.in',
                'email_verified_at' => null,
                'avatar' => 'no_avatar.png',
                'status' => 1,
                'role_users_id' => 4,
                'is_all_warehouses' => 1,
                'password' => Hash::make('12345678'),
            ],
        ]);

        // $user = User::findOrFail(1);
        // $user->assignRole(1);

        // Assign roles to users
        $usersRoles = [
            1 => 'Super Admin',  // Assuming roles are named 'Super Admin', 'Admin', 'Manager', 'Salesman'
            2 => 'Admin',
            3 => 'Manager',
            4 => 'Seller'
        ];

        foreach ($usersRoles as $userId => $roleName) {
            $user = User::findOrFail($userId);
            $user->assignRole($roleName);
        }
    }
}

// To run the seeder, use the following artisan command:
// php artisan db:seed --class=UserSeeder

