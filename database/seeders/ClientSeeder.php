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
            'email' => 'walk-in-customer@gmail.com',
            'country' => 'India',
            'city' => 'Kolkata',
            'phone' => '9876543210',
            'address' => 'address',
            'created_at' => '2024-05-23 07:50:32',
            'updated_at' => '2024-05-23 07:50:32',
            'deleted_at' => null,
        ]);
    }
}
