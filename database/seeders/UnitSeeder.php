<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UnitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('units')->insert([
            [
                'id' => 1,
                'name' => 'Piece',
                'ShortName' => 'pc',
                'base_unit' => null,
                'operator' => '*',
                'operator_value' => 1,
                'created_at' => now(),
                'updated_at' => now(),
                'deleted_at' => null,
            ],
            [
                'id' => 2,
                'name' => 'Gram',
                'ShortName' => 'gm',
                'base_unit' => null,
                'operator' => '/',
                'operator_value' => 1000,
                'created_at' => now(),
                'updated_at' => now(),
                'deleted_at' => null,
            ],
            [
                'id' => 3,
                'name' => 'Kilogram',
                'ShortName' => 'kg',
                'base_unit' => null,
                'operator' => '*',
                'operator_value' => 1,
                'created_at' => now(),
                'updated_at' => now(),
                'deleted_at' => null,
            ],
            [
                'id' => 4,
                'name' => 'Dozen',
                'ShortName' => 'dozen',
                'base_unit' => null,
                'operator' => '*',
                'operator_value' => 1,
                'created_at' => now(),
                'updated_at' => now(),
                'deleted_at' => null,
            ],
        ]);
    }
}
