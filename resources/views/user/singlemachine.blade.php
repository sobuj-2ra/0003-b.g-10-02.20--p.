<?php
$useragent=$_SERVER['HTTP_USER_AGENT'];
$convertlink=preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i',substr($useragent,0,4));
if($convertlink)
{
	//echo "mobile";
	$printlink='<button class="btn btn-primary mt-2" id="printBrcode">Print</button>';
}
else{
   //echo "desktop";
   	$printlink='<button class="btn btn-info mt-2 " type="submit">PC Print</button>';
}
?>




{{-- <!DOCTYPE html> --}}

<html>
<head>
	<title>{{ $machine->number }}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/sweetalert.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
 	<link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}">
	<meta name="csrf-token" content="{{ csrf_token() }}">

	<!-- Scripts -->
	<script src="{{ asset('public/js/app.js') }}"></script>
</head>
<body>

{{-- @include('includes.buttons') --}}
@extends('includes.machine_edit')


<div class="container pt-3 h-100" id="SingleMachine">
	@section('single_machine_edit')
		@if ($worker_data != NULL && count($worker_data->workers) > 0)
			<a href="{{ route('dailyshiftEdit',$machine->number) }}" class="btn btn-danger">Edit Details</a>
		@endif
	@endsection


	<?php if(!$convertlink) { ?>
    {!! Form::open(['url' => '/generateBarcodeweb']) !!}
    <?php } ?>

	<div class="row">
		<div class="col-sm-10">
			@include('includes.messages')
			<div class="row d-flex ">
				{{-- {{ dd($worker_data) }} --}}
				<div class="col-2">
				
					Shift:  <span id="shift">@{{ shift || shiftPlaceHolde }}</span>
				</div>
				<div class="col-2">
					{{ $machine->name }}(<span id="machineNUmber">{{ $machine->number }}</span>)
				</div>
				<div class="col-3">
					Item:<span>@{{ item || itemPlaceHolde }}</span>
				</div>

				<div class="col-5">
					Production Date:
					<input type="text" name="production_date" class="form-control d-inline pull-right" id="datepicker" value="{{ ($worker_data != null) ? \Carbon\Carbon::parse($worker_data->production_date)->toDateString() : "Not assaigned"}}">

				</div>

				<?php if(!$convertlink) { ?>
				<input type="hidden" name="shift" class="form-control d-inline pull-right" value="{{$machine->getShift['shift']}}">
				<input type="hidden" name="machine" class="form-control d-inline pull-right" value="{{$machine->number}}">
				<input type="hidden" name="item" class="form-control d-inline pull-right" value="{{$machine->getShift['item']}}">
                <?php } ?>


				<div class="col-12">
					<h4 class="text-muted">Grade</h4>
				</div>
				<div class="col-12">
					<div class="toggle">
						<input type="radio" name="grade" value="A" id="A" required />
						<label for="A">A</label>
						<input type="radio" name="grade" value="B" id="B" required />
						<label for="B">B</label>
						<input type="radio" name="grade" value="C" id="C" required />
						<label for="C">C</label>
					</div>
				</div>




				<div class="col-12">
					<h4 class="text-muted">Packers</h4>
				</div>


				<div class="col-12">
					<div class="row">
						<div class="toggle">
							<span v-for="(single_worker,index) in workers" v-if="single_worker.group == 'packer'">
								<input type="radio"  v-if="single_worker.group == 'packer'" name="packer" :value="single_worker.employee_id" :id="single_worker.employee_id" required />
								<label v-if="single_worker.group == 'packer'" :for="single_worker.employee_id">
									<img :src="single_worker.image" :alt="single_worker.employee_id" height="100" width="100" class=" d-block">
									@{{ single_worker.name }}
								</label>
							</span>
						</div>
					</div>
				</div>

				<div class="col-12">
					<h4 class="text-muted">Watcher</h4>
				</div>

				<div class="col-12">
					<div class="row">
						<div class="toggle">
							<span v-for="(single_worker,index) in workers" v-if="single_worker.group == 'watcher'">
								<input type="radio"  v-if="single_worker.group == 'watcher'" name="watcher" :value="single_worker.employee_id" :id="single_worker.employee_id" required />
								<label v-if="single_worker.group == 'watcher'" :for="single_worker.employee_id">
									<img :src="single_worker.image" :alt="single_worker.employee_id" height="100" width="100" class=" d-block">
									@{{ single_worker.name }}
								</label>
							</span>
						</div>
					</div>
				</div>

				<div class="col-12">
					<h4 v-if="Object.keys(workers).length === 0" class="text-white lead p-2 badge-info">Watcher/Packer Not Assigned</h4>
				</div>


				<div class="col-12">
					<h4 class="text-muted">Select Printer</h4>
					<div class="row">
						@if (!empty($printer))
							<div class="toggle">
								@foreach ($printer as $single_printer)
									<input required type="radio" name="printer" value="{{ $single_printer->device_ip }}" id="{{ $single_printer->device_id }}" />
									<label for="{{ $single_printer->device_id }}">{{ $single_printer->device_id }}</label>
								@endforeach
							</div>
						@endif
					</div>
				</div>
			</div>
		</div>


		<div class="col-sm-2">
			<div class="row">
				<div class="col-12">
					Select Numbers to print
				</div>

				<div id="donate" class="col-12">
					<div class="row no-gutters mx-auto">
						@for ($i = 1; $i <21 ; $i++)
							<div class="col-6 totalNum">
								<label class="">
									<input required type="radio" name="totalbarcodetoprint" class="" value="{{$i }}"> <span>{{$i }}</span>
								</label>
							</div>
						@endfor
					</div>
				</div>

