<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClientSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('clients')->insert([
            'id' => 1,
            'user_id' => 1,
            'username' => 'Walk in Customer',
            'code' => '1',
            'status' => 1,
            'photo' => 'no_avatar.png',
            'email' => 'walk-in-customer@smartstock.in',
            'country' => 'India',
            'city' => 'Kolkata',
            'phone' => '9876543210',
            'address' => 'address',
            'created_at' => now(),
            'updated_at' => now(),
            'deleted_at' => null,
        ]);
    }
}
