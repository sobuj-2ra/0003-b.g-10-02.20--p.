@extends('admin.app')

@section('title','Add Group')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Order Reference
      </h1>
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
          <div class="col-md-10 col-md-offset-1">
            @if(Session::has('msg'))
              <div class="alert alert-{{Session::get('status')}}">
                <span style="text-align:center">{{Session::get('msg')}}</span>
              </div>
            @endif
          </div>
          <!-- /.box-header -->
          <!-- form start -->
          <form role="form" id="" action="{{ URL::to('/orderref') }}" method="POST">
            <div class="box-body">
              
                {{ csrf_field() }}
                <div class="form-group">
                  <label for="name">Order Reference</label>
                  <input type="text" name="order_ref" class="form-control" id="order_ref" placeholder="Enter Order Ref No"  required="">
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


      <!-- general form elements -->
        <div class="col-md-6">
        <div class="box box-success">
            <div class="box-body">
              <h2 style="text-align:center;margin-bottom:0">Order Reference List</h2>
              <hr>
                <table class="table table-responsive table-striped">
                  <tbody>
                    <tr>
                      <th>Sl</th>
                      <th>Order Reference Number</th>
                    </tr>
                  </tbody>
                  <tbody>
                    @if(isset($allOrderRef))
                      @foreach ($allOrderRef as $item)
                        <tr>
                          <td>{{$loop->iteration}}</td>
                          <td>{{$item->order_ref_no}}</td>
                        </tr>
                      @endforeach
                    @else
                      <tr>
                        <td colspan="2" style="text-align:center;color:#ddd"><h3>No Data Found</h3></td>
                      </tr>
                    @endif
                  </tbody>
                </table>

            </div>
            <!-- /.box-body -->

            <div class="box-footer">
            </div>
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