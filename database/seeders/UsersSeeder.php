<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        DB::table('users')->insert([
            [
                'id' => 1,
                'name' => 'admin',
                'email' => 'admin@gmail.com',
                'password' => '$2y$10$KOKg3BOPxpj.u7UPLB439uXGqn5WpTnUhZO1XQYeiuliE5huwZOEa',
                'remember_token' => 'fvzpWlil1d8kZL0hIXgjwHeyuksV5WajQQON5sZUbTYslIyf9lpg4PMWuq6k',
                'phone' => '12112',
                'company_name' => 'lioncoders',
                'role_id' => 1,
                'biller_id' => 0,
                'warehouse_id' => 0,
                'is_active' => 1,
                'is_deleted' => 0,
                'created_at' => '2018-06-02 03:54:15',
                'updated_at' => '2023-02-16 10:12:51'
            ],
            [
                'id' => 2,
                'name' => 'staff',
                'email' => 'anda@gmail.com',
                'password' => '$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm',
                'remember_token' => '5rvuIyVSIXn3PcUJAUF0RiTG13XS2DS7JHwM4QObTmt598lHV3mMipFif2pB',
                'phone' => '3123',
                'company_name' => '',
                'role_id' => 4,
                'biller_id' => 5,
                'warehouse_id' => 1,
                'is_active' => 1,
                'is_deleted' => 0,
                'created_at' => '2018-07-02 01:38:08',
                'updated_at' => '2018-10-23 22:11:13'
            ],
            [
                'id' => 3,
                'name' => 'subhankar',
                'email' => 'manager@gmail.com',
                'password' => '$2y$10$JyO3epyIla2R3FBxHVp/CurfPseRbJivphGhHQNI6xhlgQAgcmLNy',
                'remember_token' => NULL,
                'phone' => '9876543210',
                'company_name' => 'no',
                'role_id' => 7,
                'biller_id' => 23,
                'warehouse_id' => 1,
                'is_active' => 1,
                'is_deleted' => 0,
                'created_at' => '2024-05-18 11:39:15',
                'updated_at' => '2024-05-18 11:40:21'
            ],
        ]);
    }
}
