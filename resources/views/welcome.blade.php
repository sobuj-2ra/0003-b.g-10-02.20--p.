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
    <div class="container d-flex h-100">
        <div class="row h-100 text-center justify-content-center align-items-center">
            <div class="col-12">
                @include('includes.messages')
                <div class="row text-center">
                    <div class="col-4 mb-3">
                        <a href="{{ route('dailyshift') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Shifts</h2>
                                    <p class="card-text">Click to go</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-4 mb-3">
                        <a href="{{ route('allmachine') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Machines</h2>
                                    <p class="card-text">Click to view all machine</p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-4 mb-3">
                        <a href="{{ route('stockouts') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Delivery Section</h2>
                                    <p class="card-text">Click to go</p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-4 mb-3">
                        <a href="{{ route('dashboard') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Admin Section</h2>
                                    <p class="card-text">Click to go</p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-4 mb-3">
                        <a href="{{ route('hand-held-section') }}" class="">
                            <div class="card text-white border-danger bg-danger p-1 text-center">
                                <div class="card-body">
                                    <h2 class="card-title">Hand Held Section</h2>
                                    <p class="card-text">Click to go</p>
                                </div>
                            </div>
                        </a>
                    </div>

                </div>
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
