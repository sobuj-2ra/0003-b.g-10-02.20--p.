<!DOCTYPE html>
<html>
<head>
	<title>asdasd</title>
	<style type="text/css">
		table{
			margin-bottom: 20px;
			border-collapse: collapse;

		}

		table, th, td {
		  border: 1px solid black;
		}

		.table{
			text-align: center;
		}
		td.title {
		    font-size: 15px;
		    font-weight: 700;
		    text-transform: uppercase;
		    width:45%;
		}
		.p-5{
			padding: 15px;
			font-weight: bold;
			font-size: 20px;
			text-align: left !important;
		}
		.order_details{
			text-align: center;
		}
		.total_qty, .total_cartoon,.batch_no{
			width: 20%;
		}

	</style>
</head>
<body>

<a href="{{ route('downloadinvoice') }}">downloadinvoice</a>


<table cellpadding="5" cellspacing="0" border="1" width="100%" class="table">
	
	<tr>
		<td rowspan="5">
			<img height="100%" width="auto" src="https://www.tradebangla.com.bd/images/business/profile/2017/12/21/117211217124359.jpg">
		</td>
	</tr>

	<tr>
		<td class="title" rowspan="2">The Bengla Glass Works Ltd.</td>
		<td>Document No.</td>
		<td>BG-IMS-F-STR-009</td>
	</tr>

	<tr>
		<td>Revision No.</td>
		<td>01</td>
	</tr>

	<tr>
		<td class="title">Integradted Management System</td>
		<td>Effective Date</td>
		<td>22.06.2015</td>
	</tr>

	<tr>
		<td class="title">Finished Goods delivery slip</td>
		<td>Page No</td>
		<td>Page 1 of 1</td>
	</tr>

</table>

<table cellpadding="5" cellspacing="0" border="0" width="100%">
	<tr>
		<td>SL No. : 44444</td>
		<td>Date : {{ Carbon\Carbon::now()->format('d-m-Y') }}</td>
		<td>Sales Order : {{ $customer_info->sales_order }}</td>
	</tr>
</table>

<table cellpadding="5" cellspacing="0" border="1" width="100%" class="order_details">
		
		

		<tr>
			 <td colspan="4" class="p-5">Customer Name: {{ $customer_info->name }}</td>
		</tr>

		<tr>
			 <th>Items Name</th>
			 <th>Quantity(Pcs)</th>
			 <th>Quantity(Cartoons)</th>
			 <th>Batch No</th>
		</tr>

		
		@for ($i = 0; $i <10 ; $i++)
			@foreach ($order_details as $single_order)
				<tr style="text-align: center;">
				 <td class="item_name">{{ $single_order['item_name'] }}</td>
				 <td class="total_qty">{{ $single_order['total_qty'] }}</td>
				 <td class="total_cartoon">{{ $single_order['total_cartoon'] }}</td>
				 <td class="batch_no">{{ $single_order['batch_no'] }}</td>
				</tr>
			@endforeach
		@endfor


		<tr>
			<td colspan="4" class="p-5">Transport No: {{ $customer_info->transport_no }}</td>
		</tr>
		<tr>
			<td colspan="4" class="p-5">Signature & Date: </td>
		</tr>

	

</table>


</body>
</html>