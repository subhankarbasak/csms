<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('roles')->insert([
            [
                'id' => 1,
                'name' => 'Super Admin',
                'description' => 'Super Admin',
                'guard_name' => 'web',
            ],
            [
                'id' => 2,
                'name' => 'Admin',
                'description' => 'Administrator',
                'guard_name' => 'web',
            ],
            [
                'id' => 3,
                'name' => 'Manager',
                'description' => 'Manager',
                'guard_name' => 'web',
            ],
            [
                'id' => 4,
                'name' => 'Seller',
                'description' => 'Seller',
                'guard_name' => 'web',
            ],
        ]);
    }
}
