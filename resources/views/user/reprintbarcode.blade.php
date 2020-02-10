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


<div class="container pt-3 h-100">
	<div class="row">
		<div class="col-12">
			

			
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

		function Barcode(){
			var barcodeString = '';
			var last_num    = {{ 11111+1 }};
			var grade       = (typeof($('input[name=grade]:checked').val()) !="undefined") ? $('input[name=grade]:checked').val() : '';
			var total_print = $('input[name=totalbarcodetoprint]:checked').val();
			var printer    = $('input[name=printer]:checked').val();
			var packer     = (typeof($('input[name=packer]:checked').val()) !="undefined") ? $('input[name=packer]:checked').val() : '';
			var watcher    = (typeof($('input[name=watcher]:checked').val()) !="undefined") ? $('input[name=watcher]:checked').val() : '';
			var machine    = $('#machineNUmber').text();
			var shift      = $('#shift').text();
			//console.log(machine);

			barcodeString = last_num+getdate()+shift+grade+machine+'_A'+watcher.replace('.','')+packer.replace('.','');
			$('#barcodeString').html(barcodeString);
		}

		function getdate() {
			var d = new Date();
			var day = d.getDate();
			var month = d.getMonth();
			var year = d.getFullYear().toString().substr(-2);
			//console.log(year,month,day);
			return year+month+day;
		}

		function checkIfallChecked(){
		    if ( $('input:radio:checked').size() == 5 )    
		        return true;
		    return false;
		}

		$('input[name=grade]').on('change',function() {
			Barcode();
			//console.log($('input[name=grade]:checked').val());
		});

		$('input[name=totalbarcodetoprint]').on('change',function() {
			Barcode();
			//console.log($('input[name=totalbarcodetoprint]:checked').val());
		});

		$('input[name=packer]').on('change',function() {
			Barcode();
			//console.log($('input[name=packer]:checked').val());
		});

		$('input[name=watcher]').on('change',function() {
			Barcode();
			//console.log($('input[name=watcher]:checked').val());
		});

		$('#printBrcode').on('click',function(){
			//console.log(checkIfallChecked());
			if(checkIfallChecked()){

				swal({
				  title: "Are you sure !!",
				  type: "info",
				  showCancelButton: true,
				  closeOnConfirm: false,
				  showLoaderOnConfirm: true
				},

				function(isConfirm){
				  if (isConfirm){
				    var _token  = $('meta[name="csrf-token"]').attr('content');
				    var grade    = (typeof($('input[name=grade]:checked').val()) !="undefined") ? $('input[name=grade]:checked').val() : '';
				    var total_print = $('input[name=totalbarcodetoprint]:checked').val();
				    var printer    = $('input[name=printer]:checked').val();
				    var packer   = (typeof($('input[name=packer]:checked').val()) !="undefined") ? $('input[name=packer]:checked').val() : '';
				    var watcher  = (typeof($('input[name=watcher]:checked').val()) !="undefined") ? $('input[name=watcher]:checked').val() : '';
				    var machine  = $('#machineNUmber').text();
				    var shift    = $('#shift').text();

				    $.ajax({
				    	url: '{{ route('generateBarcode') }}',
				    	type: 'POST',
				    	dataType: 'json',
				    	data: {
				    		grade: grade,
				    		total_print: total_print,
				    		printer: printer,
				    		packer: packer,
				    		watcher: watcher,
				    		machine: machine,
				    		shift: shift,
				    		_token: _token,

				    	},
				    	success: function(data){
				    		//console.log(data);
				    		swal("Done!", "Barcode Printed Successfully", "success");
				    		location.reload();
				    	},
				    	error: function (xhr, ajaxOptions, thrownError) {
				    		console.log(thrownError);
	    	                swal("Error!", "There was an error", "error");
	    	            }
				    });
				  } else {
				    swal("Cancelled", "Cancelled suucessfuly :)", "error");
				  }
				});

			}else{
				swal("Please select all the fields");
				//alert('Please select all the fields');
			}
		});


		$("#resetAll").on('click',function(){
			$('input').prop('checked', false);
			Barcode();
			$('#barcodeString').html('');
		});


		

		

		//checkIfallChecked();

	});
</script>
</body>
</html>	