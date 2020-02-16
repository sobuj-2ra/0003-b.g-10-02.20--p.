<!DOCTYPE html>
<html>
<head>
    <title>BGWP</title>

    <link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body>

<div class="bg-grey h-100">
    <div class="container">
        {{-- <div class="row h-100 text-center justify-content-center align-items-center">
            <div class="col-12">
                @include('includes.messages')
                <div class="row text-center">
                    <div class="col-4 mb-3">
                        @can('dailyshift_section')
                        <a href="{{ route('dailyshift') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Shifts</h2>
                                    <p class="card-text">Click to go</p>
                                </div>
                            </div>
                        </a>
                        @endcan
                    </div>
                    <div class="col-4 mb-3">
                        @can('machine_section')
                        <a href="{{ route('allmachine') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Machines</h2>
                                    <p class="card-text">Click to view all machine</p>
                                </div>
                            </div>
                        </a>
                        @endcan
                    </div>
                    <div class="col-4 mb-3">
                        @can('delivery_section')
                        <a href="{{ URL::to('delivery-section') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Delivery Section</h2>
                                    <p class="card-text">Click to go</p>
                                </div>
                            </div>
                        </a>
                        @endcan
                    </div>
                    <div class="col-4 mb-3">
                        @can('admin_section')
                        <a href="{{ route('dashboard') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Admin Section</h2>
                                    <p class="card-text">Click to go</p>
                                </div>
                            </div>
                        </a>
                        @endcan
                    </div>
                    <div class="col-4 mb-3">
                        @can('handheld_section')
                        <a href="{{ route('hand-held-section') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Hand Held Section</h2>
                                    <p class="card-text">Click to go</p>
                                </div>
                            </div>
                        </a>
                        @endcan
                    </div>
                </div>
            </div>

        </div> --}}
        
        <div class="col-md-12">
            <br>
            <br>
            <br>
            <div class="rows">
                @can('dailyshift_section')
                <div class=" col-md-6">
                   <a href="{{ route('dailyshift') }}" class="btn btn-danger btn-lg form-control" style="padding:15px">SHIFT</a>
                </div>
                <br>
                @endcan
                @can('machine_section')
                <div class="col-md-6">
                   <a href="{{ route('allmachine') }}" class="btn btn-danger btn-lg form-control" style="padding:15px">MACHINES</a>
                </div>
                <br>
                @endcan
                @can('delivery_section')
                <div class="col-md-6">
                   <a href="{{ URL::to('delivery-section') }}" class="btn btn-danger btn-lg form-control" style="padding:15px">DELIVERY SECTION</a>
                </div>
                <br>
                @endcan
                @can('admin_section')
                <div class="col-md-6">
                    <a href="{{ route('dashboard') }}" class="btn btn-danger btn-lg form-control" style="padding:15px">ADMIN SECTION</a>
                </div>
                <br>
                @endcan
                @can('handheld_section')
                <div class="col-md-6">
                    <a href="{{ route('hand-held-section') }}" class="btn btn-danger btn-lg form-control" style="padding:15px">HAND HELD SECTION</a>
                </div>
                <br>
                @endcan
            </div>
        </div>

    </div>
</div>




<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>
</body>
</html>
