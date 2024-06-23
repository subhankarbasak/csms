<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        $this->call([
            EmailMessagesSeeder::class,
            SmsMessageSeeder::class,
            PosSettingSeeder::class,
            PaymentMethodSeeder::class,
            CurrencySeeder::class,
            SettingsSeeder::class,
            PermissionsSeeder::class,
            RoleSeeder::class,
            UserSeeder::class,
            PermissionRoleSeeder::class,
            ClientSeeder::class,
            UnitSeeder::class,
            WarehouseSeeder::class,
            BrandSeeder::class,
            CategorySeeder::class,
        ]);
    }
}
