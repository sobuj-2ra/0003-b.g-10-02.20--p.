<!DOCTYPE html>
<html>
<head>
	<title>Stockout</title>

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
			<div class="list-group">
			  <a href="#" id="AddNewSalesOrder" data-toggle="modal" data-target="#AddNewSalesOrderModal" class="list-group-item list-group-item-action active">
			    Add New
			  </a>

			  @if (count($temp_stockouts) > 0)
			  	@foreach ($temp_stockouts as $single_customer)
			  		<p href="#" class="list-group-item list-group-item-action">
			  			{{ $loop->iteration }}. {{ $single_customer->sales_order }}
			  			<a href="{{ route('generateInvoice',$single_customer->sales_order) }}" class="btn btn-primary float-right">Generate Invoice</a>
			  		</p>
			  	@endforeach
			  @else
			  	<p  class="list-group-item list-group-item-action disabled">0 Sales order</p>
			  @endif
			</div>
		</div>
	</div>
</div>


<!-- Modal -->
<div class="modal fade" id="AddNewSalesOrderModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Add New</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form id="salesOrderForm">

          <div class="form-group">
            <label for="name" class="col-form-label">Name:</label>
            <input type="text" id="name" class="form-control"  required="">
          </div>

          <div class="form-group">
            <label for="sales_order" class="col-form-label">sales_order:</label>
            <input type="text" id="sales_order" class="form-control"  required="">
          </div>

          <div class="form-group">
            <label for="transport_no" class="col-form-label">transport_no:</label>
            <input type="text" id="transport_no" class="form-control"  required="">
          </div>

          <div class="form-group">
            <label for="reference_no" class="col-form-label">reference_no:</label>
            <input type="text" id="reference_no" class="form-control"  required="">
          </div>

          <div class="form-group">
  			<input type="submit" id="submit" value="Add" class="btn btn-info">
  			<input type="reset" id="reset" value="Reset" class="btn btn-danger">
            
          </div>

        </form>




      </div>
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

		const form = document.querySelector('#salesOrderForm');

		form.addEventListener('submit',ConfirmAddNewSalesOrder);

		function ConfirmAddNewSalesOrder(e){
			e.preventDefault();
			swal({
			  title: "Are you sure !!",
			  type: "info",
			  showCancelButton: true,
			  closeOnConfirm: false,
			  showLoaderOnConfirm: true
			},
			function(isConfirm){
			  if (isConfirm){
			  	//console.log('ok')
			  	AddNewSalesOrder(e);
			  } 
			  else {
			  	$("#salesOrderForm").trigger('reset');
			  }
			});
		}



		function AddNewSalesOrder(e){
			e.preventDefault();
			//console.log('ok');
			var name         = $("#name").val();
			var sales_order  = $("#sales_order").val();
			var transport_no = $("#transport_no").val();
			var reference_no = $("#reference_no").val();
			var _token  = $('meta[name="csrf-token"]').attr('content');
			//console.log(name,sales_order,transport_no,reference_no);
			$.ajax({
				url: '{{ route('tempSalesOrder') }}',
				type: 'POST',
				dataType: 'json',
				data: {
					_token : _token,
					name : name,
					sales_order : sales_order,
					transport_no : transport_no,
					reference_no : reference_no,
				},
				success: function(data){
					swal("Done!", "New Order Added", "success");
					location.reload();
				},
		    	error: function (xhr, ajaxOptions, thrownError) {
		    		console.log(thrownError);
	                swal("Error!", "There was an error", "error");
	            }
			});
			



		}





	});
</script>
</body>
</html>	