<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('categories')->insert([
            [
                'code' => 'Cement',
                'name' => 'Cement',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'Steel Bars',
                'name' => 'Steel Bars',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'Paints',
                'name' => 'Paints',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'Wall Puttys',
                'name' => 'Wall Puttys',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'Paint Rollers',
                'name' => 'Paint Rollers',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'Paint Brushes',
                'name' => 'Paint Brushes',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'Wall Primer',
                'name' => 'Wall Primer',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'Black Papers',
                'name' => 'Black Papers',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'Red Papers',
                'name' => 'Red Papers',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);

    }
}
