<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GeneralSetting extends Model
{
    use HasFactory;
    
    protected $table = 'general_settings';

    // Fillable fields if you plan on using mass assignment
    protected $fillable = [
        'site_title',
        'site_logo',
        'is_rtl',
        'currency',
        'package_id',
        'subscription_type',
        'staff_access',
        'date_format',
        'developed_by',
        'invoice_format',
        'decimal',
        'state',
        'theme',
        'currency_position',
        'expiry_date',
        'is_zatca',
        'company_name',
        'vat_registration_number',
        'without_stock',
        'modules',
    ];
}
