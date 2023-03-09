<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\UserRole;
use App\Models\UserPermission;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ProjectActivation extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'referred_by' => 'Creator',
            'endorsers_id' => 'WLC22-170322',
            'role' => 'super_admin',
            'full_name' => 'Super Admin',
            'email' => 'superadmin@gmail.com',
            'activation_code' => 'WLC-Creator',
            'email_verified_at' => now()->toDateTimeString(),
            'password' => Hash::make('wlc_superadmin#1234'),
            'level' => 0,
        ]);

        $userRoleData = [
            [
                'role' => 'product-endorsers', 
                'name'=> 'Reseller', 
                'redirect_url' => 'dashboard',
                'redirect_url_name' => 'Dashboard',
            ],
            [
                'role' => 'business-endorsers', 
                'name'=> 'Business Endorser', 
                'redirect_url' => 'dashboard',
                'redirect_url_name' => 'Dashboard',
            ],
            [
                'role' => 'user', 
                'name'=> 'User', 
                'redirect_url' => 'transactions',
                'redirect_url_name' => 'Transactions',
            ],
            [
                'role' => 'stockist', 
                'name'=> 'Stockist', 
                'redirect_url' => 'dashboard',
                'redirect_url_name' => 'Dashboard',
            ],
            [
                'role' => 'business-center', 
                'name'=> 'Business Center', 
                'redirect_url' => 'dashboard',
                'redirect_url_name' => 'Dashboard',
            ],
        ];

        collect($userRoleData)->each(function ($item) { UserRole::create($item); });

        $userPermissionData = [
            // Normal User/ new Account
            [
                'role' => 'User',
                'route_url' => 'transactions',
                'route_name' => 'Transactions',
            ],
            [
                'role' => 'User',
                'route_url' => 'store',
                'route_name' => 'Store',
            ],

            // Reseller
            [
                'role' => 'product-endorsers',
                'route_url' => 'dashboard',
                'route_name' => 'Dashboard',
            ],
            [
                'role' => 'product-endorsers',
                'route_url' => 'transactions',
                'route_name' => 'Transactions',
            ],
            [
                'role' => 'product-endorsers',
                'route_url' => 'rewards',
                'route_name' => 'Rewards',
            ],
            [
                'role' => 'product-endorsers',
                'route_url' => 'team',
                'route_name' => 'Team',
            ],

            // Business Endorsers
            [
                'role' => 'business-endorsers',
                'route_url' => 'dashboard',
                'route_name' => 'Dashboard',
            ],
            [
                'role' => 'business-endorsers',
                'route_url' => 'transactions',
                'route_name' => 'Transactions',
            ],
            [
                'role' => 'business-endorsers',
                'route_url' => 'rewards',
                'route_name' => 'Rewards',
            ],
            [
                'role' => 'business-endorsers',
                'route_url' => 'team',
                'route_name' => 'Team',
            ],
        ];
        
        collect($userPermissionData)->each(function ($item) { UserPermission::create($item); });
    }
}
