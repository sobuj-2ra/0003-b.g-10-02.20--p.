@extends('admin.app')

@section('title','Add Shift')

@section('extra_css')
<!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="{{ asset('public/admin_asset/plugins/timepicker/bootstrap-timepicker.min.css') }}">
@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Add Shift
      </h1>
      <a href="{{ route('shifts.index') }}" class="btn btn-success pull-right ">List</a>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- general form elements -->
      <div class="box box-success">
        <div class="box-header with-border">
          @include('includes.messages')
          <div id="form_output"></div>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form role="form" id="ajax_form" action="{{ route('shifts.store') }}" method="POST" enctype="multipart/form-data">
          <div class="box-body">
            {{ csrf_field() }}

            <div class="form-group">
              <label for="shift_number">Shift Number</label>
              <input type="text" name="shift_number" class="form-control" id="shift_number" placeholder="Enter shift_number" value="{{ old('shift_number') }}" required="">
            </div>

            <div class="form-group bootstrap-timepicker">
              <label for="shift_start">Start Time</label>
              <input type="text" name="shift_start" class="form-control timepicker" id="shift_start" placeholder="Enter shift_start time" value="{{ old('shift_start') }}" required="">
              <span id="deviceError" class="bg-danger"></span>
            </div>

            <div class="form-group bootstrap-timepicker">
              <label for="shift_end">End Time</label>
              <input type="text" name="shift_end" class="form-control timepicker" id="shift_end" placeholder="Enter shift_end time" value="{{ old('shift_end') }}" required="">
              <span id="deviceError" class="bg-danger"></span>
            </div>

          </div>
          <!-- /.box-body -->

          <div class="box-footer">
            <button type="submit" id="add_data" class="btn btn-success">Submit</button>
          </div>
        </form>
      </div>
      <!-- /.box -->

      

    </section>
    <!-- /.content -->

@endsection

@section('extra_js')
<!-- InputMask -->
<script src="{{ asset('public/admin_asset/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>

<script type="text/javascript">
	$(function(){

    //Date picker
   //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })

    
    
	});
</script>
@endsection