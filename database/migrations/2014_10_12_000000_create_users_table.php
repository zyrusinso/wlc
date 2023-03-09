<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('endorsers_id', 30)->nullable();
            $table->string('referred_by', 30)->nullable();
            $table->string('role', 20)->default('user')->nullable();
            $table->string('full_name', 100)->nullable();
            $table->string('first_name', 50)->nullable();
            $table->string('last_name', 50)->nullable();
            $table->string('middle_name', 50)->nullable();
            $table->string('address')->nullable();
            $table->string('email');
            $table->timestamp('email_verified_at')->nullable();
            $table->string('cp_num', 20)->nullable();
            $table->string('activation_code', 30)->nullable();
            $table->string('level', 15)->nullable();
            $table->string('tpp', 20)->nullable()->default(0);
            $table->string('cbb', 20)->nullable()->default(3);
            $table->string('business_account_counter', 5)->nullable()->default(4);
            $table->string('business_account_counter_not_ba', 10)->nullable()->default(0);
            $table->string('ba_direct_cash', 10)->nullable()->default(0);
            $table->string('not_ba_direct_cash', 10)->nullable()->default(0);
            $table->string('available_cash_bal', 10)->nullable()->default(0);
            $table->string('total_cash_bonus', 10)->nullable()->default(0);
            $table->string('password')->nullable();
            $table->rememberToken();
            $table->foreignId('current_team_id')->nullable();
            $table->string('profile_photo_path', 2048)->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('users');
    }
}; 

