<span class="floating-btn">
	<a href="{{ route('index') }}" class="btn btn-info">Home</a>
	<a href="{{ url()->previous() }}" class="btn btn-info">Back</a>
	@if (Auth::check())
		<a href="{{ route('logout') }}" class="btn btn-danger" onclick="event.preventDefault();
		                 document.getElementById('logout-form').submit();">Logout</a>

		<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
		    @csrf
		</form>
	@endif
</span>