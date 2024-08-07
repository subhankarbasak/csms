<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Imports\ClientImport;
use App\Models\User;
use App\Models\Client;
use App\Models\AgentCommercial;
use App\Models\Sale;
use App\Models\PaymentSale;
use App\Models\PaymentSaleReturns;
use App\Models\SaleReturn;
use Carbon\Carbon;
use App\Models\PaymentMethod;
use App\Models\Account;
use Excel;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use DataTables;
use App\Helpers\helpers;
use DB;
use Auth;
use App\Models\Warehouse;
use App\Models\UserWarehouse;

class ClientController extends Controller
{

    protected $currency;
    protected $symbol_placement;

    public function __construct()
    {
        $helpers = new helpers();
        $this->currency = $helpers->Get_Currency();
        $this->symbol_placement = $helpers->get_symbol_placement();

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $user_auth = auth()->user();
		if ($user_auth->can('client_view_all') || $user_auth->can('client_view_own')){

            $payment_methods = PaymentMethod::where('deleted_at', '=', null)->orderBy('id', 'desc')->get(['id','title']);

            return view('clients.client_list', compact('payment_methods'));

        }
        return abort('403', __('You are not authorized'));

    }



    public function get_clients_datatable(Request $request)
    {

        $user_auth = auth()->user();
        if (!$user_auth->can('client_view_all') && !$user_auth->can('client_view_own')){
            return abort('403', __('You are not authorized'));
        }else{

            $columns_order = array( 
                0 => 'id', 
                3 => 'code', 
                4 => 'username',
            );

            $start = $request->input('start');
            $order = 'clients.'.$columns_order[$request->input('order.0.column')];
            $dir = $request->input('order.0.dir');

            $clients_data = Client::where('deleted_at', '=', null)
            ->where(function ($query) use ($user_auth) {
                if (!$user_auth->can('client_view_all')) {
                    return $query->where('user_id', '=', $user_auth->id);
                }
            })

            // Search With Multiple Param
            ->where(function ($query) use ($request) {
                return $query->when($request->filled('search'), function ($query) use ($request) {
                    return $query->where('username', 'LIKE', "%{$request->input('search.value')}%")
                        ->orWhere('code', 'LIKE', "%{$request->input('search.value')}%")
                        ->orWhere('phone', 'like', "%{$request->input('search.value')}%");
                });
            });

            $totalRows = $clients_data->count();
            $totalFiltered = $totalRows;

            if($request->input('length') != -1)
            $limit = $request->input('length');
            else
            $limit = $totalRows;

            $clients = $clients_data
            ->offset($start)
            ->limit($limit)
            ->orderBy($order, $dir)
            ->get();

            $data = array();

            foreach ($clients as $client) {
                $item['id']    = $client->id;
                $url = url("images/clients/".$client->photo);
                $item['photo'] =  '<div class="avatar mr-2 avatar-md"><img src="'.$url.'" alt=""></div>';
                $item['code'] = $client->code;
                $item['username'] = $client->username;
                $item['phone'] = $client->phone;
                $item['city'] = $client->city;
                $item['gst_no'] = $client->gst_no ?? '';

                //sell_due
                $sell_due = 0;

                $total_amount = DB::table('sales')
                    ->where('deleted_at', '=', null)
                    ->where('client_id', $client->id)
                    ->sum('GrandTotal');
    
                $total_paid = DB::table('sales')
                    ->where('sales.deleted_at', '=', null)
                    ->where('sales.client_id', $client->id)
                    ->sum('paid_amount');

                $sell_due = $total_amount - $total_paid;
                $item['sell_due'] =  $this->render_price_with_symbol_placement(number_format($sell_due, 2, '.', ','));

                //return due
                $total_return_Due = 0;

                $total_amount_return = DB::table('sale_returns')
                ->where('deleted_at', '=', null)
                ->where('client_id', $client->id)
                ->sum('GrandTotal');

                $total_paid_return = DB::table('sale_returns')
                    ->where('sale_returns.deleted_at', '=', null)
                    ->where('sale_returns.client_id', $client->id)
                    ->sum('paid_amount');
    
                $total_return_Due = $total_amount_return - $total_paid_return;

                $item['return_due'] =  $this->render_price_with_symbol_placement(number_format($total_return_Due, 2, '.', ','));

             
                //status

                if($client->status == 1){
                    $item['status'] = '<span class="badge badge-success">Active</span>';
                }else{
                    $item['status'] = '<span class="badge badge-warning">blocked</span>';
                }

                $item['action'] =  '<div class="dropdown">
                            <button class="btn btn-outline-info btn-rounded dropdown-toggle" id="dropdownMenuButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'
                            .trans('translate.Action').

                            '</button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 34px, 0px);">';
                                
                                //check if user has permission "pay_sale_due"
                                 if ($user_auth->can('client_details')){
                                    $item['action'] .=  ' <a class="dropdown-item" href="/people/clients/' .$client->id.'"> <i class="nav-icon  i-Eye font-weight-bold mr-2"></i> ' .trans('translate.Customer_details').'</a>';
                                }

                                 //check if user has permission "client_edit"
                                 if ($user_auth->can('client_edit')){
                                    $item['action'] .=  '<a class="dropdown-item" href="/people/clients/' .$client->id. '/edit" ><i class="nav-icon i-Edit font-weight-bold mr-2"></i> ' .trans('translate.Edit_Customer').'</a>';
                                }

                                //check if user has permission "pay_sale_due"
                                 if ($user_auth->can('pay_sale_due')){
                                    $item['action'] .=  '<a class="dropdown-item payment_sale cursor-pointer"  id="' .$client->id. '" > <i class="nav-icon i-Dollar font-weight-bold mr-2"></i> ' .trans('translate.pay_all_sell_due_at_a_time').'</a>';
                                }

                                 //check if user has permission "payment_sale_return"
                                 if ($user_auth->can('pay_sale_return_due')){
                                    $item['action'] .=  '<a class="dropdown-item payment_sale_return cursor-pointer"  id="' .$client->id. '" > <i class="nav-icon i-Dollar font-weight-bold mr-2"></i> '.trans('translate.pay_all_sell_return_due_at_a_time').'</a>';
                                }

                                //check if user has permission "client_delete"
                                if ($user_auth->can('client_delete')){
                                    $item['action'] .=  '<a class="dropdown-item delete cursor-pointer" id="' .$client->id. '" > <i class="nav-icon i-Close-Window font-weight-bold mr-2"></i> ' .trans('translate.Delete_Customer').'</a>';
                                }
                                $item['action'] .=  '</div>
                        </div>';
                    $data[] = $item;
            }


            $json_data = array(
                "draw"            => intval($request->input('draw')),  
                "recordsTotal"    => intval($totalRows),  
                "recordsFiltered" => intval($totalFiltered), 
                "data"            => $data   
            );
                
            echo json_encode($json_data);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $user_auth = auth()->user();
		if ($user_auth->can('client_add')){

            return view('clients.create_client');
        }
        return abort('403', __('You are not authorized'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user_auth = auth()->user();
		if ($user_auth->can('client_add')){

            $request->validate([
                'username' => 'required',
                'photo'          => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
                'previous_due' => 'nullable|numeric|min:0',
                'has_due' => 'required|in:yes,no',
            ]);

            if ($request->hasFile('photo')) {

                $image = $request->file('photo');
                $filename = time().'.'.$image->extension();  
                $image->move(public_path('/images/clients'), $filename);

            } else {
                $filename = 'no_avatar.png';
            }

            // dd($request['has_due']);
            if($request['gst_no']){
                $gst = 'yes';
            }else{
                $gst = 'no';
            }

            if($request['has_due'] == 'no'){
                // $previous_due = 0.0;
                $previous_due_date = null;
                $previous_due_notes = null;
            }else{
                // $previous_due = $request['previous_due'];
                $previous_due_date = $request['previous_due_date'];
                $previous_due_notes = $request['previous_due_notes'];
            }
            
            $client = Client::create([

                'user_id'        => $user_auth->id,
                'username'       => $request['username'],
                'code'           => $this->getNumberOrder(),
                'email'          => $request['email'],
                'city'           => $request['city'],
                'phone'          => $request['phone'],
                'address'        => $request['address'],
                'is_gst'        => $gst,
                'gst_no'        => $request['gst_no'],
                'has_due'        => $request['has_due'],
                'previous_due'        => $request['previous_due'],
                'previous_due_date'        => $previous_due_date,
                'previous_due_notes'        => $previous_due_notes,
                'status'         => 1,
                'photo'          => $filename,
            ]);

            if ($request->has('previous_due') && $request->input('previous_due') > 0) {
                Sale::create([
                    'user_id' => auth()->id(),
                    'date' => $request->input('previous_due_date'),
                    'Ref' => 'Previous Due',
                    'client_id' => $client->id,
                    'GrandTotal' => $request->input('previous_due'),
                    'notes' => $request->input('previous_due_notes'),
                    'is_gst' => $client->is_gst,
                    'gst_no' => $client->gst_no,
                    'warehouse_id' => '1',
                    'discount_type' => 'fixed',
                    'payment_statut' => 'unpaid',
                    'statut' => 'completed',
                    // Other fields as necessary
                ]);
            }

            return response()->json(['success' => true]);
        }
         return abort('403', __('You are not authorized'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request , $id)
    {
        $user_auth = auth()->user();
		if ($user_auth->can('client_details')){
            
            $helpers = new helpers();
            $currency = $helpers->Get_Currency();

            //get warehouses 
            if($user_auth->is_all_warehouses){
                $warehouses = Warehouse::where('deleted_at', '=', null)->get(['id', 'name']);
            }else{
                $warehouses_id = UserWarehouse::where('user_id', $user_auth->id)->pluck('warehouse_id')->toArray();
                $warehouses = Warehouse::where('deleted_at', '=', null)->whereIn('id', $warehouses_id)->get(['id', 'name']);
            }
          
            $client = Client::where('deleted_at', '=', null)
            ->where(function ($query) use ($user_auth) {
                if (!$user_auth->can('client_view_all')) {
                    return $query->where('user_id', '=', $user_auth->id);
                }
            })->findOrFail($id);

            $client_data = [];
        
            $item['id'] = $client->id;
            $item['full_name'] = $client->username;
            $item['code'] = $client->code;
            $item['phone'] = $client->phone;
            $item['address'] = $client->address;
            $item['gst_no'] = $client->gst_no ?? '';


            if($client->status == 1){
                $item['status'] = 1;
            }else{
                $item['status'] = 0;
            }

            $total_debt = 0;

            $item['total_sales'] = DB::table('sales')
            ->where('deleted_at', '=', null)
            ->where('client_id', $id)
            ->count();

            $total_amount = DB::table('sales')
            ->where('deleted_at', '=', null)
            ->where('client_id', $id)
            ->sum('GrandTotal');

            $total_paid = DB::table('sales')
            ->where('sales.deleted_at', '=', null)
            ->where('sales.client_id', $id)
            ->sum('paid_amount');

            $total_debt =  $total_amount - $total_paid;

            $item['total_amount'] = $this->render_price_with_symbol_placement(number_format($total_amount, 2, '.', ','));
            $item['total_paid']   = $this->render_price_with_symbol_placement(number_format($total_paid, 2, '.', ','));
            $item['total_debt']   = $this->render_price_with_symbol_placement(number_format($total_debt, 2, '.', ','));

            $client_data[] = $item;

            return view('clients.details_client', [
                'client_id' => $id,
                'client_data' => $client_data[0],
                'warehouses' => $warehouses,
            ]);
        }
        return abort('403', __('You are not authorized'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user_auth = auth()->user();
		if ($user_auth->can('client_edit')){

            $client = Client::where('deleted_at', '=', null)
            ->where(function ($query) use ($user_auth) {
                if (!$user_auth->can('client_view_all')) {
                    return $query->where('user_id', '=', $user_auth->id);
                }
            })->findOrFail($id);
            
            return view('clients.edit_client', compact('client'));

        }
        return abort('403', __('You are not authorized'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user_auth = auth()->user();
		if ($user_auth->can('client_edit')){

            $this->validate($request, [
                'username' => 'required|string|max:255',
                'photo'          => 'nullable|image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
                'is_gst' => 'nullable|boolean',
                'gst_no' => 'nullable|string|max:255',
                'has_due' => 'required|in:yes,no',
                'previous_due' => 'required_if:has_due,yes|nullable|numeric|min:0',
                'previous_due_date' => 'required_if:has_due,yes|nullable|date',
                'previous_due_notes' => 'required_if:has_due,yes|nullable|string',
            ]);

            $user = Client::findOrFail($id);
            $currentAvatar = $user->photo;
            if ($request->photo) {
                if ($request->photo != $currentAvatar) {

                    $image = $request->file('photo');
                    $filename = time().'.'.$image->extension();  
                    $image->move(public_path('/images/clients'), $filename);
                    $path = public_path() . '/images/clients';
                    $userPhoto = $path . '/' . $currentAvatar;
                    if (file_exists($userPhoto)) {
                        if ($user->photo != 'no_avatar.png') {
                            @unlink($userPhoto);
                        }
                    }
                } else {
                    $filename = $currentAvatar;
                }
            }else{
                $filename = $currentAvatar;
            }

            if($request['gst_no']){
                $gst = 'yes';
            }else{
                $gst = 'no';
            }

            if($request['has_due'] == 'no'){
                // $previous_due = 0.0;
                $previous_due_date = null;
                $previous_due_notes = null;
            }else{
                // $previous_due = $request['previous_due'];
                $previous_due_date = $request['previous_due_date'];
                $previous_due_notes = $request['previous_due_notes'];
            }

            $client = Client::whereId($id)->update([
                'username'       => $request['username'],
                'email'          => $request['email'],
                'city'           => $request['city'],
                'phone'          => $request['phone'],
                'address'        => $request['address'],
                'is_gst'        => $gst,
                'gst_no'        => $request['gst_no'],
                'has_due'        => $request['has_due'],
                'previous_due'        => $request['previous_due'],
                'previous_due_date'        => $previous_due_date,
                'previous_due_notes'        => $previous_due_notes,
                'status'         => 1,
                'photo'          => $filename,
            ]);

            if ($request->has('has_due') && $request->input('has_due') === 'yes' && $request->input('previous_due') > 0) {
                Sale::withTrashed()->updateOrCreate(
                    ['client_id' => $id, 'Ref' => 'Previous Due'], // Assuming 'Ref' is unique for previous dues
                    [
                        'user_id' => auth()->id(),
                        'date' => $request->input('previous_due_date'),
                        'Ref' => 'Previous Due',
                        'GrandTotal' => $request->input('previous_due'),
                        'notes' => $request->input('previous_due_notes'),
                        'is_gst' => $gst,
                        'gst_no' => $request->input('gst_no'),
                        'warehouse_id' => '1',
                        'discount_type' => 'fixed',
                        'payment_statut' => 'unpaid',
                        'statut' => 'completed',
                        // Other fields as necessary
                    ]
                )->restore();
            } else {
                // Soft delete the due record if "has_due" is set to "no"
                Sale::where('client_id', $id)->where('Ref', 'Previous Due')->delete();
            }
          
            return response()->json(['success' => true]);
        }
        return abort('403', __('You are not authorized'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user_auth = auth()->user();
		if ($user_auth->can('client_delete')){

            $client = Client::whereId($id)->update([
                'deleted_at' => Carbon::now(),
            ]);

            // Soft delete related sales records
            Sale::where('client_id', $id)->delete();

            return response()->json(['success' => true]);

        }
        return abort('403', __('You are not authorized'));
    }

     //------------- get Number Order Customer -------------\\

     public function getNumberOrder()
     {
         $last = DB::table('clients')->latest('id')->first();
 
         if ($last) {
             $code = $last->code + 1;
         } else {
             $code = 1;
         }
         return $code;
     }
 

    public function get_client_debt_total($id){

        $user_auth = auth()->user();
		if ($user_auth->can('pay_sale_due')){

            $client = Client::findOrFail($id);
            $sell_due = 0;

            $item['total_amount'] = DB::table('sales')
                ->where('deleted_at', '=', null)
                ->where('client_id', $id)
                ->sum('GrandTotal');

            $item['total_paid'] = DB::table('sales')
                ->where('sales.deleted_at', '=', null)
                ->where('sales.client_id', $id)
                ->sum('paid_amount');

            $sell_due =  $item['total_amount'] - $item['total_paid'];

            $payment_methods = PaymentMethod::where('deleted_at', '=', null)->orderBy('id', 'desc')->get(['id','title']);
            $accounts = Account::where('deleted_at', '=', null)->orderBy('id', 'desc')->get(['id','account_name']);

            return response()->json([
                'sell_due' => $sell_due,
                'payment_methods' => $payment_methods,
                'accounts' => $accounts,
            ]);

        }
        return abort('403', __('You are not authorized'));
    }

     //------------- clients_pay_due -------------\\

     public function clients_pay_due(Request $request)
     {
        $user_auth = auth()->user();
		if ($user_auth->can('pay_sale_due')){

            request()->validate([
                'client_id'           => 'required',
                'payment_method_id'   => 'required',
            ]);

            if($request['montant'] > 0){
                $client_sales_due = Sale::where('deleted_at', '=', null)
                ->where([
                    ['payment_statut', '!=', 'paid'],
                    ['client_id', $request->client_id]
                ])->get();

                    $paid_amount_total = $request->montant;


                        foreach($client_sales_due as $key => $client_sale){
                            if($paid_amount_total == 0)
                            break;
                            $due = $client_sale->GrandTotal  - $client_sale->paid_amount;

                            if($paid_amount_total >= $due){
                                $amount = $due;
                                $payment_status = 'paid';
                            }else{
                                $amount = $paid_amount_total;
                                $payment_status = 'partial';
                            }

                            $payment_sale = new PaymentSale();
                            $payment_sale->date = $request['date'];
                            $payment_sale->account_id =  $request['account_id']?$request['account_id']:NULL;
                            $payment_sale->sale_id = $client_sale->id;
                            $payment_sale->Ref = $this->generate_random_code_payment();
                            $payment_sale->payment_method_id = $request['payment_method_id'];
                            $payment_sale->montant = $amount;
                            $payment_sale->change = 0;
                            $payment_sale->notes = $request['notes'];
                            $payment_sale->user_id = Auth::user()->id;
                            $payment_sale->save();

                            $account = Account::where('id', $request['account_id'])->exists();

                            if ($account) {
                                // Account exists, perform the update
                                $account = Account::find($request['account_id']);
                                $account->update([
                                    'initial_balance' => $account->initial_balance + $amount,
                                ]);
                            }

                            $client_sale->paid_amount += $amount;
                            $client_sale->payment_statut = $payment_status;
                            $client_sale->save();

                            $paid_amount_total -= $amount;
                        }

            }
            
            return response()->json(['success' => true]);

        }
        return abort('403', __('You are not authorized'));
 
     }

     public function get_client_debt_return_total($id){

        $user_auth = auth()->user();
		if ($user_auth->can('pay_sale_return_due')){

            $client = Client::findOrFail($id);
            $return_due = 0;

            $item['total_amount_return'] = DB::table('sale_returns')
                ->where('deleted_at', '=', null)
                ->where('client_id', $id)
                ->sum('GrandTotal');

            $item['total_paid_return'] = DB::table('sale_returns')
                ->where('sale_returns.deleted_at', '=', null)
                ->where('sale_returns.client_id', $id)
                ->sum('paid_amount');
            
            $return_due =  $item['total_amount_return'] - $item['total_paid_return'];

            $payment_methods = PaymentMethod::where('deleted_at', '=', null)->orderBy('id', 'desc')->get(['id','title']);
            $accounts = Account::where('deleted_at', '=', null)->orderBy('id', 'desc')->get(['id','account_name']);

            return response()->json([
                'return_due' => $return_due,
                'payment_methods' => $payment_methods,
                'accounts' => $accounts,
            ]);

        }
        return abort('403', __('You are not authorized'));
    }

     //------------- clients_pay_return_due -------------\\

     public function clients_pay_return_due(Request $request)
     {
        $user_auth = auth()->user();
		if ($user_auth->can('pay_sale_return_due')){

            request()->validate([
                'client_id'           => 'required',
                'payment_method_id'   => 'required',
            ]);

            if($request['montant'] > 0){
                $client_sell_return_due = SaleReturn::where('deleted_at', '=', null)
                ->where([
                    ['payment_statut', '!=', 'paid'],
                    ['client_id', $request->client_id]
                ])->get();
    
                $paid_amount_total = $request->montant;

                foreach($client_sell_return_due as $key => $client_sale_return){
                    if($paid_amount_total == 0)
                    break;
                    $due = $client_sale_return->GrandTotal  - $client_sale_return->paid_amount;

                    if($paid_amount_total >= $due){
                        $amount = $due;
                        $payment_status = 'paid';
                    }else{
                        $amount = $paid_amount_total;
                        $payment_status = 'partial';
                    }

                    $payment_sale_return = new PaymentSaleReturns();
                    $payment_sale_return->sale_return_id = $client_sale_return->id;
                    $payment_sale_return->account_id =  $request['account_id']?$request['account_id']:NULL;
                    $payment_sale_return->Ref = $this->generate_random_code_payment_return();
                    $payment_sale_return->date = $request['date'];
                    $payment_sale_return->payment_method_id = $request['payment_method_id'];
                    $payment_sale_return->montant = $amount;
                    $payment_sale_return->change = 0;
                    $payment_sale_return->notes = $request['notes'];
                    $payment_sale_return->user_id = Auth::user()->id;
                    $payment_sale_return->save();

                    $account = Account::where('id', $request['account_id'])->exists();

                    if ($account) {
                        // Account exists, perform the update
                        $account = Account::find($request['account_id']);
                        $account->update([
                            'initial_balance' => $account->initial_balance - $amount,
                        ]);
                    }

                    $client_sale_return->paid_amount += $amount;
                    $client_sale_return->payment_statut = $payment_status;
                    $client_sale_return->save();

                    $paid_amount_total -= $amount;
                }
            }
            
            return response()->json(['success' => true]);

        }
        return abort('403', __('You are not authorized'));
 
     }
 

    // generate_random_code_payment
    public function generate_random_code_payment()
    {
        $gen_code = 'INV/SL-' . date("Ymd") . '-'. substr(number_format(time() * mt_rand(), 0, '', ''), 0, 6);

        if (PaymentSale::where('Ref', $gen_code)->exists()) {
            $this->generate_random_code_payment();
        } else {
            return $gen_code;
        }
        
    }

    // generate_random_code_payment_return
    public function generate_random_code_payment_return()
    {
        $gen_code = 'INV/RS-' . date("Ymd") . '-'. substr(number_format(time() * mt_rand(), 0, '', ''), 0, 6);

        if (PaymentSaleReturns::where('Ref', $gen_code)->exists()) {
            $this->generate_random_code_payment_return();
        } else {
            return $gen_code;
        }
        
    }

    public function import_clients_page()
    {
        $user_auth = auth()->user();
		if ($user_auth->can('import_clients')){

            return view('clients.import_clients');
        }
        return abort('403', __('You are not authorized'));
    }

    // import clients
    public function import_clients(Request $request)
    {
        $user_auth = auth()->user();
		if ($user_auth->can('import_clients')){

            //Set maximum php execution time
            ini_set('max_execution_time', 0);

            $request->validate([
                'clients' => 'required|mimes:xls,xlsx',
            ]);

            $client_array = Excel::toArray(new ClientImport, $request->file('clients'));

            $clients = [];

            foreach ($client_array[0] as $key => $value) {

                //--client name
                if($value['full_name'] != ''){
                    $row['username'] = $value['full_name'];
                }else{
                    return back()->with('error','Nom du Client n\'existe pas!');
                }

                //--client email
                if ($value['email'] != '') {
                    $row['email'] = $value['email'];
                } else {
                    $row['email'] = NULL;
                }

                //--client country
                if ($value['country'] != '') {
                    $row['country'] = $value['country'];
                } else {
                    $row['country'] = NULL;
                }

                //--client city
                if ($value['city'] != '') {
                    $row['city'] = $value['city'];
                } else {
                    $row['city'] = NULL;
                }

                //--client address
                if ($value['address'] != '') {
                    $row['address'] = $value['address'];
                } else {
                    $row['address'] = NULL;
                }

                //--client phone
                if ($value['phone'] != '') {
                    $row['phone'] = $value['phone'];
                } else {
                    $row['phone'] = NULL;
                }

                //--client gst_no
                if ($value['gst_no'] != '') {
                    $row['gst_no'] = $value['gst_no'];
                } else {
                    $row['gst_no'] = NULL;
                }

                $clients[]= $row;
            }

            foreach ($clients as $key => $client_value) {

                $client = new Client;

                $client->username = $client_value['username'];
                $client->code = $this->getNumberOrder();
                $client->email = $client_value['email'];
                $client->country = $client_value['country'];
                $client->city = $client_value['city'];
                $client->address = $client_value['address'];
                $client->phone = $client_value['phone'];
                $client->gst_no = $client_value['gst_no'];

                //default value
                $client->status = 1;
                $client->photo = 'no_avatar.png';
        
                $client->save();
               
            }
            
            return redirect()->back()->with('success','Clients Imported successfully!');

        }
        return abort('403', __('You are not authorized'));

    }


    // render_price_with_symbol_placement

    public function render_price_with_symbol_placement($amount) {

        if ($this->symbol_placement == 'before') {
            return $this->currency . ' ' . $amount;
        } else {
            return $amount . ' ' . $this->currency;
        }
    }


    // Subhankar Added on 16.07.2024 : Customer Sales Report
     //----- get_customer_report_sales_datatable -------\\
     public function get_customer_report_sales_datatable(Request $request)
     {
        $user_auth = auth()->user();
        if (!$user_auth->can('sale_reports')){
            return abort('403', __('You are not authorized'));
        }else{
 
            if($user_auth->is_all_warehouses){
                $array_warehouses_id = Warehouse::where('deleted_at', '=', null)->pluck('id')->toArray();
            }else{
                $array_warehouses_id = UserWarehouse::where('user_id', $user_auth->id)->pluck('warehouse_id')->toArray();
            }
                        
            if(empty($request->warehouse_id)){
                $warehouse_id = 0;
            }else{
                $warehouse_id = $request->warehouse_id;
            }

            $helpers = new helpers();
            $param = array(
                0 => 'like',
                1 => '=',
                2 => 'like',
                3 => '=',
            );
            $columns = array(
                0 => 'Ref',
                1 => 'client_id',
                2 => 'payment_statut',
                3 => 'warehouse_id',
            );

            $columns_order = array( 
                0 => 'id', 
                1 => 'date', 
                2 => 'Ref', 
            );

            $start = $request->input('start');
            $order = 'sales.'.$columns_order[$request->input('order.0.column')];
            $dir = $request->input('order.0.dir');
 
            $end_date_default = Carbon::now()->addYear(10)->format('Y-m-d');
            $start_date_default = Carbon::now()->subYear(10)->format('Y-m-d');
            
            $start_date = empty($request->start_date)?$start_date_default:$request->start_date;
            $end_date = empty($request->end_date)?$end_date_default:$request->end_date;

            $sales_data = Sale::where('deleted_at', '=', null)
            // ->with('client')
            ->whereDate('date', '>=', $start_date)
            ->whereDate('date', '<=', $end_date)
            
            ->where(function ($query) use ($request, $warehouse_id, $array_warehouses_id) {
                if ($warehouse_id !== 0) {
                    return $query->where('warehouse_id', $warehouse_id);
                }else{
                    return $query->whereIn('warehouse_id', $array_warehouses_id);
                }
            })
            
            ->where(function ($query) use ($user_auth) {
                if (!$user_auth->can('sales_view_all')) {
                    return $query->where('user_id', '=', $user_auth->id);
                }
            });

            //Multiple Filter
            $sales_Filtred = $helpers->filter($sales_data, $columns, $param, $request)

             // Search With Multiple Param
             ->where(function ($query) use ($request) {
                return $query->when($request->filled('search'), function ($query) use ($request) {
                    return $query->where('Ref', 'LIKE', "%{$request->input('search.value')}%")
                        ->orWhere('payment_statut', 'like', "%{$request->input('search.value')}%")
                        ->orWhere(function ($query) use ($request) {
                            return $query->whereHas('client', function ($q) use ($request) {
                                $q->where('username', 'LIKE', "%{$request->input('search.value')}%");
                            });
                        })
                        ->orWhere(function ($query) use ($request) {
                            return $query->whereHas('warehouse', function ($q) use ($request) {
                                $q->where('name', 'LIKE', "%{$request->input('search.value')}%");
                            });
                        });
                });
            });

            $totalRows = $sales_Filtred->count();
            $totalFiltered = $totalRows;

            if($request->input('length') != -1)
            $limit = $request->input('length');
            else
            $limit = $totalRows;

            $sales = $sales_Filtred
            ->with('warehouse','user','client')
            ->offset($start)
            ->limit($limit)
            ->orderBy($order, $dir)
            ->get();

            $data = array();

            foreach ($sales as $sale) {

                $item['id']             = $sale->id;
                $item['date']           = Carbon::parse($sale->date)->format('d-m-Y H:i');
                $item['Ref']            = '<a href="/sale/sales/'.$sale->id.'" target="_blank">'.$sale->Ref.'</a>'; //$sale->Ref;
                $item['created_by']     = $sale->user->username;
                $item['warehouse_name'] = $sale->warehouse->name;
                $item['client_name']    = $sale->client->username;
                $item['GrandTotal']     = number_format($sale->GrandTotal, 2, '.', ',');
                $item['paid_amount']    = number_format($sale->paid_amount, 2, '.', ',');
                $item['due']            = number_format($sale->GrandTotal - $sale->paid_amount, 2, '.', ',');
              

                //payment_status
                if($sale->payment_statut == 'paid'){
                    $item['payment_status'] = '<span class="badge badge-outline-success">'.trans('translate.Paid').'</span>';
                }else if($sale->payment_statut == 'partial'){
                    $item['payment_status'] = '<span class="badge badge-outline-info">'.trans('translate.Partial').'</span>';
                }else{
                    $item['payment_status'] = '<span class="badge badge-outline-warning">'.trans('translate.Unpaid').'</span>';
                }

                $data[] = $item;

            }


            $json_data = array(
                "draw"            => intval($request->input('draw')),  
                "recordsTotal"    => intval($totalRows),  
                "recordsFiltered" => intval($totalFiltered), 
                "data"            => $data   
            );
                
            echo json_encode($json_data);
        }
    }

}