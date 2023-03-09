<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('codes', function (Blueprint $table) {
            $table->id();
            $table->string('category_id', 20)->nullable();
            $table->string('sub_category_id', 15)->nullable();
            $table->string('code', 35)->nullable();
            $table->string('status', 35)->nullable();
            $table->string('product_name', 60)->nullable();
            $table->string('product_id', 15)->nullable();
            $table->string('product_code', 20)->nullable();
            $table->string('category', 35)->nullable();
            $table->string('user_id', 25)->nullable();
            $table->string('date_used', 50)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('codes');
    }
};