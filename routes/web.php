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

Route::get('/', 'GenreController@index');
Route::get('/list/drama', 'GenreController@displayDramaGenre');
Route::get('/list/kids', 'GenreController@displayKidsGenre');
Route::get('/list/tvshow', 'GenreController@displayTVGenre');
Route::get('/moviedetail/{id}', 'GenreController@show');

   

   // return view('genre');
//Route::get('/home', 'HomeController@index');

