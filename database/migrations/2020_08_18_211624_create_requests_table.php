<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('requests', function (Blueprint $table) {
            $table->id();
            $table->string('connectionReceiver');
            $table->string('connectionSender');
            $table->string('senderName');
            $table->string('senderMarital')->nullable();
            $table->string('senderJob')->nullable();
            $table->string('senderEdu')->nullable();
            $table->string('senderLocation')->nullable();
            $table->string('senderPic');
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
        Schema::dropIfExists('requests');
    }
}
