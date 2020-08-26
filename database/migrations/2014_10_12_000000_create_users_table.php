<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('sex');
            $table->string('DOB');
            $table->string('ID_Card');
            $table->string('WOFBI_Cert');
            $table->string('profile_Pic');
            $table->string('connection_status');
            $table->integer('connection_id')->nullable();
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('myMaritalStatus')->nullable();
            $table->string('myQualification')->nullable();
            $table->string('myEmploymentStatus')->nullable();
            $table->string('myLocation')->nullable();
            $table->string('myStatOfOrigin')->nullable();
            $table->string('myGenotype')->nullable();
            $table->string('mateAge')->nullable();
            $table->string('mateMaritalStatus')->nullable();
            $table->string('mateQualification')->nullable();
            $table->string('mateEmploymentStatus')->nullable();
            $table->string('mateLocation')->nullable();
            $table->string('mateStatOfOrigin')->nullable();
            // $table->string('mateGenotype')->nullable();
            // $table->string('api_token', 80)->unique()->nullable()->default(null);
            $table->softDeletes();
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
