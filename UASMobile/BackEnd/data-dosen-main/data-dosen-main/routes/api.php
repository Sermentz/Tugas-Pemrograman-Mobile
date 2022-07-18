<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\DataDosenController;

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

Route::get('/datadosen', [DataDosenController::class, 'index']);
Route::get('/datadosen/{id}', [DataDosenController::class, 'show']);
Route::post('/datadosen', [DataDosenController::class, 'store']);
Route::put('/datadosen/{id}', [DataDosenController::class, 'update']);
Route::delete('/datadosen/{id}', [DataDosenController::class, 'destroy']);
