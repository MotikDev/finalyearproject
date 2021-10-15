<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('/myapi/login', 'Api\LoginController@login');
Route::post('/myapi/register', 'Api\RegisterController@register');
Route::middleware('auth:api')->post('/myapi/updateprofile', 'Api\UpdateProfileDetails@updateP');
Route::middleware('auth:api')->post('/myapi/attachmentanswers', 'Api\OppositeController@attachedStyle');
Route::middleware('auth:api')->post('/myapi/checkprofile', 'Api\OppositeController@checkSearchProfile');


Route::middleware('auth:api')->post('/myapi/request/save', 'Api\OppositeController@requestSetter');
Route::middleware('auth:api')->get('/myapi/requests', 'Api\OppositeController@requestsGetter');

Route::middleware('auth:api')->post('/myapi/renderRequests', 'Api\OppositeController@requestRendered');
Route::middleware('auth:api')->post('/myapi/moreprofiledetails', 'Api\OppositeController@moreDetails');
Route::middleware('auth:api')->post('/myapi/rejectrequest', 'Api\OppositeController@rejectedRequest');
Route::middleware('auth:api')->post('/myapi/connectme', 'Api\OppositeController@connectUsers');

Route::middleware('auth:api')->get('/myapi/loadspouse', 'Api\OppositeController@loadSpouseDetails');
Route::middleware('auth:api')->post('/myapi/disconnectme', 'Api\OppositeController@disconnectMyAccount');



Route::middleware('auth:api')->post('/myapi/sendchatmessage', 'Api\OppositeController@saveMessage');
Route::middleware('auth:api')->get('/myapi/allchats', 'Api\OppositeController@getMessages');
