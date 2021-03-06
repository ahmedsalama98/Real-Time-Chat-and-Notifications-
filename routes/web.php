<?php

use Illuminate\Support\Facades\Auth;
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





Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/public-chanel', [App\Http\Controllers\HomeController::class, 'publicChanel']);
Route::get('/notify', [App\Http\Controllers\HomeController::class, 'notify'])->name('notify');
Route::post('/notify', [App\Http\Controllers\HomeController::class, 'notifyStore'])->name('notify.store');

Route::get('/chat', [App\Http\Controllers\MessageController::class, 'index'])->name('chat');
Route::post('/chat/store', [App\Http\Controllers\MessageController::class, 'store'])->name('chat.store');






