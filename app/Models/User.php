<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasFactory, Notifiable, HasRoles;
    protected $dates = ['deleted_at'];

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    // protected $fillable = [
    //     'name',
    //     'email',
    //     'password',
    // ];
    protected $fillable = [
        'username', 'email', 'password', 'status', 'avatar','role_users_id','is_all_warehouses'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }


    public function RoleUser()
	{
        return $this->hasone('Spatie\Permission\Models\Role','id',"role_users_id");
    }
    
    public function assignedWarehouses()
    {
        return $this->belongsToMany('App\Models\Warehouse');
    }

    public static function getUserNameById($id)
    {
        $user = self::find($id);
        return $user ? $user->username : 'User not found';
    }
}
