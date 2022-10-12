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

Route::get('/', function () {
    return view('welcome');
});
Route::group(['middleware' => ['auth']], function () {

    Route::resource('/grupos','App\http\Controllers\GrupoController');
    Route::get('/add/user/{id}','App\http\Controllers\GrupoController@addUser');
    Route::post('/salir','App\http\Controllers\UserController@logout');
    Route::get('/post/create','App\http\Controllers\PostController@create')->name('post.create');
    Route::post('/post/store','App\http\Controllers\PostController@store')->name('post.store');
    Route::get('/showNotificaciones','App\http\Controllers\PostController@showNotificaciones');

});

// AUNQUE PARA LA AUTENTICACION SE PUEDE USAR aUTH::route
Route::post('/login','App\http\Controllers\UserController@login');


Route::post('/register','App\http\Controllers\UserController@store')->name('register.store');
Route::get('/register','App\http\Controllers\UserController@create')->name('register');

Route::get('/login','App\http\Controllers\UserController@login_vista')->name('login')->middleware('guest');

