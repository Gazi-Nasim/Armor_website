<?php

use App\Http\Controllers\frontend\FrontendController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::controller(FrontendController::class)->group(function () {
    Route::get('/profit', 'profitproductDetails')->name('profit.detail');
    Route::get('/{slug}/details/{id}', 'productDetails')->name('product.details');
    Route::get('/{slug}/{id}', 'product')->name('products');
    Route::get('/{slug}', 'page')->name('page');
    Route::get('/', 'home')->name('home');
});
