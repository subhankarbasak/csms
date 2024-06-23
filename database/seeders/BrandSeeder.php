<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('brands')->insert([
            [
                'name' => 'HP',
                'description' => 'Description for Brand HP',
                'image' => 'image_default.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Tata',
                'description' => 'Description for Tata',
                'image' => 'image_default.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Double Bull',
                'description' => 'Description for Double Bull',
                'image' => 'image_default.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Ultra Tech',
                'description' => 'Description for Ultra Tech',
                'image' => 'image_default.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'JSW',
                'description' => 'Description for JSW',
                'image' => 'image_default.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Nerolack',
                'description' => 'Description for Nerolack',
                'image' => 'image_default.png',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
