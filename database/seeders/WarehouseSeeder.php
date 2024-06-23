<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class WarehouseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('warehouses')->insert([
            'id' => 1,
            'name' => 'Shop 1',
            'city' => 'Kolkata',
            'mobile' => '9876543210',
            'zip' => '1000',
            'email' => 'shop1@gmail.com',
            'country' => 'India',
            'created_at' => now(),
            'updated_at' => now(),
            'deleted_at' => null,
        ]);
    }
}
