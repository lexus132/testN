<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

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
            $table->increments('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password');
            $table->boolean('isAdmin')->default(0);
            $table->rememberToken();
            $table->timestamps();
        });

        DB::table('users')->insert([
            'name' => 'user',
            'email' => 'user@user.com',
            'isAdmin' => 1,
            'password' => bcrypt('user'),
            'created_at' => date("Y-m-d H:i:s"),
        ]);

        for($i=2;$i<11;$i++){
            if(DB::table('users')->insert([
                'name' => "user_$i",
                'email' => "user_$i@user.com",
                'password' => bcrypt('user'),
                'created_at' => date("Y-m-d H:i:s"),
            ]))
                dump("--- user_$i : Ok");
        }
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
