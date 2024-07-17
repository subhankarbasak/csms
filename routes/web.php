<?php

use Illuminate\Support\Facades\Route;

use App\Http\Middleware\XSS;
use App\Http\Middleware\Is_Active;
use App\Http\Middleware\Is_Admin;
use App\Http\Controllers\HomeController;
use Illuminate\Auth\Middleware\Authenticate;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PermissionsController;
use App\Http\Controllers\AccountController;
use App\Http\Controllers\AdjustmentsController;
use App\Http\Controllers\BackupController;
use App\Http\Controllers\BrandsController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\CurrencyController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DepositCategoryController;
use App\Http\Controllers\DepositController;
use App\Http\Controllers\EmailSettingController;
use App\Http\Controllers\ExpenseCategoryController;
use App\Http\Controllers\ExpenseController;
use App\Http\Controllers\LocalController;
use App\Http\Controllers\Notifications_Template;
use App\Http\Controllers\PaymentMethodController;
use App\Http\Controllers\PaymentPurchaseReturnsController;
use App\Http\Controllers\PaymentPurchasesController;
use App\Http\Controllers\PaymentSaleReturnsController;
use App\Http\Controllers\PaymentSalesController;
use App\Http\Controllers\PosController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\PurchasesController;
use App\Http\Controllers\PurchasesReturnController;
use App\Http\Controllers\QuotationsController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\SalesController;
use App\Http\Controllers\SalesReturnController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\SetupController;
use App\Http\Controllers\Sms_SettingsController;
use App\Http\Controllers\SuppliersController;
use App\Http\Controllers\TestDbController;
use App\Http\Controllers\TransfersController;
use App\Http\Controllers\UnitsController;
use App\Http\Controllers\UpdateController;
use App\Http\Controllers\WarehousesController;


// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();
Auth::routes(['register' => false]);

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware([XSS::class])->group(function () {

    Route::get('/', [App\Http\Controllers\HomeController::class, 'RedirectToLogin'])->name('RedirectToLogin');
    Route::get('switch/language/{lang}', [App\Http\Controllers\LocalController::class, 'languageSwitch'])->name('language.switch');

    //------------------------------- dashboard Admin--------------------------\\

    Route::middleware([auth::class, Is_Admin::class, Is_Active::class])->group(function () {
        Route::get('dashboard/admin', [App\Http\Controllers\DashboardController::class, 'dashboard_admin'])->name('dashboard');
        
    });



    Route::middleware([auth::class, Is_Active::class])->group(function () {
     
        Route::get('dashboard/employee', [App\Http\Controllers\DashboardController::class, 'dashboard_employee'])->name('dashboard_employee');

        // Route::prefix('inventory')->group(function() {


            Route::get('dashboard_filter/{start_date}/{end_date}', [App\Http\Controllers\DashboardController::class, 'dashboard_filter']);

            //-------------------------------  Reports ------------------------\\
            Route::prefix('reports')->group(function() {
                
                Route::get('report_profit', [ReportController::class, 'report_profit'])->name('report_profit');
                Route::get('report_profit/{start_date}/{end_date}/{warehouse}', [ReportController::class, 'report_profit_filter'])->name('report_profit_filter');

                Route::get('report_stock', [ReportController::class, 'report_stock_page'])->name('report_stock');
                Route::post('get_report_stock_datatable', [ReportController::class, 'get_report_stock_datatable'])->name('get_report_stock_datatable');

                Route::get('report_product', [ReportController::class, 'report_product'])->name('report_product');
                Route::post('get_report_product_datatable', [ReportController::class, 'get_report_product_datatable'])->name('get_report_product_datatable');

                Route::get('report_clients', [ReportController::class, 'report_clients'])->name('report_clients');
                Route::post('get_report_clients_datatable', [ReportController::class, 'get_report_clients_datatable'])->name('get_report_clients_datatable');

                Route::get('report_providers', [ReportController::class, 'report_providers'])->name('report_providers');
                Route::post('get_report_providers_datatable', [ReportController::class, 'get_report_providers_datatable'])->name('get_report_providers_datatable');
                
                Route::get('sale_report', [ReportController::class, 'sale_report'])->name('sale_report');
                Route::post('get_report_sales_datatable', [ReportController::class, 'get_report_sales_datatable'])->name('get_report_sales_datatable');
                Route::get('report_monthly_sale', [ReportController::class, 'report_monthly_sale'])->name('report_monthly_sale');

                Route::get('purchase_report', [ReportController::class, 'purchase_report'])->name('purchase_report');
                Route::post('get_report_Purchases_datatable', [ReportController::class, 'get_report_Purchases_datatable'])->name('get_report_Purchases_datatable');
                Route::get('report_monthly_purchase', [ReportController::class, 'report_monthly_purchase'])->name('report_monthly_purchase');

                Route::get('payment_sale', [ReportController::class, 'payment_sale_report'])->name('payment_sale');
                Route::post('get_payment_sale_reports_datatable', [ReportController::class, 'get_payment_sale_reports_datatable'])->name('get_payment_sale_reports_datatable');


                Route::get('payment_purchase', [ReportController::class, 'payment_purchase_report'])->name('payment_purchase');
                Route::post('get_payment_purchase_report_datatable', [ReportController::class, 'get_payment_purchase_report_datatable'])->name('get_payment_purchase_report_datatable');


                Route::get('payment_sale_return', [ReportController::class, 'payment_sale_return_report'])->name('payment_sale_return_report');

                Route::get('payment_purchase_return', [ReportController::class, 'payment_purchase_return_report'])->name('payment_purchase_return_report');
                
                Route::get('reports_quantity_alerts', [ReportController::class, 'reports_quantity_alerts'])->name('reports_quantity_alerts');
            });
            
            //------------------------------- products--------------------------\\
            Route::prefix('products')->group(function() {
                Route::resource('products', ProductsController::class);
                Route::post('get_product_datatable', [ProductsController::class, 'get_product_datatable'])->name('products_datatable');
                Route::get('show_product_data/{id}/{variant_id}', [ProductsController::class, 'show_product_data']);

                Route::get('products_by_Warehouse/{id}', [ProductsController::class, 'Products_by_Warehouse']);
                Route::get('print_labels', [ProductsController::class, 'print_labels'])->name('print_labels');
                Route::get('import_products', [ProductsController::class, 'import_products_page']);
                Route::post('import_products', [ProductsController::class, 'import_products']);

                //------------------------------- categories--------------------------\\
                Route::resource('categories', CategoriesController::class);
        
                //------------------------------- brands--------------------------\\
                Route::resource('brands', BrandsController::class);

                //------------------------------- units--------------------------\\
                Route::resource('units', UnitsController::class);
                Route::get('Get_Units_SubBase', [UnitsController::class, 'Get_Units_SubBase']);
                Route::get('Get_sales_units', [UnitsController::class, 'Get_sales_units']);
        
                //------------------------------- warehouses--------------------------\\
                Route::resource('warehouses', WarehousesController::class);
            });

            //------------------------------- adjustments--------------------------\\
            Route::resource('adjustment/adjustments', AdjustmentsController::class);

    
            //------------------------------- quotations --------------------------\\
            Route::prefix('quotation')->group(function() {
                Route::resource('quotations', QuotationsController::class);
                Route::post('get_quotations_datatable', [QuotationsController::class, 'get_quotations_datatable'])->name('get_quotations_datatable');
            });
            
            Route::post('quotations/sendQuote/email', [QuotationsController::class, 'SendEmail']);
            Route::get('quotations/generate_sale/{id}', [QuotationsController::class, 'generate_sale']);
    
            //------------------------------- purchases --------------------------\\
            Route::prefix('purchase')->group(function() {
                Route::resource('purchases', PurchasesController::class);
                Route::post('get_purchases_datatable', [PurchasesController::class, 'get_purchases_datatable'])->name('get_purchases_datatable');

                Route::get('purchases/payments/{id}', [PurchasesController::class, 'Get_Payments']);
                Route::post('purchases/send/email', [PurchasesController::class, 'Send_Email']);
                Route::get('get_Products_by_purchase/{id}', [PurchasesController::class, 'get_Products_by_purchase']);
            });
    
            //------------------------------- Sales --------------------------\\
            Route::prefix('sale')->group(function() {
                Route::resource('sales', SalesController::class);
                Route::post('get_sales_datatable', [SalesController::class, 'get_sales_datatable'])->name('sales_datatable');

                Route::post('sales/send/email', [SalesController::class, 'Send_Email']);
                Route::get('sales/payments/{id}', [SalesController::class, 'Payments_Sale']);
                Route::get('get_Products_by_sale/{id}', [SalesController::class, 'get_Products_by_sale']);
            });

            //---------------------- POS (point of sales) ----------------------\\
            //------------------------------------------------------------------\\
            Route::get('pos', [App\Http\Controllers\PosController::class, 'index'])->name('index');
            Route::post('pos/create_pos', [PosController::class, 'CreatePOS']);
            Route::get('pos/get_products_pos', [PosController::class, 'GetProductsByParametre']);
            Route::get('pos/data_create_pos', [PosController::class, 'GetELementPos']);
            Route::get('pos/autocomplete_product_pos/{id}', [PosController::class, 'autocomplete_product_pos']);
            Route::get('invoice_pos/{id}', [PosController::class, 'Print_Invoice_POS']);

            //------------------------------- transfers --------------------------\\
            Route::resource('transfer/transfers', TransfersController::class);
    
            //------------------------------- Sales Return --------------------------\\
            Route::prefix('sales-return')->group(function() {
                Route::resource('returns_sale', SalesReturnController::class);
                Route::get('returns/sale/payment/{id}', [SalesReturnController::class, 'Payment_Returns']);

                Route::get('add_returns_sale/{id}', [SalesReturnController::class, 'create_sell_return'])->name('create_sell_return');
                Route::get('edit_returns_sale/{id}/{sale_id}', [SalesReturnController::class, 'edit_sell_return'])->name('edit_sell_return');
            });
    
            //------------------------------- Purchases Return --------------------------\\
            Route::prefix('purchase-return')->group(function() {
                Route::resource('returns_purchase', PurchasesReturnController::class);
                Route::post('returns/purchase/send/email', [PurchasesReturnController::class, 'Send_Email']);
                Route::get('returns/purchase/payment/{id}', [PurchasesReturnController::class, 'Payment_Returns']);

                Route::get('add_returns_purchase/{id}', [PurchasesReturnController::class, 'create_purchase_return'])->name('create_purchase_return');
                Route::get('edit_returns_purchase/{id}/{purchase_id}', [PurchasesReturnController::class, 'edit_purchase_return'])->name('edit_purchase_return');
            });
            
            //------------------------------- payment purchase --------------------------\\
    
            Route::resource('payment/purchase', PaymentPurchasesController::class);
            Route::get('payment/purchase/get_data_create/{id}', [PaymentPurchasesController::class, 'get_data_create']);
            Route::post('payment/purchase/send/email', [PaymentPurchasesController::class, 'SendEmail']);
    
            //------------------------------- payment sale --------------------------\\
    
            Route::resource('payment/sale', PaymentSalesController::class);
            Route::get('payment/sale/get_data_create/{id}', [PaymentSalesController::class, 'get_data_create']);
            Route::post('payment/sale/send/email', [PaymentSalesController::class, 'SendEmail']);
    
            //------------------------------- Payment Sale Returns --------------------------\\
    
            Route::resource('payment_returns_sale', PaymentSaleReturnsController::class);
            Route::get('payment/returns_sale/get_data_create/{id}', [PaymentSaleReturnsController::class, 'get_data_create']);
            Route::post('payment/returns_sale/send/email', [PaymentSaleReturnsController::class, 'SendEmail']);

            //------------------------------- Payments Purchase Returns --------------------------\\
    
            Route::resource('payment_returns_purchase', PaymentPurchaseReturnsController::class);
            Route::get('payment/returns_purchase/get_data_create/{id}', [PaymentPurchaseReturnsController::class, 'get_data_create']);
            Route::post('payment/returns_purchase/send/email', [PaymentPurchaseReturnsController::class, 'SendEmail']);

            //------------------------------- suppliers --------------------------\\
    
             Route::resource('people/suppliers', SuppliersController::class);
             Route::post('get_suppliers_datatable', [SuppliersController::class, 'get_suppliers_datatable'])->name('get_suppliers_datatable');

             Route::post("suppliers/delete/by_selection", [SuppliersController::class, "delete_by_selection"]);
             Route::get('get_provider_debt_total/{id}', [SuppliersController::class, 'get_provider_debt_total']);
             Route::post('providers_pay_due', [SuppliersController::class, 'providers_pay_due']);

             Route::get('get_provider_debt_return_total/{id}', [SuppliersController::class, 'get_provider_debt_return_total']);
             Route::post('providers_pay_return_due', [SuppliersController::class, 'providers_pay_return_due']);

             //------------------------------- clients --------------------------\\
    
             Route::resource('people/clients', ClientController::class);
             Route::post('get_clients_datatable', [ClientController::class, 'get_clients_datatable'])->name('clients_datatable');

             Route::get('get_client_plafond/{id}', [ClientController::class, 'get_client_plafond']);
             Route::get('get_client_debt_total/{id}', [ClientController::class, 'get_client_debt_total']);
             Route::get('get_client_debt_return_total/{id}', [ClientController::class, 'get_client_debt_return_total']);

             Route::post('clients_pay_due', [ClientController::class, 'clients_pay_due']);
             Route::post('clients_pay_return_due', [ClientController::class, 'clients_pay_return_due']);

             Route::get('import_clients', [ClientController::class, 'import_clients_page'])->name('import_clients');
             Route::post('import_clients', [ClientController::class, 'import_clients']);
            // Subhankar Added on 16.07.2024 Customer profile sales report view
             Route::post('get_customer_report_sales_datatable', [ClientController::class, 'get_customer_report_sales_datatable'])->name('get_customer_report_sales_datatable');

             //------------------------------- users & permissions --------------------------\\
            Route::prefix('user-management')->group(function() {
                Route::resource('users', UserController::class);
                Route::post('assignRole', [UserController::class, 'assignRole']);

                Route::resource('permissions', PermissionsController::class);
            });
            //-------------------------------  --------------------------\\
    
            //------------------------------- Profile --------------------------\\
            //----------------------------------------------------------------\\
            Route::put('updateProfile/{id}', [ProfileController::class, 'updateProfile']);
            Route::resource('profile', ProfileController::class);

            //-------------------------------  Print & PDF ------------------------\\
    
            Route::get('Sale_PDF/{id}', [SalesController::class, 'Sale_PDF']);
            Route::get('Quote_PDF/{id}', [QuotationsController::class, 'Quotation_pdf']);
            Route::get('Purchase_PDF/{id}', [PurchasesController::class, 'Purchase_pdf']);
            Route::get('Payment_Purchase_PDF/{id}', [PaymentPurchasesController::class, 'Payment_purchase_pdf']);
            Route::get('payment_Sale_PDF/{id}', [PaymentSalesController::class, 'payment_sale']);
            Route::get('return_sale_pdf/{id}', [SalesReturnController::class, 'Return_pdf']);
            Route::get('return_purchase_pdf/{id}', [PurchasesReturnController::class, 'Return_pdf']);
            Route::get('payment_return_sale_pdf/{id}', [PaymentSaleReturnsController::class, 'payment_return']);
            Route::get('payment_return_purchase_pdf/{id}', [PaymentPurchaseReturnsController::class, 'payment_return']);
            // Sale details pages pdf download and print
            Route::get('api/v1/pdf/{id}', [SalesController::class, 'pdf']);

            //------------------------------- SEND SMS --------------------------\\
            Route::post('sales_send_sms', [SalesController::class, 'Send_SMS']);
            Route::post('purchase_send_sms', [PurchasesController::class, 'Send_SMS']);
            Route::post('quotation_send_sms', [QuotationsController::class, 'Send_SMS']);
            Route::post('purchase_payment_send_sms', [PaymentPurchasesController::class, 'Send_SMS']);
            Route::post('sell_payment_send_sms', [PaymentSalesController::class, 'Send_SMS']);
            Route::post('sell_return_payment_send_sms', [PaymentSaleReturnsController::class, 'Send_SMS']);

            //------------------------------- Settings --------------------------\\
            //----------------------------------------------------------------\\

            Route::prefix('settings')->group(function () {
                Route::resource('system_settings', SettingController::class);
                Route::resource('currency', CurrencyController::class);
                Route::resource('backup', BackupController::class);
                Route::resource('email_settings', EmailSettingController::class);
                Route::get('pos_settings', [SettingController::class, 'get_pos_Settings']);
                Route::put('pos_settings/{id}', [SettingController::class, 'update_pos_settings']);

                 //------------------------------- SMS Settings ------------------------\\


                 Route::get('sms_settings', [Sms_SettingsController::class, 'get_sms_config']);
                 Route::put('update_Default_SMS', [Sms_SettingsController::class, 'update_Default_SMS']);
                 Route::post('update_twilio_config', [Sms_SettingsController::class, 'update_twilio_config']);
                 Route::post('update_nexmo_config', [Sms_SettingsController::class, 'update_nexmo_config']);
                 Route::post('update_infobip_config', [Sms_SettingsController::class, 'update_infobip_config']);

                 // notifications_template
                 Route::get('sms_template', [Notifications_Template::class, 'get_sms_template']);
                 Route::put('update_sms_body', [Notifications_Template::class, 'update_sms_body']);

                 Route::get('emails_template', [Notifications_Template::class, 'get_emails_template']);
                 Route::put('update_custom_email', [Notifications_Template::class, 'update_custom_email']);
                 
                // update_backup_settings
                 Route::post('update_backup_settings', [SettingController::class, 'update_backup_settings']);

            });

            Route::get('GenerateBackup', [BackupController::class, 'GenerateBackup']);
            
            //------------------------------- clear_cache --------------------------\\

            Route::get("clear_cache", [SettingController::class, "Clear_Cache"]);



        //------------------------------- Accounting -----------------------\\
        //----------------------------------------------------------------\\
        Route::prefix('accounting')->group(function () {
            Route::resource('account', AccountController::class);
            Route::resource('deposit', DepositController::class);
            Route::resource('expense', ExpenseController::class);
            Route::resource('expense_category', ExpenseCategoryController::class);
            Route::resource('deposit_category', DepositCategoryController::class);
            Route::resource('payment_methods', PaymentMethodController::class);

            Route::post("account/delete/by_selection", [AccountController::class, "delete_by_selection"]);
            Route::post("deposit/delete/by_selection", [DepositController::class, "delete_by_selection"]);
            Route::post("expense/delete/by_selection", [ExpenseController::class, "delete_by_selection"]);
            Route::post("expense_category/delete/by_selection", [ExpenseCategoryController::class, "delete_by_selection"]);
            Route::post("deposit_category/delete/by_selection", [DepositCategoryController::class, "delete_by_selection"]);
            Route::post("payment_methods/delete/by_selection", [PaymentMethodController::class, "delete_by_selection"]);
        });

    });


      //------------------------------- url_invoice_sms--------------------------\\
      Route::get('sell_url/{id}', [SalesController::class, 'Sale_PDF']);
      Route::get('purchase_url/{id}', [PurchasesController::class, 'Purchase_pdf']);
      Route::get('quotation_url/{id}', [QuotationsController::class, 'Quotation_pdf']);    


    // End XSS middleware 
});
//Reoptimized class loader:
Route::get('/optimize', function() {
    $exitCode = Artisan::call('optimize');
    return '<h1>Reoptimized class loader</h1>';
});

// Clear All at once

Route::get('/clear', function() {

    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    Artisan::call('route:clear');

    return "Cleared!";

});
