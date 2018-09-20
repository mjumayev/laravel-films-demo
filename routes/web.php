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

Route::get('/', 'FilmController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/films', 'FilmController@index')->name('films');
Route::get('/films/film-{slug}', 'FilmController@show');
Route::get('/films/create', 'FilmController@create')->name('create');
Route::post('/films/create/add', 'FilmController@createadd')->name('create.add');
Route::post('/postcomment', 'CommentsController@store')->name('comment.store');