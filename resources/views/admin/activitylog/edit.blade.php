@extends('admin.app')

@section('title','Edit Invoice Info')

@section('extra_css')
<!-- bootstrap datepicker -->
  <link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}">
@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Edit Invoice Info
      </h1>
      <a href="{{ route('invoiceinfo.index') }}" class="btn btn-success pull-right ">Back</a>
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
        <form role="form" id="ajax_form" action="{{ route('invoiceinfo.update',$data->id) }}" method="POST" enctype="multipart/form-data">
          <div class="box-body">
            {{ csrf_field() }}
            @method('PUT')

            <div class="form-group">
              <label for="document_no">Document No</label>
              <input type="text" name="document_no" class="form-control" id="document_no" placeholder="Enter document_no" value="{{ $data->document_no }}" required="">
            </div>

            <div class="form-group">
              <label for="name">Revision No</label>
              <input type="text" name="revision_no" class="form-control" id="revision_no" placeholder="Enter revision_no" value="{{ $data->revision_no }}" required="">
            </div>

            <div class="form-group">
              <label for="effective_date">Effective date</label>
              <input type="text" name="effective_date" class="form-control" id="datepicker" placeholder="Enter effective_date" value="{{ $data->effective_date }}" required="">
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
<!-- bootstrap datepicker -->
<script src="{{ asset('public/admin_asset/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>

<script type="text/javascript">
	$(function(){
    //Date picker
    $('#datepicker').datepicker({
      autoclose: true,
      todayHighlight: true,
      todayBtn: 'linked',
      setDate: new Date(),
      assumeNearbyYear: true
    })
    
    
	});
</script>
@endsection