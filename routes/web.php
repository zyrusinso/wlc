<?php

use Illuminate\Support\Facades\Route;

if (App::environment('production')) {
    URL::forceScheme('https');
}

Route::get('/', function () {
    return redirect(route('login'));
})->name('/');

Route::get('/activate/project', [App\Http\Controllers\ActivateProject::class, 'activate']);
Route::get('/user/change-password', [App\Http\Controllers\ChangePassword::class, 'index'])->name('user.pass');
Route::post('/user/change-password', [App\Http\Controllers\ChangePassword::class, 'update'])->name('user.pass.update');

Route::namespace('App\Http\Livewire')->group(function () {
    Route::middleware(['auth', 'accessrole', 'verified', 'locationVerified', 'userVerified'])->group(function () {
        Route::get('/dashboard', HomeComponent::class)->name('dashboard');
        Route::get('/team', TeamComponent::class)->name('team');
        Route::get('/transactions', TransactionComponent::class)->name('transactions');
        // Route::get('/rewards', RewardComponent::class)->name('rewards');
        Route::get('/store', StoreComponent::class)->name('store');
        Route::get('/code', GenerateCode::class)->name('code');

        // User
        Route::get('/user-permissions', UserPermissions::class)->name('user-permissions');
        Route::get('/roles', UserRoles::class)->name('roles');
        
        // Product
        Route::get('/products', ProductComponent::class)->name('products');
        Route::get('/products-category', ProductCategoryComponent::class)->name('products-category');
        Route::get('/products-sub-category', ProductSubCategoryComponent::class)->name('products-sub-category');

        // Group/ Sales Bonus and Team Sales Bonus
        Route::get('/group-sales-bonus', Rewards\GroupSalesBonusComponent::class)->name('group-sales-bonus');
        Route::get('/team-sales-bonus', Rewards\TeamSalesBonusComponent::class)->name('team-sales-bonus');
    });

    Route::view('/home', 'home')->name('home');
    Route::get('/team/{id}', TeamViewComponent::class)->name('team.index');

    Route::get('/verify-location', VerifyLocation::class)->name('verify.location');
});