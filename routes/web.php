<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\IndexController;
use App\Http\Controllers\Admin\MemberController;
use App\Http\Controllers\Admin\DepartController;
use App\Http\Controllers\Admin\YardController;
use App\Http\Controllers\Admin\Ordertype1Controller;
use App\Http\Controllers\Admin\Ordertype2Controller;
use App\Http\Controllers\Admin\BilldepartController;
use App\Http\Controllers\Admin\ShipperController;
use App\Http\Controllers\Admin\MakerController;
use App\Http\Controllers\Admin\CartypeController;
use App\Http\Controllers\Admin\ColorController;
use App\Http\Controllers\Admin\StatusController;
use App\Http\Controllers\Admin\CheckdepartController;
use App\Http\Controllers\Admin\CheckfeeController;
use App\Http\Controllers\Admin\ImportController;
use App\Http\Controllers;

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

Route::prefix('admin')->group(function () {
    Route::get('login', [LoginController::class, 'index'])->name('admin.login.index');
    Route::post('login', [LoginController::class, 'login'])->name('admin.login.login');
    Route::get('logout', [LoginController::class, 'logout'])->name('admin.login.logout');
});
Route::prefix('admin')->middleware('auth:admins')->group(function () {
    Route::get('/index',[IndexController::class, 'index'])->name('admin.index');
    Route::post('/index/savemember',[IndexController::class, 'saveData'])->name('admin.index.savemember');
    Route::post('/index/deletedata',[IndexController::class, 'deleteData'])->name('admin.index.deletedata');

    Route::get('/depart',[DepartController::class, 'index'])->name('admin.depart');
    Route::post('/depart/savedata',[DepartController::class, 'saveData'])->name('admin.depart.savedata');
    Route::post('/depart/deletedata',[DepartController::class, 'deleteData'])->name('admin.depart.deletedata');

    Route::get('/yard',[YardController::class, 'index'])->name('admin.yard');
    Route::post('/yard/savedata',[YardController::class, 'saveData'])->name('admin.yard.savedata');
    Route::post('/yard/deletedata',[YardController::class, 'deleteData'])->name('admin.yard.deletedata');

    Route::get('/ordertype1',[Ordertype1Controller::class, 'index'])->name('admin.ordertype1');
    Route::post('/ordertype1/savedata',[Ordertype1Controller::class, 'saveData'])->name('admin.ordertype1.savedata');
    Route::post('/ordertype1/deletedata',[Ordertype1Controller::class, 'deleteData'])->name('admin.ordertype1.deletedata');

    Route::get('/ordertype2',[Ordertype2Controller::class, 'index'])->name('admin.ordertype2');
    Route::post('/ordertype2/savedata',[Ordertype2Controller::class, 'saveData'])->name('admin.ordertype2.savedata');
    Route::post('/ordertype2/deletedata',[Ordertype2Controller::class, 'deleteData'])->name('admin.ordertype2.deletedata');

    Route::get('/billdepart',[BilldepartController::class, 'index'])->name('admin.billdepart');
    Route::post('/billdepart/savedata',[BilldepartController::class, 'saveData'])->name('admin.billdepart.savedata');
    Route::post('/billdepart/deletedata',[BilldepartController::class, 'deleteData'])->name('admin.billdepart.deletedata');

    Route::get('/shipper',[ShipperController::class, 'index'])->name('admin.shipper');
    Route::post('/shipper/savedata',[ShipperController::class, 'saveData'])->name('admin.shipper.savedata');
    Route::post('/shipper/deletedata',[ShipperController::class, 'deleteData'])->name('admin.shipper.deletedata');

    Route::get('/maker',[MakerController::class, 'index'])->name('admin.maker');
    Route::post('/maker/savedata',[MakerController::class, 'saveData'])->name('admin.maker.savedata');
    Route::post('/maker/deletedata',[MakerController::class, 'deleteData'])->name('admin.maker.deletedata');

    Route::get('/cartype',[CartypeController::class, 'index'])->name('admin.cartype');
    Route::post('/cartype/savedata',[CartypeController::class, 'saveData'])->name('admin.cartype.savedata');
    Route::post('/cartype/deletedata',[CartypeController::class, 'deleteData'])->name('admin.cartype.deletedata');

    Route::get('/color',[ColorController::class, 'index'])->name('admin.color');
    Route::post('/color/savedata',[ColorController::class, 'saveData'])->name('admin.color.savedata');
    Route::post('/color/deletedata',[ColorController::class, 'deleteData'])->name('admin.color.deletedata');

    Route::get('/status',[StatusController::class, 'index'])->name('admin.status');
    Route::post('/status/savedata',[StatusController::class, 'saveData'])->name('admin.status.savedata');
    Route::post('/status/deletedata',[StatusController::class, 'deleteData'])->name('admin.status.deletedata');

    Route::get('/checkdepart',[CheckdepartController::class, 'index'])->name('admin.checkdepart');
    Route::post('/checkdepart/savedata',[CheckdepartController::class, 'saveData'])->name('admin.checkdepart.savedata');
    Route::post('/checkdepart/deletedata',[CheckdepartController::class, 'deleteData'])->name('admin.checkdepart.deletedata');

    Route::get('/checkfee',[CheckfeeController::class, 'index'])->name('admin.checkfee');
    Route::post('/checkfee/savedata',[CheckfeeController::class, 'saveData'])->name('admin.checkfee.savedata');
    Route::post('/checkfee/deletedata',[CheckfeeController::class, 'deleteData'])->name('admin.checkfee.deletedata');

    Route::get('/import',[ImportController::class, 'index'])->name('admin.import');
    Route::post('/import/savedata',[ImportController::class, 'saveData'])->name('admin.import.savedata');
    Route::post('/import/deletedata',[ImportController::class, 'deleteData'])->name('admin.import.deletedata');

});

Route::get('/', [Controllers\LoginController::class, 'index'])->name('login.index');
Route::post('/doLogin', [Controllers\LoginController::class, 'doLogin']);
Route::get('/logout', [Controllers\LoginController::class, 'logout'])->name('login.logout');

Route::get('/main', [Controllers\IndexController::class, 'index'])->name('main.index');


Route::get('/carreg', [Controllers\CarregController::class, 'index'])->name('carreg.index');
Route::get('/search', [Controllers\SearchController::class, 'index'])->name('search.index');
Route::get('/billdata', [Controllers\BilldataController::class, 'index'])->name('billdata.index');
Route::get('/buydata', [Controllers\BuydataController::class, 'index'])->name('buydata.index');
Route::get('/business', [Controllers\BusinessController::class, 'index'])->name('business.index');
