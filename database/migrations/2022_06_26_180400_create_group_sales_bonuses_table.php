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
        Schema::create('group_sales_bonuses', function (Blueprint $table) {
            $table->id();
            $table->string('user_id', 25)->nullable();
            $table->string('buyer_id', 25)->nullable();
            $table->string('transaction_id', 25)->nullable();
            $table->string('profit', 15)->nullable();
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
        Schema::dropIfExists('group_sales_bonuses');
    }
};
