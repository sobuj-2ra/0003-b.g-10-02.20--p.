<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<style type="text/css">
		/* { margin: 250px 30px 30px; }*/
		@media print{
			body{
				margin: 50px 50px;
			}
		}
		@page front-matter :left {
		  @bottom-left {
		    content: counter(page, lower-roman);
		  }
		}
		table{
			/*margin-bottom: 20px;*/
			border-collapse: collapse;
			font-family: sans-serif;

		}
		/*header {
	        position: fixed;
	        top: -170px;
	        left: 0px;
	        right: 0px;
	        bottom: auto;
	        margin-bottom: 0;
	    }*/

		table, th, td {
		  border: 1px solid black;
		  /*padding: 5px 2px;*/
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
		td.img{
			width: 9%;
			display: table-cell;
		}
		td.img img{
			width:auto;
			height: 50%;
		}
		.deliver_data{
			margin-bottom: 20px;
			margin-top: 25px;
		}

	</style>
</head>
<body>

<header>
	<table cellpadding="0" cellspacing="0" border="1" width="100%" class="table">
		<tr>
			<td rowspan="5" class="img">
				<img src="{{ asset('/storage/bg_logo.jpg') }}">
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
			<td></td>
		</tr>
	</table>
</header>

<table cellpadding="5" cellspacing="0" border="0" width="100%" class="deliver_data">
	<tr>
		<td>SL No. : {{ ($customer_info->sl_no != null) ? sprintf('%08d', $customer_info->sl_no)  : sprintf('%08d', $last_serial_no)  }}</td>
		<td>Date : {{ Carbon\Carbon::now()->format('d-m-Y') }}</td>
		<td>Sales Order : {{ $customer_info->sales_order }}</td>
	</tr>
</table>

<table cellpadding="0" cellspacing="0" border="1" width="100%" class="order_details">
	<tr>
		 <td colspan="4" class="p-5">Customer Name: {{ $customer_info->name }}</td>
	</tr>
	<tr>
		 <td>Items Name</td>
		 <td>Quantity(Pcs)</td>
		 <td>Quantity<br>(Cartoons)</td>
		 <td>Batch No</td>
	</tr>
	@foreach ($order_details as $single_order)
		<tr style="text-align: center;">
		 <td class="item_name">{{ $single_order['item_name'] }}</td>
		 <td class="total_qty">{{ $single_order['total_qty'] }}</td>
		 <td class="total_cartoon">{{ $single_order['total_cartoon'] }}</td>
		 <td class="batch_no">{{ $single_order['batch_no'] }}</td>
		</tr>
	@endforeach
	<tr>
		<td colspan="4" class="p-5">Transport No: {{ $customer_info->transport_no }}</td>
	</tr>
	<tr>
		<td colspan="4" class="p-5">Signature & Date: </td>
	</tr>
</table>

<script type="text/php">
        if ( isset($pdf) ) {
            // OLD 
            // $font = Font_Metrics::get_font("helvetica", "bold");
            // $pdf->page_text(72, 18, "{PAGE_NUM} of {PAGE_COUNT}", $font, 6, array(0,0,0));
            // v.0.7.0 and greater
            $x = 480;
            $y = 116;
            $text = "Page {PAGE_NUM} of {PAGE_COUNT}";
            $font = $fontMetrics->get_font("sans-serif", "normal");
            $size = 12;
            $color = array(0,0,0);
            $word_space = 0.0;  //  default
            $char_space = 0.0;  //  default
            $angle = 0.0;   //  default
            $pdf->page_text($x, $y, $text, $font, $size, $color, $word_space, $char_space, $angle);
        }
    </script>


</body>
</html>