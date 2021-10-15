<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/myapi/testing', function(){
    return 'Working';
});

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::get('/testingartisan', function(){
   try{
    // \Artisan::call('storage:link');
    // sleep(2);
    // \Artisan::call('migrate');
    \Artisan::call('config:clear');
    sleep(2);
    \Artisan::call('cache:clear');
    sleep(2);
    \Artisan::call('route:clear');
    sleep(2);
    \Artisan::call('view:clear');
       echo "Artisan commands was successful.";
   } catch (Exception $e) {
       echo 'Result: '.$e;
   }
});