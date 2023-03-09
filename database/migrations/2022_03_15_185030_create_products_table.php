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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('category_id', 15)->nullable();
            $table->string('sub_category_id', 15)->nullable();
            $table->string('product_name', 60)->nullable();
            $table->string('description', 255)->nullable();
            $table->string('packaging', 50)->nullable();
            $table->string('packaging_type', 35)->nullable();
            $table->string('raw_price', 15)->nullable();
            $table->string('srp', 15)->nullable();
            $table->string('product_code', 35)->nullable();
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
        Schema::dropIfExists('products');
    }
};