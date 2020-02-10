@extends('admin.app')

@section('title','User add')

@section('extra_css')
    <link rel="stylesheet" href="{{ asset('public/admin_asset/plugins/iCheck/all.css') }}">
@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Add Employee
      </h1>
      <a href="{{ route('users.index') }}" class="btn btn-success pull-right ">List</a>
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
        <form role="form" id="ajax_form" action="{{ route('users.store') }}" method="POST" enctype="multipart/form-data">
          <div class="box-body">
            {{ csrf_field() }}

            <div class="form-group">
              <label for="admin_name">Employee Name</label>
              <input type="text" name="name" class="form-control" id="admin_name" placeholder="Enter Employee Name" value="{{ old('name') }}" required="">
            </div>

            <div class="form-group">
              <label for="employee_id">Employee Id</label>
              <input type="text" data-inputmask="'mask': '999.999'" data-mask name="employee_id" class="form-control" id="employee_id" placeholder="Enter Employee id" value="{{ old('employee_id') }}" required="">
              <span id="employeeError" class="bg-danger"></span>
            </div>

            <div class="form-group">
              <label for="password">password</label>
              <input type="text" id="password" name="password" class="form-control" placeholder="password" value="{{ old('password') }}">
            </div>

            <div class="form-group">
              <label for="group">Group</label>
              <select name="group" class="form-control" required="">
              	<option value="">Select</option>
              	<option value="watcher">watcher</option>
              	<option value="packer">packer</option>
              	<option value="manager">manager</option>
              </select>
            </div>

            <div class="form-group">
              <label for="">Assign Page</label> <br>
              @foreach ($permissions as $permission)
                <label><input type="checkbox" name="permission[]" class="flat-red" value="{{ $permission->id }}">  {{ $permission->page_name }}  </label>
              @endforeach
            </div>

            <div class="form-group">
              <label for="image">image</label>
              <input type="file" id="image" name="image" class="form-control" onchange="document.getElementById('output').src = window.URL.createObjectURL(this.files[0])" accept="image/*" required="">
              <img id="output" height="150px" width="auto" /><br>
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
  <script src="{{ asset('public/admin_asset/plugins/iCheck/icheck.min.js') }}"></script>
  <script type="text/javascript">
    $(function () {
      //Flat red color scheme for iCheck
         $('input[type="checkbox"].flat-red').iCheck({
           checkboxClass: 'icheckbox_flat-green',
           radioClass   : 'iradio_flat-green'
         })
    })
  </script>

<script type="text/javascript">
	$(function(){
		//Datemask dd/mm/yyyy
		$('#datemask').inputmask('dd-mm-yyyy', { 'placeholder': 'dd-mm-yyyy' });
		$('#employee_id,#phone').inputmask();

    $('#employee_id').on('blur',function(){
      var employee_id = $('#employee_id').val();
      var _token = $('input[name="_token"]').val();

      //console.log(employee_id,_token);
      $.ajax({
        url: "{{ route('employeeIdChcek') }}",
        type: 'POST',
        dataType: 'json',
        data: {employee_id:employee_id,_token:_token},
        success: function(data){
          //console.log(data);
          $('#employeeError').html(data.message);
        }
      });
    });

    $('#email').on('blur paste',function(){
      var email = $('#email').val();
      var _token = $('input[name="_token"]').val();

      //console.log(employee_id,_token);
      $.ajax({
        url: "{{ route('empolyeeEmailCheck') }}",
        type: 'POST',
        dataType: 'json',
        data: {email:email,_token:_token},
        success: function(data){
          //console.log(data);
          $('#emailError').html(data.message);
        }
      });
    });

    $('#phone').on('blur paste',function(){
      var phone = $('#phone').val();
      var _token = $('input[name="_token"]').val();

      //console.log(employee_id,_token);
      $.ajax({
        url: "{{ route('employeePhnCheck') }}",
        type: 'POST',
        dataType: 'json',
        data: {phone:phone,_token:_token},
        success: function(data){
          //console.log(data);
          $('#phnError').html(data.message);
        }
      });
    });



    
    
	});
</script>
@endsection