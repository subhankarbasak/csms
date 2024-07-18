<?php

if(isset($_COOKIE['language']) &&  $_COOKIE['language'] == 'ar') {
    $languageDirection = 'rtl' ;

} else {
    $languageDirection = 'ltr' ;
}

$css_path = '\assets\styles\vendor\pdf_style.css';
$image_path = '\images\\'.$setting['logo'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{$sale['Ref']}}</title>
    <link rel="stylesheet" href="{{ public_path() . $css_path }}">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        .invoice-box {
            max-width: 800px;
            margin: auto;

            font-size: 14px;
            line-height: 18px;
            color: #555;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);;
        }

        /* body {
            font-family: 'Heebo', sans-serif;
        } */

        .top {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .top img {
            width: 150px;
        }

        .invoice {
            display: flex;
            align-items: center;
            width: 210px;
            font-size: 15px;
            justify-content: space-between;
            font-weight: 500;
            height: 25px;
        }

        .text-center {
            text-align: center;
        }

        .costomer {
            background: rgb(54, 54, 54);
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 50px;
            padding: 0 20px;
        }

        .costomer p:last-child {
            margin-right: 250px;
        }

        .table-one {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #fff;
            padding: 0 20px 20px 20px;
            border: 1px solid #a9a9a9;
            margin-top: -10px;
        }

        .table-one .avery {
            width: 28%;
            margin-right: 100px;
        }

        .example {
            width: 30%;
        }

        .example h3 {
            font-size: 17px;
            height: 4px;
        }

        .avery h3 {
            width: 87%;
            margin-bottom: -13px;
        }

        .table-one p {
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 0;
        }

        .table-one span {
            display: block;
            font-weight: 500;
        }

        .invoice-box table tr.item td {
            border-right: 1px solid #a9a9a9;
            border-bottom: 1px solid #a9a9a9;
            padding: 10px;
        }
        .invoice-box table tr.item.item-two td {
            border-right: 1px solid #fff;
            border-bottom: none;
        }
        .invoice-box table tr.item.item-three td {
            border-top: 1px solid #a9a9a9;
        }

		/** RTL **/
		.invoice-box.rtl {
			direction: rtl;
		}

        .table-two table thead {
            background: rgb(54, 54, 54);
            color: #fff;
        }

        .table-two thead th {
            padding: 6px;
        }

        .table-two table {
            width: 100%;
        }
        tr.item.heading-tow {
            /* background: #f8f8f8; */
        }
        tr.item.heading-tow {
            /* background: #f8f8f8; */
        }




        .invoice-box table tr.heading td{
            background: #f8f8f8;
            /* background: #363636; */
            /* color: #fff; */
            padding: 6px;
        }

        .status{
            border: 1px solid #a9a9a9;
            margin-top: 10px;
            display: flex;
            align-items: center;
        }
        .table-three {
            border-left: 1px solid #a9a9a9;
            width: 100%;
        }

        .invoice-box table tr.item-four td {
            border-right: 1px solid #a9a9a9;
            border-bottom: 1px solid #a9a9a9;
            text-align: end;
            padding: 5px;
        }
        .invoice-box table tr.item-four td:last-child {
            border-right: 1px solid #a9a9a9;
            border-bottom: 1px solid #a9a9a9;
            text-align: start;
            padding: 5px;
        }
        .invoice-box table tr.item-four th {
            border-right: 1px solid #a9a9a9;
            border-bottom: 1px solid #a9a9a9;
            text-align: end;
            padding: 5px;
        }

        .status-due span{
            display: block;
            font-size: 15px;
        }
        .status-due{
            padding-left: 10px;
        }
        span.paid{
            margin-top: 15px;
        }
        .status-due h4{
            color: #000;
            font-size: 18px;
            margin: 0 0 15px 0;
        }
        table{
            width: 400px;
        }
        .signertuer span{
            display: block;
            font-size: 16px;
            font-weight: 500;
        }
        .signertuer img{
            width: 100px;
            margin: 10px 0;
        }
        .signertuer{
            display: flex;
            align-items: center;
            justify-content: end;
            margin-right: 70px;
        }
        .divider {
            line-height: 1.5715;
            color: #000000d9;
            border-top: 1px solid rgba(0, 0, 0, .7);
            margin: 10px 0px 5px 0px;
        }
        .trem span{
            font-size: 13px;
            font-weight: 700;
            color: #000;
        }
        .trem p{
            color: #000;
        }
        table.information{
            width: 100%;
        }


        .text-right {
            text-align: right;
        }

        .p-5 {
            padding-bottom: 5px;
        }

        .space-10 {
            padding-bottom: 10px;
            margin-bottom: 10px;
        }

        .space-3 {
            padding-bottom: 3px;
            margin-bottom: 3px;
        }

        .pl-15 {
            padding-left: 15px;
        }

        .pt-15 {
            padding-top: 15px;
        }

        .pb-15 {
            padding-bottom: 15px;
        }

        .mt-20 {
            margin-top: 10px;
        }

        .clearfix {
			display: block;
			clear: both;
		}
    </style>
</head>

<body>

    <div class="invoice-box">
        <table class="company-details" cellpadding="0" cellspacing="0" style="width: 100%">
			<tr>
				<td style="padding-bottom: 5px;">
					<img src="{{ public_path() . $image_path }}" style="width: 150px; margin-top: 2px;" />
				</td>
				<td style="margin-left: 100px; padding-left: 30%; padding-bottom: 20px;">
					<table style="width: 100%">
                        <tr style="text-align: left">
                            <td class="space-10">
                                <span style="font-size: 28px; font-weight: bolder">
                                    {{ __('Sales Invoice') }}
								</span>
                            </td>
                        </tr>
						<tr>
							<table cellpadding="0" cellspacing="0" style="width: 100%">
                                <tr>
                                    <td class="space-3" style="font-weight: bold;">
                                        Ref
                                    </td>
                                    <td class="space-3 text-right">{{$sale['Ref']}}</td>
                                </tr>
                                <tr>
                                    <td class="space-3" style="font-weight: bold;">{{ __('translate.Date') }}</td>
                                    <td class="space-3 text-right">
                                        @php
                                            use Carbon\Carbon;
                                        @endphp
                                        <!-- format('d-m-Y h:i A') -->
                                        {{ Carbon::parse($sale['date'])->format('d/m/Y') }}
                                    </td>
                                </tr>
                                <tr style="display: none">
                                    <td class="space-3" style="font-weight: bold;">{{ __('Order Status') }} </td>
                                    <td class="space-3 text-right">{{ $sale['statut'] }}</td>
                                </tr>
                                <tr style="display: none">
                                    <td class="space-3" style="font-weight: bold;">Sold By</td>
                                    <td class="space-3 text-right">{{ \App\Models\User::getUserNameById($sale['sold_by']) }}</td>
                                </tr>
                            </table>
						</tr>
					</table>
				</td>
			</tr>
		</table>
        <table class="information"  cellpadding="2px" cellspacing="0" style="border: 1px solid #a9a9a9;">
            <tr class="heading" >
                <td style="width: 40%; padding: 12px;" >
                    Seller
                </td>
                <td style="width: 20%"></td>
                <td style="width: 40%; padding-left: 15px;">
                    Buyer
                </td>
            </tr>
            <tr>
                <td class="pl-15 pt-15 pb-15" style="vertical-align:top;">
                    <span style="font-size: 16px; font-weight: bold">{{$setting['CompanyName']}}</span>  <br>
                    <span>{{$setting['CompanyAdress']}}</span><br>
                    <span>{{$setting['email']}}</span><br>
                    <span>{{$setting['CompanyPhone']}}</span> <br>
                    <span>GST ID: {{$setting['gst_no']}}</span>
                </td>
                <td class="pl-15 pt-15 pb-15" style="vertical-align:top;"></td>
                <td class="pl-15 pt-15 pb-15" style="vertical-align:top;">
                        <span style="font-size: 16px; font-weight: bold">{{ ucfirst($sale['client_name']) }}</span><br />
                        {{$sale['client_adr']}} <br />
                        {{$sale['client_phone']}} 
                        @if($sale['client_gst_no'])
                        <br />
                        GST ID: {{$sale['client_gst_no']}}
                        @endif
                </td>
            </tr>
        </table>
        <br>
        <div class="table-two">
            <table cellpadding="4px" cellspacing="0">

                <tbody>
                    <tr class="heading">
                        <td style="border: 1px solid #a9a9a9;">Sl.</td>
                        <td style="border: 1px solid #a9a9a9;">{{ __('Name of the Item') }}</td>
                        <td style="border: 1px solid #a9a9a9;">{{ __('translate.Qty') }}</td>
                        <td style="border: 1px solid #a9a9a9;">{{ __('Rate') }}</td>
                        <td style="border: 1px solid #a9a9a9;">{{ __('translate.Discount') }}</td>
                        <td style="border: 1px solid #a9a9a9;">{{ __('GST (Rs.)') }}</td>
                        <td style="border: 1px solid #a9a9a9;">{{ __('Total (Rs.)') }}</td>
                    </tr>

                    @php
                        $totalAmount = 0; // Initialize total amount variable
                        $gst_amount = 0;
                        $each_total_discount = 0;
                    @endphp
                    @foreach ($details as $detail)
                    <tr class="item heading-tow">
                        <td style="border-left: 1px solid #a9a9a9;">{{ $loop->iteration }}</td>
                        <td>
                            <span>{{$detail['code']}} ({{$detail['name']}})
                                @if(1)
                                - {{ $detail['optional_pname'] }}
                                @endif
                            </span>
                               @if($detail['is_imei'] && $detail['imei_number'] !==null)
                                  <p>IMEI/SN : {{$detail['imei_number']}}</p>
                               @endif
                        </td>
                        <td>{{$detail['quantity']}} {{$detail['unitSale']}}</td>
                        <td>{{$detail['price']}}</td>
                        <td>{{$detail['DiscountNet']}}</td>
                        <td>
                            {{$detail['taxe']}} ({{$detail['indi_tax_rate']}}%)
                            @if($detail['tax_method'] == 1)
                                [{{__('excl.')}}]
                            @else
                                [{{__('incl.')}}]
                            @endif
                        </td>
                        <td>{{$detail['total']}}</td>
                    </tr>

                        @php
                            $totalAmount += $detail['total']; // Accumulate total amount
                            $gst_amount += $detail['taxe'];
                            $each_total_discount += $detail['DiscountNet'];
                        @endphp
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="status">
            <table cellpadding="4px" cellspacing="0" style="width: 100%">
                <tr>
                    <td>
                        <div class="status-due">
                            <div>
                                <h4>{{ __('translate.Payment_Status') }} : 
                                    @if($sale['payment_status'] == 'paid') {{ __('translate.Paid') }}
                                    @elseif($sale['payment_status'] == 'partial') {{ __('translate.Partial') }}
                                    @else {{ __('translate.Unpaid') }}
                                    @endif
                                </h4>
                                <span>{{ __('translate.Paid') }} : {{$sale['paid_amount']}}</span>
                                <span>{{ __('translate.Due') }}: {{$sale['due']}}</span>
                                @if($paymentSales)
                                <span class="paid">
                                    {{ __('Paid By') }}: 
                                    {{ $paymentSales->paymentMethod->title ?? '' }}
                                </span>
                                @endif
                            </div>
                        </div>
                    </td>

                    <td style="padding: 0px;">
                        <div class="table-three">
                            <table cellpadding="0px" cellspacing="0" style="width: 100%">
                                <tbody>


                                    <tr class="item-four">
                                        <td>{{ __('translate.SubTotal') }}</td>
                                        <td>Rs. {{ number_format($totalAmount, 2) }}</td>
                                    </tr>
                                    <tr class="item-four">
                                        <td>{{ __('Overall Discount') }}</td>
                                        <td>{{ $sale['discount_amount'] }}</td>
                                    </tr>
                                    <tr class="item-four">
                                        <td>{{ __('GST (Rs.)') }}</td>
                                        <td>
                                            @if($sale['TaxNet'] !== 'Rs. 0.00')
                                                {{$sale['TaxNet']}} ({{$sale['tax_rate']}} %)
                                            @else
                                                Rs. {{number_format($gst_amount, 2) }}
                                            @endif
                                        </td>
                                    </tr>
                                    @if($sale['shipping'] != 'Rs. 0.00')
                                    <tr class="item-four">
                                        <td>{{ __('translate.Shipping') }}</td>
                                        <td>{{$sale['shipping']}}</td>
                                    </tr>
                                    @endif
                                    <tr class="item-four">
                                        <td><b>{{ __('translate.Total') }}</b></td>
                                        <td>{{$sale['GrandTotal']}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>
            <!-- app/Helpers/NumberToWords.php -->
            <div style="padding: 5px;">AMOUNT IN WORDS(Rs): Rupees {{ amountToWords($sale['final_amount']) }} </div>
        </div>

        <div class="mt-20">
			<div style="width: 60%; float: left;">
				<p class="mt-20" style="font-weight: bold; font-size: 14px;">
                    {{ __('Notes') }}:
                </p>
                <p>{{ $sale['notes'] }}</p>
			</div>
			<div style="width: 40%; float: right;">
				<div class="signertuer">
                    <div>
                        <span>For {{$setting['CompanyName']}}</span>
                        <!-- <img src="#"  style="width: 200px; margin-top: 5px;" /> -->
                        </span>
                    </div>
                </div>
                <p style="margin-top:50px;">( {{ \App\Models\User::getUserNameById($sale['sold_by']) }} )</p>
			</div>
			<div class="clearfix"></div>
		</div>

        <div class="divider"></div>
        <table cellpadding="1px" cellspacing="0" style="width: 100%">
            <tr>
                <td style="width: 56%; vertical-align:top;">
                    <span style="font-weight: bold;">{{ __('Terms & Conditions') }}</span>
                    <p>
                        <ul>
                            <li>Goods once sold will not be taken back or exchanged</li>
                            <!-- <li>All disputes are subject to Malda jurisdiction only</li> -->
                        </ul>
                    </p>
                </td>
                <td style="width: 40%; vertical-align:top;">
                    <span style="font-weight: bold;">Bank Details</span>
                    <table cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td class="space-3">{{ __('Account Name :') }}</td>
                            <td class="space-3 text-right"></td>
                        </tr>
                        <tr>
                            <td class="space-3">{{ __('Bank Name :') }}</td>
                            <td class="space-3 text-right"></td>
                        </tr>
                        <tr>
                            <td class="space-3">{{ __('Account No. :') }} </td>
                            <td class="space-3 text-right"></td>
                        </tr>
                        <tr>
                            <td class="space-3">{{ __('IFSC Code :') }} </td>
                            <td class="space-3 text-right"></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

    </div>
</body>

</html>
