<!DOCTYPE html>
<html>
<head>
	<title>Daily Shift</title>

	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/sweetalert.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
	<meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body>

@include('includes.buttons')
<div class="container pt-3 h-100">
	<div class="row">
		<div class="col-12">
			<strong>Ref No: {{ $datas[0]->customer_ref_no }}</strong>
		</div>
		<div class="col-6">
			
			<form method="POST" action="{{ route('placeorder') }}">
				@csrf
			  <div class="form-group">
			    <label for="CustomerName">Customer Name</label>
			    <input type="text" class="form-control" id="CustomerName" name="name" required="" placeholder="Enter customer name">
			  </div>

			  <div class="form-group">
			    <label for="SalesOrder">Sales Order</label>
			    <input type="text" class="form-control" id="SalesOrder" name="sales_order" required="" placeholder="Enter SalesOrder">
			  </div>
			  
			  <div class="form-group">
			    <label for="transport_no">transport_no</label>
			    <input type="text" class="form-control" id="transport_no" name="transport_no" required="" placeholder="Enter transport_no">
			  </div>

			  <div class="form-group">
			    <label for="reference_no">reference_no</label>
			    <input type="text" class="form-control" id="reference_no" name="reference_no" required="" readonly="" value="{{ $datas[0]->customer_ref_no }}" placeholder="Enter reference_no">
			  </div>

			  @foreach ($datas as $single_barcode_data)
			  	<input type="hidden" name="barcodes[]" value="{{ $single_barcode_data->getbarcode->id }}" readonly="">
			  @endforeach

			  <button type="submit" class="btn btn-primary">Submit</button>
			</form>
			
		</div>

		<div class="col-6">
			<p>Items <strong>{{ count($datas) }}</strong></p>
			<ul class="list-group">
			
				@foreach ($datas as $data)
			  		<li class="list-group-item">{{ $data->barcode}} ({{ $data->item[0]->item_name }})</li>
				@endforeach


			</ul>
		</div>
	</div>
</div>











<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/sweetalert.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>
<script type="text/javascript">
	$(function(){



	});
</script>
</body>
</html>	