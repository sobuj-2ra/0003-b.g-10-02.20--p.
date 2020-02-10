@extends('admin.app')

@section('title','Add Group')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Add Group
      </h1>
      <a href="{{ URL::to('group/view') }}" class="btn btn-success pull-right ">List</a>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- general form elements -->
        <div class="col-md-6">
        <div class="box box-success">
          <div class="box-header with-border">
            @include('includes.messages')
            <div id="form_output"></div>
          </div>
          @if(Session::has('msg'))
            <div class="alert alert-{{Session::get('status')}}">
              <span style="text-align:center">{{Session::get('msg')}}</span>
            </div>
          @endif
          <!-- /.box-header -->
          <!-- form start -->
          <form role="form" id="" action="{{ URL::to('group/create') }}" method="POST" enctype="multipart/form-data">
            <div class="box-body">
              
                {{ csrf_field() }}
                <div class="form-group">
                  <label for="name">Group Name</label>
                  <input type="text" name="group_name" class="form-control" id="name" placeholder="Enter group Name" value="" required="">
                </div>

            </div>
            <!-- /.box-body -->

            <div class="box-footer">
              <button type="submit" id="add_data" class="btn btn-success">Submit</button>
            </div>
          </form>
        </div>
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