{{-- 				<div class="col-12">
					<strong>Barcode to print</strong>
					<span id="barcodeString"></span>
				</div> --}}

				<div class="col-12">
					<strong>Total Production</strong>
					<span>{{ sprintf('%06d',$last_barcode) }}</span>
				</div>

				<div class="col-12">

					<div id="pagecontent">
						000077777
					</div>

					<?php echo $printlink; ?>

					<!--
					<button class="btn btn-primary mt-2" id="printBrcode">Print</button>
					<button class="btn btn-danger mt-2 " onClick="window.print()" type="reset">PC Print</button>
                    -->

					<button class="btn btn-danger mt-2 " id="resetAll" type="reset">Reset</button>



					<a href="#" id="reprintBarcode" data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-danger mt-3">Reprint a barcode</a>
				</div>


			</div>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Reprint</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <input type="text" id="BarcodeToRePrint" name="BarcodeToRePrint" placeholder="Enter Barcode to print" class="form-control">
        <hr>
        <label>Or Select form here</label>
        <select name="avalibaleBarcodeToPrint" id="avalibaleBarcodeToPrint" class="form-control">
        	<option>Select one Barcode</option>
        </select>

        <strong>Select Printer</strong>


		<div class="row">
			<div class="col-12">
				@if (!empty($printer))
					<div class="toggle">
						@foreach ($printer as $single_printer)
							<input type="radio" name="printer" id="printer-{{ $single_printer->device_id }}" value="{{ $single_printer->device_ip }}" >
							<label for="printer-{{ $single_printer->device_id }}">{{ $single_printer->device_id }}</label>
						@endforeach
					</div>
				@endif
			</div>
		</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="sendReprintCommand">RePrint</button>
      </div>
    </div>
  </div>
</div>



	<?php if(!$convertlink) { ?>
       {!! Form::close() !!}
    <?php } ?>





