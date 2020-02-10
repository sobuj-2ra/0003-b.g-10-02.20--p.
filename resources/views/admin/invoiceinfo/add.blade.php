@extends('admin.app')

@section('title','Add Machine')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Add Machine
      </h1>
      <a href="{{ route('machines.index') }}" class="btn btn-success pull-right ">List</a>
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
        <form role="form" id="ajax_form" action="{{ route('machines.store') }}" method="POST" enctype="multipart/form-data">
          <div class="box-body">
            {{ csrf_field() }}

            <div class="form-group">
              <label for="name">Machine Name</label>
              <input type="text" name="name" class="form-control" id="name" placeholder="Enter machine Name" value="{{ old('name') }}" required="">
            </div>

            <div class="form-group">
              <label for="number">Machine number</label>
              <input type="text" name="number" class="form-control" id="number" placeholder="Enter machine number" value="{{ old('number') }}" required="">
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
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.js') }}"></script>
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.numeric.extensions.js') }}"></script>
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script>

<script type="text/javascript">
	$(function(){

    $('#number').on('keyup',function(){
      var number = $('#number').val();
      var _token = $('input[name="_token"]').val();

      //console.log(number,_token);
      $.ajax({
        url: "{{ route('checkMachineId') }}",
        type: 'POST',
        dataType: 'json',
        data: {number:number,_token:_token},
        success: function(data){
          console.log(data);
          $('#deviceError').html(data.message);
        }
      });
    });

    
    
	});
</script>
@endsection