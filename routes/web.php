<?php

use Illuminate\Support\Facades\Auth;

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
    return view('welcome');
})->name('index');

Auth::routes();
// Route::get('temp',function(){
// 	Auth::loginUsingId(1);
// });

Route::get('/home', 'HomeController@index')->name('home');

Route::get('mcnscn','MachineScannerController@add');
Route::get('mcnscn/all','MachineScannerController@index')->name('allinputdata');
Route::get('mcnscn/dlt','MachineScannerController@deleteRecord')->name('deleteRecord');
Route::get('mcnscn/trnct','MachineScannerController@truncate')->name('truncate');

Route::get('/dashboard','HomeController@dashboard')->name('dashboard'); //will change later

//User //Employee
Route::resource('users','UserController');
Route::post('employeeIdChcek','UserController@employeeIdChcek')->name('employeeIdChcek');
Route::post('empolyeeEmailCheck','UserController@empolyeeEmailCheck')->name('empolyeeEmailCheck');
Route::post('employeePhnCheck','UserController@employeePhnCheck')->name('employeePhnCheck');
Route::post('getUserDataById','UserController@getUserDataById')->name('getUserDataById');

//Device
Route::resource('devices','DeviceController');
Route::get('devices.all','DeviceController@getAllPrinters')->name('devices.all');
Route::post('checkDeviceId','DeviceController@checkDeviceId')->name('checkDeviceId');

//Machine
Route::resource('machines','MachineController');
Route::post('checkMachineId','MachineController@checkMachineId')->name('checkMachineId');

//Shift
Route::resource('shifts','ShiftController');

// group name 
Route::get('group/create','GroupController@create');
Route::post('group/create','GroupController@store');
Route::get('group/view','GroupController@view');
Route::get('group/destroy/{id}','GroupController@destroy');

//Item
Route::resource('items','ItemController');
Route::post('checkItemCode','ItemController@checkItemCode')->name('checkItemCode');
//InvoiceInfo
Route::resource('invoiceinfo','InvoiceInfoController');
Route::get('invoice/all','InvoiceController@index')->name('allinvoice');
Route::get('invoiceAjax','InvoiceController@ajax')->name('invoiceAjax');
Route::post('getInvoiceDataById','InvoiceController@getInvoiceDataById')->name('getInvoiceDataById');
//Item report
Route::get('item/all','ItemController@all')->name('allitem');
Route::get('itemAjax','ItemController@ajax')->name('ajaxItem');
Route::post('getItemDataById','ItemController@getItemDataById')->name('getItemDataById');

Route::get('activitylog','ActivityLogController@index')->name('activitylog.index');
Route::get('activitylogajax','ActivityLogController@ajax')->name('activitylog.ajax');

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Front end

//Daily Shift Details
Route::post('postdailyShift','DailyShiftController@store')->name('postdailyShift');
Route::get('dailyshift','DailyShiftController@index')->name('dailyshift');
Route::get('dailyshift/{id}/edit','DailyShiftController@edit')->name('dailyshiftEdit');
Route::put('updateDailyShift/{id}','DailyShiftController@update')->name('updateDailyShift');
Route::post('getItemDetailsByGroupName','ItemController@getItemDetailsByGroupName')->name('getItemByGrName');


Route::get('getDailyShiftDetailsByMachine/{machine}','DailyShiftController@getDailyShiftDetailsByMachine')->name('getDailyShiftDetailsByMachine');

//Single machine table
Route::get('allmachine','MachineScreenController@allmachine')->name('allmachine');
Route::get('allmachine/{id}','MachineScreenController@singlemachine')->name('singlemachine');

//barcode
Route::post('generateBarcode','BarcodeController@store')->name('generateBarcode');
Route::post('generateBarcodeweb','BarcodeController@storeweb')->name('generateBarcodeweb'); /*safwan */

Route::post('getCurrentBarcodedata','ReprintBarcodeController@getCurrentBarcodedata')->name('getCurrentBarcodedata');
Route::post('requestToReprintBarcode','ReprintBarcodeController@requestToReprintBarcode')->name('requestToReprintBarcode');

Route::get('merged_barcde','BarcodeController@mergeBarcode')->name('merged_barcde');
Route::get('allmachine/reprint-barcode/{a}/{b}/{c}','BarcodeController@BarcodeReprint')->name('BarcodeReprint');

//Stock in
Route::get('stockin','ProductStockInController@add');
Route::get('stockin-hand','ProductStockInController@stockinCreate');
Route::post('stockin_m_store','ProductStockInController@stockinStore');
Route::get('onload-stockin-m-datas','ProductStockInController@OnloadstockinCheck');
Route::get('report/stockin','ProductStockInController@stockinReport');
Route::post('report/stockin/result','ProductStockInController@stockinReportResult');
Route::get('report/store','ProductStockInController@storeReport');

//Temp Stockout
Route::get('tempstockout','TemporaryStockoutController@stockout');
Route::get('stockouts','StockoutController@index')->name('stockouts');
Route::get('stockouts/{ref_no}','StockoutController@show')->name('singleStockout');
Route::post('placeorder','StockoutController@store')->name('placeorder');

//Sales order
Route::post('tempSalesOrder','StockoutController@tempSalesOrder')->name('tempSalesOrder');


//Hand held routes
Route::get('hand-held-section','HandHeldController@handHeldSection')->name('hand-held-section');
Route::get('scanners','HandHeldController@showallscanner')->name('scanners');
Route::get('scanners/{scanner_id}','HandHeldController@all')->name('handheldAllData');
Route::get('handheld/{scanner_id}/{sales_order}','HandHeldController@singleSalesOrder')->name('singleSalesOrder');
Route::get('getSalesOrders','HandHeldController@getSalesOrders')->name('getSalesOrders');
Route::get('getCurrentSalesOrder','HandHeldController@getCurrentSalesOrder')->name('getCurrentSalesOrder');


Route::get('getAllBarcodeBySalesOrder/{sales_order}','HandHeldController@getAllBarcodeBySalesOrder')->name('getAllBarcodeBySalesOrder');
Route::post('deleteScannedBarcode','HandHeldController@deleteScannedBarcode')->name('deleteScannedBarcode');

Route::get('scannedBarcode','HandHeldController@scannedBarcode')->name('scannedBarcode');

//Invoice
Route::get('invoice/{sales_order}','InvoiceController@invoice')->name('generateInvoice');
Route::get('invoicedownload/{sales_order}','InvoiceController@downloadinvoice')->name('downloadgeneratedInvoice');


Route::get('pdfstream/{link?}','BarcodeController@pdfstream')->name('pdfstream');
Route::get('reprintpdfstream/{link?}','ReprintBarcodeController@pdfstream')->name('reprintpdfstream');


//Test routes
//Temp groupby chekc
Route::get('groupby','StockoutController@groupby');
Route::get('testinvoice','TestController@invoice');
Route::get('downloadtestinvoice','TestController@downloadinvoice')->name('downloadinvoice');
Route::get('testBarcode','TestController@generateBarcode');
Route::get('getLatestSerialNo','TestController@getLatestSerialNo');
// Route::get('getDailyShiftDetailsByMachine/machine','DailyShiftController@getDailyShiftDetailsByMachine/machine');
Route::get('print','TestController@printtoprinter');
Route::post('test','BarcodeController@test');
Route::get('demo','TestController@demo');

Route::get('report/production/summary', 'InvoiceController@ReportProductionSumm');
Route::post('report/production/summary', 'InvoiceController@ReportProductionSummStore');
Route::get('report/production/details', 'InvoiceController@ReportProductionDetails');


// sell section //
Route::resource('orderref','OrderRefController');

