<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GeneralSettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('general_settings')->insert([
            'id' => 1,
            'site_title' => 'Inventory Management System',
            'site_logo' => '20220905125905.png',
            'is_rtl' => 0,
            'currency' => '1',
            'package_id' => 0,
            'subscription_type' => NULL,
            'staff_access' => 'own',
            'date_format' => 'd-m-Y',
            'developed_by' => 'Lightangle Technologies',
            'invoice_format' => 'standard',
            'decimal' => 2,
            'state' => 1,
            'theme' => 'default.css',
            'created_at' => '2024-05-14 06:43:11',
            'updated_at' => '2023-06-16 14:12:32',
            'currency_position' => 'prefix',
            'expiry_date' => '2030-01-01',
            'is_zatca' => 0,
            'company_name' => '',
            'gst_registration_number' => '980980',
            'without_stock' => NULL,
            'modules' => NULL
        ]);
    }
}
