<!DOCTYPE html>
<html>
<head>
	<title>Scanner</title>

	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	
</head>
<body>
@include('includes.buttons')
<div id="handheld">
	<div class="container pt-3 h-100">
		<div class="row">
			<div class="col-12">
				<div class="list-group">

					@if (count($scanners) > 0)
						@foreach ($scanners as $scanner)
							<a href="{{ route('handheldAllData',$scanner->id) }}" class="list-group-item">Scanner Id: {{ $scanner->device_id }}</a>
						@endforeach
					@endif

				  
				  
				</div>
			</div>
		</div>
	</div>

</div>











<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>
<script type="text/javascript">
	// location.reload();
</script>

</body>
</html>	