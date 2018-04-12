<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//List Posts
Route::get('posts','PostController@index');
//get individual
Route::get('post/{id}','PostController@show');
//Create New
Route::post('post','PostController@store');
// Update
Route::put('post','PostController@store');
//Delete
Route::delete('post/{id}','PostController@destroy');
