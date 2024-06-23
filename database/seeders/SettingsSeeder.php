<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('settings')->insert([
            'id' => 1,
            'currency_id' => 1,
            'email' => 'admin@example.com',
            'app_name' => 'CSMS',
            'CompanyName' => 'Lightangle Technologies',
            'CompanyPhone' => '9876543210',
            'CompanyAdress' => 'Kolkata, West Bengal',
            'logo' => 'logo-default.svg',
            'footer' => 'CSMS - Customize Stock Management System',
            'developed_by' => 'Lightangle Technologies',
            'default_language' => 'en',
            'default_sms_gateway' => 'twilio',
            'symbol_placement' => 'before',
            'created_at' => now(),
            'updated_at' => now(),
            'deleted_at' => null,
        ]);
    }
}
