<!DOCTYPE html>
<html>
<head>
	<title>ALl Machine</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/fontawesome.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
	<meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body>
@include('includes.buttons')


<div class="container pt-3 h-100">
	<div class="row d-flex align-items-center text-center justify-content-center h-100">
			@if(count($is_macchine) < 1)
				<h2>Machine Not Found</h2>
			@else
			@foreach ($is_macchine as $single_machine)
				<a href="{{ route('singlemachine',$single_machine['number']) }}" class="col-3 pt-5 pb-5 bg-dark text-white d-block mr-1">{{ $single_machine['name'] }}({{ $single_machine['number'] }})</a>
			@endforeach
			@endif
	</div>
</div>



<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>
</body>
</html>
