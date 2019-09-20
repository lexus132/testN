<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

// disable register
Route::any('register', function(){ return redirect()->route('home'); });

Route::group([
    'prefix' => 'v',
    'as' => 'valid.'
],function(){
    Route::get('/', 'ValidatorController@index')->name('index');
    Route::post('/', 'ValidatorController@handle')->name('index');
});

Route::get('/autor/test', 'AutorController@test');

Route::get('/', 'HomeController@index')->name('home');
Route::resource('/book', 'BookController', [ 'only' => [ 'index', 'show'] ]);
Route::resource('/autor', 'AutorController', [ 'only' => [ 'index', 'show'] ]);
Route::resource('/heading', 'HeadingController', [ 'only' => [ 'index', 'show'] ]);


Route::get('/locale', 'LocalController@index')->name('locale.index');

Route::get('/mocking', 'MockingController@index')->name('mocking.index');

Route::group([
    'middleware' => 'auth',
    'prefix' => '/admin',
    'as'=>'admin.'
], function(){
    Route::resource('/book', 'BookController',[
        'except' => [ 'index', 'show']
        ]);
    Route::resource('/autor', 'AutorController',[
        'except' => [ 'index', 'show']
    ]);
    Route::resource('/heading', 'HeadingController',[
        'except' => [ 'index', 'show']
    ]);

});

Route::group([
    'prefix' => '/socket',
    'as' => 'socket.'
],function(){
    Route::get('/', 'SocketController@index')->name('index');
    Route::get('/queue', function(){
        event(new \App\Events\TesterEvent());
    })->name('event');

    Route::group([
        'prefix' => '/chat',
        'as' => 'chat.'
    ],function(){
        Route::get('/', 'SocketController@chatIndex')->name('index');
        Route::post('/send', 'SocketController@chatSend')->name('send');
    });
});

Route::group([
    'prefix' => '/cache',
    'as' => 'cache.'
],function(){
    Route::get('/','CacheController@index')->name('index');
});

Route::group([
    'prefix' => 'ev',
    'as' => 'events.'
],function(){
    Route::get('/', 'EventController@index')->name('index');
});

Route::group([
    'prefix' => '/auth',
    'as'=>'auth.'
], function(){
    Route::get('/user', [
        'as' => 'user',
        'middleware' => 'auth',
        'uses' => 'UserController@index'
    ]);
    Route::get('/admin', [
        'as' => 'admin',
        'middleware' => 'auth:admin',
        'uses' => 'AdminController@index'
    ]);

});

