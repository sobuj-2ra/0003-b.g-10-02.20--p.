@if(count($errors) > 0)
	@foreach($errors->all() as $error)

		<div class="alert alert-danger">{{ $error }}</div>

	@endforeach
@endif


@if(session()->has('message'))
	<div class="callout callout-success alert alert-success">
	  <h4>Message!</h4>
	  {{ session('message') }}
	</div>
@endif

@if(session()->has('success'))
	<div class="callout callout-success alert alert-success">
	  <h4>Success!</h4>
	  {{ session('success') }}
	</div>
@endif

@if(session()->has('danger'))
	<div class="callout callout-danger alert alert-danger">
	  <h4>Error!</h4>
	  {{ session('danger') }}
	</div>
@endif
@if(session()->has('warning'))
	<div class="callout callout-warning alert alert-warning">
	  <h4>Warning!</h4>
	  {{ session('warning') }}
	</div>
@endif
@if(session()->has('custom-error'))
	<div class="">
	  <h4>Success!</h4>
	  {{ session('custom-error') }}
	</div>
@endif