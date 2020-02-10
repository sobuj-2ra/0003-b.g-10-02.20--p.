@extends('admin.app')

@section('title','Edit Device')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Edit Device
      </h1>
      <a href="{{ route('devices.index') }}" class="btn btn-success pull-right ">List</a>
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
        <form role="form" id="ajax_form" action="{{ route('devices.update',$device->id) }}" method="POST" enctype="multipart/form-data">
          <div class="box-body">
            {{ csrf_field() }}
            @method('PUT')

            <div class="form-group">
              <label for="device_name">Device Name</label>
              <input type="text" name="device_name" class="form-control" id="device_name" placeholder="Enter device Name" value="{{ $device->device_name }}" required="">
            </div>

            <div class="form-group">
              <label for="device_id">Device Code/ID</label>
              <input type="text" name="device_id" class="form-control" id="device_id" placeholder="Enter device Name" value="{{ $device->device_id }}" required="">
              <span id="deviceError" class="bg-danger"></span>
            </div>

            <div class="form-group">
              <label for="device_ip">Device Ip/Number</label>
              <input type="text" name="device_ip" class="form-control" id="device_ip" placeholder="Enter device Name" value="{{ $device->device_ip }}">
            </div>

            

            <div class="form-group">
              <label for="device_type">Device Type</label>
              <select name="device_type" class="form-control" required="">
              	<option value="">Select</option>
              	<option value="printer" {{ ($device->device_type == 'printer' ? 'selected' : '') }}>printer</option>
              	<option value="scanner" {{ ($device->device_type == 'scanner' ? 'selected' : '') }}>scanner</option>
              </select>
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
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.js') }}"></script>
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.numeric.extensions.js') }}"></script>
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script>

<script type="text/javascript">
	$(function(){
		//Datemask dd/mm/yyyy
		// $('[data-mask]').inputmask();

    $('#device_id').on('blur',function(){
      var device_id = $('#device_id').val();
      var _token = $('input[name="_token"]').val();

      //console.log(device_id,_token);
      $.ajax({
        url: "{{ route('checkDeviceId') }}",
        type: 'POST',
        dataType: 'json',
        data: {device_id:device_id,_token:_token},
        success: function(data){
          console.log(data);
          $('#deviceError').html(data.message);
        }
      });
    });




    
    
	});
</script>
@endsection