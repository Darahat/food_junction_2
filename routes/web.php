<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\CustomAdminController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductTypeController;
use App\Http\Controllers\UnitTypeController;
use App\Http\Controllers\CountriesController;

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
    return view('auth.login');
});

Route::group(['prefix'=>'admin'],function(){
    Route::get('/home', [CustomAdminController::class, 'admin_home'])->name('admin.home');;
    Route::get('/form', [CustomAdminController::class, 'add_form'])->name('admin.add_form');
    Route::get('/show_product', [CustomAdminController::class, 'show_product'])->name('admin.show_product');


});


Route::get('dashboard', [CustomAuthController::class, 'dashboard']);
Route::get('login', [CustomAuthController::class, 'index'])->name('login');
Route::post('custom-login', [CustomAuthController::class, 'customLogin'])->name('login.custom');
Route::get('registration', [CustomAuthController::class, 'registration'])->name('register-user');
Route::post('custom-registration', [CustomAuthController::class, 'customRegistration'])->name('register.custom');
Route::get('signout', [CustomAuthController::class, 'signOut'])->name('signout');

Route::get('/product_type',[ProductTypeController::class, 'index'])->name('product_type.list');
Route::get('/getTypeList2',[ProductTypeController::class, 'getList2'])->name('get.product_type.list2');
Route::post('/add_product_type',[ProductTypeController::class,'add'])->name('add.product_type');
Route::post('/updateTypeDetails2',[ProductTypeController::class, 'updateDetails2'])->name('update.product_type.details2');
Route::post('/getTypeDetails2',[ProductTypeController::class, 'getDetails2'])->name('get.product_type.details2');
Route::post('/delete_product_type',[ProductTypeController::class,'delete'])->name('delete.product_type');
Route::post('/deleteSelectedProductType',[ProductTypeController::class,'deleteSelected'])->name('delete.selected.product_type');

Route::get('/unit_type',[UnitTypeController::class, 'index'])->name('unit_type.list');
Route::get('/getTypeList',[UnitTypeController::class, 'getList'])->name('get.unit_type.list');
Route::post('/add_unit_type',[UnitTypeController::class,'add'])->name('add.unit_type');
Route::post('/getTypeDetails',[UnitTypeController::class, 'getDetails'])->name('get.unit_type.details');
Route::post('/updateTypeDetails',[UnitTypeController::class, 'updateDetails'])->name('update.unit_type.details');
Route::post('/delete_unit_type',[UnitTypeController::class,'delete'])->name('delete.unit_type');
Route::post('/deleteSelectedUnitType',[UnitTypeController::class,'deleteSelected'])->name('delete.selected.unit_type');

Route::get('/product-list',[ProductController::class, 'index'])->name('product.list');
Route::post('/add-product',[ProductController::class,'addProduct'])->name('add.product');
Route::get('/getProductList',[ProductController::class, 'getProductList'])->name('get.product.list');
Route::post('/getProductDetails',[ProductController::class, 'getProductDetails'])->name('get.product.details');
Route::post('/updateProductDetails',[ProductController::class, 'updateProductDetails'])->name('update.product.details');
Route::post('/deleteProduct',[ProductController::class,'deleteProduct'])->name('delete.product');
Route::post('/deleteSelectedProduct',[ProductController::class,'deleteSelectedProduct'])->name('delete.selected.product');