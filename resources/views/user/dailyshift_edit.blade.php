<!DOCTYPE html>
<html>
<head>
	<title>Daily Shift</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/fontawesome.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/sweetalert.css') }}">
 	<link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
	<meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body>
@include('includes.buttons')

<div class="container pt-3">
	<form method="POST" action="{{ route('updateDailyShift',$current_shift->id) }}" id="DailyShiftForm">
		<div class="row">
			@csrf
			@method('PUT')
			<div class="col-12">
				 @include('includes.messages')
			</div>
			<div class="col-4">
				<label for="Shift" class="font-weight-bold">Shift</label>
				<select class="custom-select" name="shift" required="" id="Shift" disabled="">
					@if (count($shifts) > 0)
				  		<option value="">Select Shift</option>
						  @foreach ($shifts as $shift)
						  	<option 
						  		value="{{ $shift->shift_number }}"
						  		{{ ($shift->shift_number == $current_shift->shift) ? 'selected' : '' }} 

						  	>{{ $shift->shift_number }} ({{ $shift->shift_start}}-{{ $shift->shift_end }})</option>
						  @endforeach
					@else
						<option>No Shift in database</option>
					@endif
				</select>

			</div>

			<div class="col-4">
				<label for="machine" class="font-weight-bold">Machine</label>
				<select class="custom-select" name="machine" required="" id="machine" disabled="">
					@if (count($machines) > 0)
				  		<option value="">Select machine</option>
						  @foreach ($machines as $machine)
						  	<option 
						  		value="{{ $machine->number }}"
						  		{{ ($machine->number == $current_shift->machine) ? 'selected' : '' }} 

						  	>{{ $machine->number }}</option>
						  @endforeach
					@else
						<option>No Machine in database</option>
					@endif
				</select>
				{{-- because disabled attr dont get/post --}}
				<input type="hidden" name="machine" value="{{$current_shift->machine}}">
			</div>

			<div class="col-4">
				<label for="production_date" class="font-weight-bold">Production Date:</label>
				<input type="text" name="production_date" class="form-control d-inline pull-right" id="datepicker" value="{{ \Carbon\Carbon::parse($current_shift->production_date)->toDateString() }}" >
			</div>

			<div class="col-6">
				<label for="item_group" class="font-weight-bold">Item_group</label>
				<select class="custom-select" name="item_group" required="" id="item_group">
					@if (count($items_group) > 0)
				  		<option value="">Select item Group</option>
						  @foreach ($items_group as $item)
						  	<option 
						  		value="{{ $item->group_name }}"
								{{ ($item->group_name == $current_shift->getitem->group_name) ? 'selected' : '' }} 
						  		>{{ $item->group_name }}</option>
						  @endforeach
					@else
						<option>No items</option>
					@endif
				</select>
			</div>

			<div class="col-6">
				<label for="item" class="font-weight-bold">Item</label>
				<select class="custom-select" name="item" required="" id="item">
				  		<option value="">Select item</option>
				</select>
			</div>
		</div>
		<div class="row mt-3">

			<div class="col-12 live__scroll">
				<h5>Current Watcher</h5>
				<div class="row no-gutters watcher-packer dragscroll" style="width: 100%; height: auto; overflow: scroll; cursor: grab; cursor : -o-grab; cursor : -moz-grab; cursor : -webkit-grab;">
					@foreach ($current_shift->workers as $current_watcher)
						@if ($current_watcher->group == 'watcher')
							<div class="col-2 live__scroll--box nopad">
								<label class="image-checkbox image-checkbox-checked">
								    <img class="img-responsive d-block" src="{{ asset('/public/storage/employees/'.$current_watcher->image) }}" alt="{{ $current_watcher->name }}" height="100px" width="auto">
								    <input type="checkbox" checked="" name="watcher[]" value="{{ $current_watcher->id }}" class="" >
								    <i class="fa fa-check hidden d-none"></i>
								    <span class="badge badge-danger">{{ $current_watcher->name }}</span>
								</label>
							</div>
						@endif
					@endforeach
				</div>
			</div>

			<div class="col-12 live__scroll">
				<h5>Additional Watcher</h5>
				<div class="row no-gutters watcher-packer dragscroll" style="width: 100%; height: auto; overflow: scroll; cursor: grab; cursor : -o-grab; cursor : -moz-grab; cursor : -webkit-grab;">
					@foreach ($watchers as $watcher)
						<div class="col-2 live__scroll--box nopad">
							<label class="image-checkbox">
							    <img class="img-responsive d-block" src="{{ asset('public/storage/employees/'.$watcher->image) }}" alt="{{ $watcher->name }}" height="100px" width="auto">
							    <input type="checkbox" name="watcher[]" value="{{ $watcher->id }}" class="" >
							    <i class="fa fa-check hidden d-none"></i>
							    <span class="badge badge-danger">{{ $watcher->name }}</span>
							</label>
						</div>
					@endforeach
				</div>
			</div>

			<div class="col-12 live__scroll">
				<h5>Current Packer</h5>
				<div class="row no-gutters watcher-packer dragscroll" style="width: 100%; height: auto; overflow: scroll; cursor: grab; cursor : -o-grab; cursor : -moz-grab; cursor : -webkit-grab;">
					@foreach ($current_shift->workers as $current_packer)
						@if ($current_packer->group == 'packer')
							<div class="col-2 live__scroll--box nopad">
								<label class="image-checkbox">
								    <img class="img-responsive d-block" src="{{ asset('public/storage/employees/'.$current_packer->image) }}" alt="{{ $current_packer->name }}" height="100px" width="auto">
								    <input type="checkbox" checked="" name="packer[]" value="{{ $current_packer->id }}" class="">
								    <i class="fa fa-check hidden d-none"></i>
								    <span class="badge badge-danger">{{ $current_packer->name }}</span>
								</label>
							</div>
						@endif
					@endforeach
				</div>
			</div>

			<div class="col-12 live__scroll">
				<h5>Additional Packer</h5>
				<div class="row no-gutters watcher-packer dragscroll" style="width: 100%; height: auto; overflow: scroll; cursor: grab; cursor : -o-grab; cursor : -moz-grab; cursor : -webkit-grab;">
					@foreach ($packers as $packer)
						<div class="col-2 live__scroll--box nopad">
							<label class="image-checkbox">
							    <img class="img-responsive d-block" src="{{ asset('public/storage/employees/'.$packer->image) }}" alt="{{ $packer->name }}" height="100px" width="auto">
							    <input type="checkbox" name="packer[]" value="{{ $packer->id }}" class="">
							    <i class="fa fa-check hidden d-none"></i>
							    <span class="badge badge-danger">{{ $packer->name }}</span>
							</label>
						</div>
					@endforeach
				</div>
			</div>

			<div class="col-12 mb-5">
				<button type="submit" class="btn btn-success" id="ButtonConfirm">Submit</button>
				<a href="{{ route('singlemachine',$current_shift->machine) }}" class="btn btn-danger allreset">Cancel</a>
			</div>

		</div>
	</form>