<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/sweetalert.min.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>
<script type="text/javascript">
	$(function(){
		//Date picker
	    $('#datepicker').datepicker({
	      autoclose: true,
	      format:'yyyy-mm-dd'
	    })

	    // console.log($("#datepicker").val());

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
			// $('#barcodeString').html(barcodeString);
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

		function checkIfmodalallChecked(){
		    if ( $('.modal-body input:radio:checked').size() == 1 )
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

				var _token  = $('meta[name="csrf-token"]').attr('content');
				var grade    = (typeof($('input[name=grade]:checked').val()) !="undefined") ? $('input[name=grade]:checked').val() : '';
				var total_print = $('input[name=totalbarcodetoprint]:checked').val();
				var printer    = $('input[name=printer]:checked').val();
				var packer   = (typeof($('input[name=packer]:checked').val()) !="undefined") ? $('input[name=packer]:checked').val() : '';
				var watcher  = (typeof($('input[name=watcher]:checked').val()) !="undefined") ? $('input[name=watcher]:checked').val() : '';
				var machine  = $('#machineNUmber').text();
				var shift    = $('#shift').text();
				var production_date    = $('#datepicker').val();

				// console.log(_token,grade,total_print,printer,packer,watcher,machine,shift);
				var string = `watcher: ${watcher} || packer: ${packer} || grade: ${grade} || printer: ${printer} || total: ${total_print}`;



				swal({
				  title: "Are you sure !!",
    		  	  text: string,
				  type: "info",
				  showCancelButton: true,
				  closeOnConfirm: false,
				  showLoaderOnConfirm: true
				},

				function(isConfirm){
				  if (isConfirm){

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
				    		production_date: production_date,
				    		_token: _token,

				    	},
				    	success: function(data){
				    		console.log(data.bar);
							var d = data.bar.length;
							var i = 0;
							for (i = 0; i<=d; i++){
								if (i === d) {
									break;
								}
								setTimeout(function(i) {

								//console.log(i);
								// string to hex barcode
								var str=data.bar[i].barcode;
								var results = "";
								for (var j=0; j<str.length; j++) {
									hex = str.charCodeAt(j).toString(16);
									results += (hex).slice(-4);

								}
								//console.log(results);
								// string to hex batch
								var strs=data.bar[i].batch_no;
								var result_batch = "";
								for (var k=0; k<strs.length; k++) {
									hex = strs.charCodeAt(k).toString(16);
									result_batch += (hex).slice(-4);
								}
								console.log(results);
								var link ='1b411b50531b574b3278323230336470691b25321b48303535391b5630303136311b5031321b5030341b52444240302c3031342c3032342c'+result_batch+'1b25321b48303536391b5630303133301b42473031303838'+results+'1b25321b48303535391b5630303032351b5030321b52444240302c3031342c3032342c'+results+'1b51311b5a03';
								//$link = '1b411b50531b574b3278323230336470691b25321b48303535391b5630303136311b5031321b5030341b52444140302c3031342c3032342c3131323334354530333030303030301b25321b48303536391b5630303133301b424730323038383130414243373839373839373839371b25321b48303535391b5630303032351b5030321b52444140302c3031342c3032342c303132333435453033303030303030343741424344454647481b51311b5a03';
								var linkUrl = 'http://localhost:8080/Printer/SendRawData?__encoding=hex&__send_data='+link+'';

								// var delayInMilliseconds = 500; //0.5 second
								// setTimeout(function() {
									const Http = new XMLHttpRequest();
									const url=linkUrl;
									Http.open("GET", url);
									Http.send();
									Http.onreadystatechange=(e)=>{
										console.log(Http.responseText);
									}

								// }, delayInMilliseconds);

								}, i * 200, i);
							}

							var delayInMilliseconds = d * 1000; //2 second
							setTimeout(function() {
								// pdf print
								var route = "{{ route('allmachine') }}";
								var pdf = "/" + data.pdf;
								//window.location.href = route+pdf;
								// pdf end


								window.location.href = route+pdf;
								swal("Done!", "Barcode Printed Successfully", "success");
							}, delayInMilliseconds);
				    		// window.open(
				    		//   route+pdf,
				    		//   '_blank' // <- This is what makes it open in a new window.
				    		// );
				    		 //location.reload();


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

		//Refresh the $.browser
		window.addEventListener( "pageshow", function ( event ) {
		  var historyTraversal = event.persisted ||
                 ( typeof window.performance != "undefined" &&
                      window.performance.navigation.type === 2 );
		  if ( historyTraversal ) {
		    // Handle page restore.
		    window.location.reload();
		  }
		});



		$("#resetAll").on('click',function(){
			$('input').prop('checked', false);
			Barcode();
			$('#barcodeString').html('');
		});

		function reprintBarcode() {
			var machine    = $('#machineNUmber').text();
			var shift      = $('#shift').text();
			var _token  = $('meta[name="csrf-token"]').attr('content');

			$.ajax({
				url: '{{ route('getCurrentBarcodedata') }}',
				type: 'POST',
				dataType: 'JSON',
		    	data: {
		    		machine: machine,
		    		shift: shift,
		    		_token: _token,

		    	},
		    	success: function(data){
		    		// console.log(data);

		    		var barcode = `<option value="">Select Barcode</option>`;
			          $.each(data, function(index, data) {
			             barcode += `<option value='${data.barcode}'>${data.barcode}</option>`;
			          });
			         // console.log(barcode);
			          $('#avalibaleBarcodeToPrint').html(barcode);

		    	},
		    	error: function (xhr, ajaxOptions, thrownError) {
		    		console.log(thrownError);
	                //swal("Error!", "There was an error", "error");
	            }
			});

		}

		$("#reprintBarcode").on('click',function(){
			reprintBarcode();
		});

		$("#avalibaleBarcodeToPrint").change(function() {
			//console.log($("#avalibaleBarcodeToPrint").val());
			$("#BarcodeToRePrint").val($("#avalibaleBarcodeToPrint").val());
		});


		$('#sendReprintCommand').on('click',function(){
			//console.log(checkIfallChecked());
			if(checkIfmodalallChecked()){

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
				    var printer    = $('.modal-body input[name=printer]:checked').val();
				    var barcode  = $("#BarcodeToRePrint").val();
				    var machine  = $('#machineNUmber').text();

					window.open("reprint-barcode/"+printer+'/'+barcode+'/'+machine, "_self");
				    // $.ajax({
				    // 	url: '{{ route('requestToReprintBarcode') }}',
				    // 	type: 'POST',
				    // 	dataType: 'json',
				    // 	data: {
				    // 		barcode: barcode,
				    // 		printer: printer,
				    // 		machine: machine,
				    // 		_token: _token
				    // 	},
				    // 	success: function(data){
				    // 		// console.log(data);
				    // 		swal("Done!", data.msg, "success");
				    // 		var route = "{{ route('pdfstream') }}";
				    // 		var pdf   = "/"+data.pdf;
				    // 		window.location.href = route+pdf;
				    // 		// location.reload();

				    // 	},
				    // 	error: function (xhr, ajaxOptions, thrownError) {
				    // 		console.log(thrownError);
				    // 		swal("Error!", "There was an error", "error");
	    	        //     }
				    // });
				  } else {
				    swal("Cancelled", "Cancelled suucessfuly :)", "error");
				  }
				});

			}else{
				swal("Please select a printer");
				//alert('Please select all the fields');
			}
		});






		//checkIfallChecked();

	});
</script>
<script>
	 const app = new Vue({
	    el: '#SingleMachine',
	    data: {
	    	barcode :{},
	    	shift: '',
	    	machine: '{{$machine->number}}',
	    	item: '',
	    	itemPlaceHolde: 'No Item Assigned',
	    	shiftPlaceHolde: 'No Shift Assigned',
	    	shift: '',
	    	watchers:{},
	    	packers:{},
	    	workers:{},
	    },

	    mounted(){
	    	this.getSnannedItem();
	    	// this.listen();

	    },

	    methods: {
	    	getSnannedItem(){
	    		axios.get('{{ route('getDailyShiftDetailsByMachine',$machine->number) }}')
	    		.then((res) => {
	    			// console.log(res.data);
	    			this.updateData(res.data);

	    			// var dummy = setInterval(this.getSnannedItem(),5000);
	    			// clearInterval(dummy);
	    		})
	    		.catch((err) =>{
	    			console.log(err);
	    		})
	    	},

	    	listen(){
	    		// Echo.channel('machine.'+this.machine)
	    		// 	.listen('NewWorkerAdded',(data)=>{
	    		// 		//console.log(data);
	    		// 		this.getSnannedItem();
	    		// 	})
	    	},
	    	updateData(data){
	    		this.barcode = data;
	    		this.setMachineDetails(data);
	    		if(data.workers.length){
		    		this.SetWorkers(data.workers);
		    	}
	    	},

	    	SetWorkers(workers){
	    		this.workers = workers;
	    		// this.setPackers(workers);
	    		// console.log(workers);
	    	},
	    	setMachineDetails(data){
	    		this.shift = data.shift;
	    		this.item = data.item;
	    		this.shift = data.shift;
	    	}




	    }
	});
</script>


</body>
</html>
