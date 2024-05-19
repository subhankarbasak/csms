<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('roles')->insert([
            [
                'id' => 1,
                'name' => 'Admin',
                'description' => 'admin can access all data...',
                'guard_name' => 'web',
                'is_active' => 1,
                'created_at' => '2018-06-02 00:16:44',
                'updated_at' => '2018-06-02 23:43:05'
            ],
            [
                'id' => 2,
                'name' => 'Owner',
                'description' => 'Staff of shop',
                'guard_name' => 'web',
                'is_active' => 1,
                'created_at' => '2018-10-22 03:08:13',
                'updated_at' => '2022-02-01 13:43:30'
            ],
            [
                'id' => 4,
                'name' => 'staff',
                'description' => 'staff has specific acess...',
                'guard_name' => 'web',
                'is_active' => 1,
                'created_at' => '2018-06-02 00:35:27',
                'updated_at' => '2022-02-01 13:43:04'
            ],
            [
                'id' => 5,
                'name' => 'Customer',
                'description' => '',
                'guard_name' => 'web',
                'is_active' => 1,
                'created_at' => '2020-11-05 07:13:16',
                'updated_at' => '2020-11-15 00:54:15'
            ],
            [
                'id' => 6,
                'name' => 'Employee',
                'description' => 'Test',
                'guard_name' => 'web',
                'is_active' => 1,
                'created_at' => '2023-07-11 05:39:00',
                'updated_at' => '2023-07-11 05:39:00'
            ],
            [
                'id' => 7,
                'name' => 'Manager',
                'description' => NULL,
                'guard_name' => 'web',
                'is_active' => 1,
                'created_at' => '2024-05-04 14:14:32',
                'updated_at' => '2024-05-04 14:14:32'
            ],
        ]);
        //
    }
}
