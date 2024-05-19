<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('permissions')->insert([
            ['id' => 4, 'name' => 'products-edit', 'guard_name' => 'web', 'created_at' => '2018-06-03 01:30:09', 'updated_at' => '2018-06-03 01:30:09'],
            ['id' => 5, 'name' => 'products-delete', 'guard_name' => 'web', 'created_at' => '2018-06-03 23:24:22', 'updated_at' => '2018-06-03 23:24:22'],
            ['id' => 6, 'name' => 'products-add', 'guard_name' => 'web', 'created_at' => '2018-06-04 01:04:14', 'updated_at' => '2018-06-04 01:04:14'],
            ['id' => 7, 'name' => 'products-index', 'guard_name' => 'web', 'created_at' => '2018-06-04 04:04:27', 'updated_at' => '2018-06-04 04:04:27'],
            ['id' => 8, 'name' => 'purchases-index', 'guard_name' => 'web', 'created_at' => '2018-06-04 08:33:19', 'updated_at' => '2018-06-04 08:33:19'],
            ['id' => 9, 'name' => 'purchases-add', 'guard_name' => 'web', 'created_at' => '2018-06-04 08:42:25', 'updated_at' => '2018-06-04 08:42:25'],
            ['id' => 10, 'name' => 'purchases-edit', 'guard_name' => 'web', 'created_at' => '2018-06-04 10:17:36', 'updated_at' => '2018-06-04 10:17:36'],
            ['id' => 11, 'name' => 'purchases-delete', 'guard_name' => 'web', 'created_at' => '2018-06-04 10:17:36', 'updated_at' => '2018-06-04 10:17:36'],
            ['id' => 12, 'name' => 'sales-index', 'guard_name' => 'web', 'created_at' => '2018-06-04 11:19:08', 'updated_at' => '2018-06-04 11:19:08'],
            ['id' => 13, 'name' => 'sales-add', 'guard_name' => 'web', 'created_at' => '2018-06-04 11:19:52', 'updated_at' => '2018-06-04 11:19:52'],
            ['id' => 14, 'name' => 'sales-edit', 'guard_name' => 'web', 'created_at' => '2018-06-04 11:19:52', 'updated_at' => '2018-06-04 11:19:52'],
            ['id' => 15, 'name' => 'sales-delete', 'guard_name' => 'web', 'created_at' => '2018-06-04 11:19:53', 'updated_at' => '2018-06-04 11:19:53'],
            ['id' => 16, 'name' => 'quotes-index', 'guard_name' => 'web', 'created_at' => '2018-06-04 22:35:10', 'updated_at' => '2018-06-04 22:35:10'],
            ['id' => 17, 'name' => 'quotes-add', 'guard_name' => 'web', 'created_at' => '2018-06-04 22:35:10', 'updated_at' => '2018-06-04 22:35:10'],
            ['id' => 18, 'name' => 'quotes-edit', 'guard_name' => 'web', 'created_at' => '2018-06-04 22:35:10', 'updated_at' => '2018-06-04 22:35:10'],
            ['id' => 19, 'name' => 'quotes-delete', 'guard_name' => 'web', 'created_at' => '2018-06-04 22:35:10', 'updated_at' => '2018-06-04 22:35:10'],
            ['id' => 20, 'name' => 'transfers-index', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:00:03', 'updated_at' => '2018-06-04 23:00:03'],
            ['id' => 21, 'name' => 'transfers-add', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:00:03', 'updated_at' => '2018-06-04 23:00:03'],
            ['id' => 22, 'name' => 'transfers-edit', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:00:03', 'updated_at' => '2018-06-04 23:00:03'],
            ['id' => 23, 'name' => 'transfers-delete', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:00:03', 'updated_at' => '2018-06-04 23:00:03'],
            ['id' => 24, 'name' => 'returns-index', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:20:24', 'updated_at' => '2018-06-04 23:20:24'],
            ['id' => 25, 'name' => 'returns-add', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:20:24', 'updated_at' => '2018-06-04 23:20:24'],
            ['id' => 26, 'name' => 'returns-edit', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:20:25', 'updated_at' => '2018-06-04 23:20:25'],
            ['id' => 27, 'name' => 'returns-delete', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:20:25', 'updated_at' => '2018-06-04 23:20:25'],
            ['id' => 28, 'name' => 'customers-index', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:45:54', 'updated_at' => '2018-06-04 23:45:54'],
            ['id' => 29, 'name' => 'customers-add', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:45:55', 'updated_at' => '2018-06-04 23:45:55'],
            ['id' => 30, 'name' => 'customers-edit', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:45:55', 'updated_at' => '2018-06-04 23:45:55'],
            ['id' => 31, 'name' => 'customers-delete', 'guard_name' => 'web', 'created_at' => '2018-06-04 23:45:55', 'updated_at' => '2018-06-04 23:45:55'],
            ['id' => 32, 'name' => 'suppliers-index', 'guard_name' => 'web', 'created_at' => '2018-06-05 00:10:12', 'updated_at' => '2018-06-05 00:10:12'],
            ['id' => 33, 'name' => 'suppliers-add', 'guard_name' => 'web', 'created_at' => '2018-06-05 00:10:12', 'updated_at' => '2018-06-05 00:10:12'],
            ['id' => 34, 'name' => 'suppliers-edit', 'guard_name' => 'web', 'created_at' => '2018-06-05 00:10:12', 'updated_at' => '2018-06-05 00:10:12'],
            ['id' => 35, 'name' => 'suppliers-delete', 'guard_name' => 'web', 'created_at' => '2018-06-05 00:10:12', 'updated_at' => '2018-06-05 00:10:12'],
            ['id' => 36, 'name' => 'users-index', 'guard_name' => 'web', 'created_at' => '2018-06-05 00:55:14', 'updated_at' => '2018-06-05 00:55:14'],
            ['id' => 37, 'name' => 'users-add', 'guard_name' => 'web', 'created_at' => '2018-06-05 00:55:14', 'updated_at' => '2018-06-05 00:55:14'],
            ['id' => 38, 'name' => 'users-edit', 'guard_name' => 'web', 'created_at' => '2018-06-05 00:55:14', 'updated_at' => '2018-06-05 00:55:14'],
            ['id' => 39, 'name' => 'users-delete', 'guard_name' => 'web', 'created_at' => '2018-06-05 00:55:14', 'updated_at' => '2018-06-05 00:55:14'],
            ['id' => 40, 'name' => 'setting-index', 'guard_name' => 'web', 'created_at' => '2018-06-05 01:22:35', 'updated_at' => '2018-06-05 01:22:35'],
            ['id' => 41, 'name' => 'setting-update', 'guard_name' => 'web', 'created_at' => '2018-06-05 01:22:35', 'updated_at' => '2018-06-05 01:22:35'],
            ['id' => 42, 'name' => 'warehouse-index', 'guard_name' => 'web', 'created_at' => '2018-06-05 01:24:29', 'updated_at' => '2018-06-05 01:24:29'],
            ['id' => 43, 'name' => 'warehouse-add', 'guard_name' => 'web', 'created_at' => '2018-06-05 01:24:29', 'updated_at' => '2018-06-05 01:24:29'],
            ['id' => 44, 'name' => 'warehouse-edit', 'guard_name' => 'web', 'created_at' => '2018-06-05 01:24:29', 'updated_at' => '2018-06-05 01:24:29'],
            ['id' => 45, 'name' => 'warehouse-delete', 'guard_name' => 'web', 'created_at' => '2018-06-05 01:24:29', 'updated_at' => '2018-06-05 01:24:29'],
        ]);
        //
    }
}
