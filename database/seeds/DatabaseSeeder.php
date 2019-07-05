<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UsersTableSeeder::class);

        $this->call(AutorsTableSeeder::class);
        $this->call(HeadingTableSeeder::class);
        $this->call(BookTableSeeder::class);

        $this->call(BookAutorTableSeeder::class);
        $this->call(BookHeadingTableSeeder::class);
    }
}