</div>



<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/dragscroll.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/sweetalert.min.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>
<script type="text/javascript">

	$('#datepicker').datepicker({
	  autoclose: true,
	  format:'yyyy-mm-dd',
	})
	// image gallery
    // init the state from the input
    $(".image-checkbox").each(function () {
        if ($(this).find('input[type="checkbox"]').first().attr("checked")) {
            $(this).addClass('image-checkbox-checked');
        } else {
            $(this).removeClass('image-checkbox-checked');
        }
    });

    // sync the state to the input
    $(".image-checkbox").on("click", function (e) {
        $(this).toggleClass('image-checkbox-checked');
        var $checkbox = $(this).find('input[type="checkbox"]');
        $checkbox.prop("checked", !$checkbox.prop("checked"))

        e.preventDefault();
    });
    function checkIfallChecked(){
    	// console.log($('input[name="packer[]"]:checked').length);
    	console.log($('option:selected').length);
        if ( ($('input[name="watcher[]"]:checked').length >= 1) && ($('input[name="packer[]"]:checked').length >= 1) && ($('option:selected').length == 4))
        {

            return true;
        }else{
        	return false;
        }
    }


    $("#ButtonConfirm").on("click",function(e){
    	e.preventDefault();
    	if(checkIfallChecked()){
    		swal({
    		  title: "Are you sure !!",
    		  text: "old info of this machine will be replaced",
    		  type: "info",
    		  showCancelButton: true,
    		  closeOnConfirm: false,
    		  showLoaderOnConfirm: true
    		},

    		function(isConfirm){
    		  if (isConfirm){
    		  	$("#DailyShiftForm").submit();
    		  } else {
    		    swal("Cancelled", "Cancelled suucessfuly :)", "error");
    		  }
    		});
    	}else{
    		swal("Please select all the fields");
    	}
		
    });

        $("#item_group").on('change',function(){
        	var item_group = $(this).find(':selected').val();
        	var _token = $('meta[name="csrf-token"]').attr('content');
        	console.log(item_group,_token);

        	$.ajax({
        		url: '{{ route('getItemByGrName') }}',
        		type: 'POST',
        		dataType: 'json',
        		data: {item_group:item_group,_token:_token },
        		success: function(data){
        			// console.log(data);
        			 var items = `<option value="">Select Item</option>`;
        			 $.each(data, function(index, item) {
        			    items += `<option value='${item.item_code}'>${item.item_code} (${item.item_name})</option>`;
        			 });
        			 $('#item').html(items);
        		},
    	    	error: function (xhr, ajaxOptions, thrownError) {
    	    		console.log(thrownError);
    	    		swal("Error!", "There was an error", "error");
                }
        	});
        });

        function changeItem(){
             var item_group = $('#item_group').find(':selected').val();
             var _token = $('meta[name="csrf-token"]').attr('content');

             $.ajax({
                url: '{{ route('getItemByGrName') }}',
                type: 'POST',
        		dataType: 'json',
        		data: {item_group:item_group,_token:_token },
                success: function(data){
        			// console.log(data);
        			 var items = `<option value="">Select Item</option>`;
        			 $.each(data, function(index, item) {
		              items += "<option value="+ item.item_code +" "+ matchData(item.item_code, {{ $current_shift->item }})   +">"+ item.item_code +" ("+item.item_name+")</option>";
		           });
        			 $('#item').html(items);
        		},
    	    	 error: function (xhr, ajaxOptions, thrownError) {
    	    		console.log(thrownError);
    	    		swal("Error!", "There was an error", "error");
                }
             });
           }

        changeItem();

        function matchData(data1,data2){
          if(data1 != data2){
            return '';
          }else{
            return ' selected ';
          }
        }


    //# sourceURL=pen.js
</script>
</body>
</html>	