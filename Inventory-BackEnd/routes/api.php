<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BarangKeluarController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Routes untuk Barang Keluar
Route::get('/barang-keluar', [BarangKeluarController::class, 'index']);
Route::get('/barang-keluar/{id}', [BarangKeluarController::class, 'show']);
Route::post('/barang-keluar', [BarangKeluarController::class, 'store']);
Route::put('/barang-keluar/{id}', [BarangKeluarController::class, 'update']);
Route::delete('/barang-keluar/{id}', [BarangKeluarController::class, 'destroy']);
Route::get('/barang-keluar-search', [BarangKeluarController::class, 'search']);

// Route test
Route::get('/test', function () {
    return response()->json(['message' => 'API is working!']);
});