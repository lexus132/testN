<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Faker;

class MockingController extends Controller
{
    public $data = [];

    public function index(Request $request)
    {

        header('Content-Type: text/html; charset=utf-8');

        $faker = Faker\Factory::create('ru_RU');

        echo '<br>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>';
        echo $faker->text;
        echo '<br>';
        echo $faker->word;
        echo '<br>';
        echo $faker->paragraph;
        echo '<br>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>';
        echo $faker->randomDigit;
        echo '<br>';
        echo $faker->numberBetween(1,100);
        echo '<br>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>';
        echo $faker->userName;
        echo '<br>';
        echo $faker->name;
        echo '<br>';
        echo $faker->lastName;
        echo '<br>';
        echo $faker->firstNameFemale;
        echo '<br>';
        echo $faker->firstNameMale;
        echo '<br>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>';
        echo $faker->address;
        echo '<br>';
        echo $faker->city;
        echo '<br>';
        echo $faker->country;
        echo '<br>';
        echo $faker->countryCode;
        echo '<br>';
        echo $faker->countryISOAlpha3;
        echo '<br>';
        echo $faker->region;
        echo '<br>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>';
        echo $faker->year;
        echo '<br>';
        echo $faker->year('now');
        echo '<br>';
        echo '<br>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>';
        echo $faker->email;
        echo '<br>';
        echo $faker->userAgent;
        echo '<br>';
        echo $faker->domainName;
        echo '<br>';
        echo $faker->url;
        echo '<br>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>';
        dump( $faker->creditCardNumber );
        dump( $faker->creditCardDetails );
        dump( $faker->creditCardExpirationDate );
        dump( $faker->creditCardExpirationDateString );
        dump( $faker->creditCardType );



        exit;
    }
}
