<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PosSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Insert some stuff
        DB::table('pos_settings')->insert(
           array(
               'id' => 1,
               'note_customer' => 'Thank You For Shopping With Us . Please Come Again',
               'show_note' => 1,
               'show_barcode' => 1,
               'show_discount' => 1,
               'show_customer' => 1,
               'show_Warehouse' => 1,
               'show_email' => 1,
               'show_phone' => 1,
               'show_address' => 1,
               'is_printable' => 1,
           )
           
       );
    }
}
