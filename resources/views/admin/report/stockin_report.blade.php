@extends('admin.app')

@section('title','Stock In')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Stock In Report
      </h1>
    </section>
    <style media="screen">

    </style>

    <!-- Main content -->
    <section class="content">
      <!-- general form elements -->
      <div class="box box-primary">
        <div class="box-header with-border" style="background: #FFF;">
          @include('includes.messages')
                <div class="row">
                  <div class="col-md-4 col-md-offset-4" style="box-shadow:0px 3px 5px #bdbdbd;background: #f7f7f7">
                    <h3 style="color:#3c8dbc;text-align:center">--Stock In Report--</h3>
                      <form role="form" id="ajax_form" action="{{ URL::to('report/stockin/result') }}" method="POST" enctype="multipart/form-data">
                        <div class="box-body">
                          {{ csrf_field() }}
                          <?php $curDate = Date('d-m-Y');?>
                          <div class="form-group">
                            <label for="item_name">From: </label>
                            <input type="text" name="from_date" value="{{$curDate}}" class=" form-control" id="datepicker"required>
                          </div>
                          <div class="form-group">
                            <label for="item_name">To: </label>
                            <input type="text" name="to_date" value="{{$curDate}}" class="form-control" id="datepicker2" required>
                          </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer" style="background: #f7f7f7;">
                          <button type="submit" id="add_data" class="btn btn-success">Submit</button>
                        </div>
                      </form>
                  </div>
              </div>
              <br>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
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
<script src="{{asset('public/front_end/js/jQuery-ui.js')}}"></script>
<link rel="stylesheet" href="{{asset('public/front_end/css/jQuery-ui.css')}}">
<script type="text/javascript">
	$(function(){
		// Datemask dd/mm/yyyy
		// $('[data-mask]').inputmask();

  //   $('#item_code').on('keyup',function(){
  //     var item_code = $('#item_code').val();
  //     var _token = $('input[name="_token"]').val();

  //     //console.log(item_code,_token);
  //     $.ajax({
  //       url: "{{ route('checkItemCode') }}",
  //       type: 'POST',
  //       dataType: 'json',
  //       data: {item_code:item_code,_token:_token},
  //       success: function(data){
  //         //console.log(data);
  //         $('#itemError').html(data.message);
  //       }
  //     });
    // });



    $("#datepicker").datepicker({dateFormat: 'dd-mm-yy'});
    $("#datepicker2").datepicker({dateFormat: 'dd-mm-yy'});


	});
</script>
@endsection
