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
      <div class="row">
        <div class="col-md-6">
            @if(!Session::has('edit'))
              <div class="box box-success">
                <div class="box-header with-border">
                  @include('includes.messages')
                  <div id="form_output"></div>
                </div>
                <div class="col-md-10 col-md-offset-1">
                  @if(Session::has('msg') && Session::get('add') == '1')
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
                      <div class="col-sm-12">
                        <div class="form-group">
                          <label for="customer_name">Customer Name</label>
                          <select name="cust_name" class="form-control selectpicker" id="cust_name" data-live-search="true" >
                            <option value=""></option> 
                            @foreach ($allCustomer as $customer)
                                <option value="{{$customer->id}}">{{$customer->cust_name}}</option>
                            @endforeach
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-8">
                        <div class="form-group">
                          <label for="name">Order Reference</label>
                          <input type="text" name="order_ref" class="form-control" id="order_ref" placeholder="Enter Order Ref No"  required="">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label for="name">Status</label>
                          <select class="form-control" name="status" id="" request>
                            <option value="1">Active</option>
                            <option value="0">inactive</option>
                          </select>
                        </div>
                      </div>
                  </div>
                  <div class="box-footer">
                    <button type="submit" id="add_data" class="btn btn-success">Submit</button>
                  </div>
                </form>
              </div>
            @else
              <div class="box box-info">
                <div class="box-header with-border">
                  @include('includes.messages')
                  <div id="form_output"></div>
                </div>
                <form  action="{{ URL::to('orderref/'.Session::get('id'))}}" method="POST">
                  @method('PUT')
                  {{ csrf_field() }}
                  <div class="box-body">
                      <div class="col-sm-8">
                        <div class="form-group">
                          <label for="name">Group Name</label>
                          <input type="text" name="order_ref" class="form-control" id="order_ref" value="{{Session::get('ref_no')}}" placeholder="Enter Order Ref No"  required="">
                        </div>
                      </div>
                      <div class="col-sm-4">
                        <div class="form-group">
                          <label for="name">Status</label>
                          <select class="form-control" name="status" id="" request>
                              <option value="1" <?php if(Session::get('status') == 1){ echo 'selected';}?> >Active</option>
                              <option value="0" <?php if(Session::get('status') == 0){ echo 'selected';}?> >inactive</option>
                          </select>
                        </div>
                      </div>
                  </div>
                  <div class="box-footer">
                    <button type="submit" id="add_data" class="btn btn-info">Update</button>
                  </div>
                </form>
              </div>
            @endif
          </div>
        <!-- /.box -->


        <!-- general form elements -->
          <div class="col-md-6">
          <div class="box box-success">
            <div class="box-body">
              <div class="col-md-10 col-md-offset-1">
                @if(Session::has('msg') && Session::get('view') == '1')
                  <div class="alert alert-{{Session::get('status')}}">
                    <span style="text-align:center">{{Session::get('msg')}}</span>
                  </div>
                @endif
              </div>
                <h2 style="text-align:center;margin-bottom:0">Order Reference List</h2>
                <hr>
                  <table class="table table-responsive table-striped">
                    <tbody>
                      <tr>
                        <th>Sl</th>
                        <th>Order Ref No</th>
                        <th>Customer</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </tbody>
                    <tbody>
                      @if(isset($allOrderRef))
                        @foreach ($allOrderRef as $item)
                          <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$item->order_ref_no}}</td>
                            <td>{{$item->GetCustName['cust_name']}}</td>
                            <td><?php if($item->status == 1){ echo 'Active';}else{ echo 'Inactive';} ?></td>
                          <td>
                            @can('order_ref_edit')
                            <a onclick="return confirm('Are you sure! you want to Edit?')" class="btn btn-info" href="{{URL::to('orderref').'/'.$item->id.'/edit'}}">Edit</a>
                            @endcan
                            @can('order_ref_delete')
                            <a onclick="return confirm('Are you sure! you want to delete?')" class="btn btn-danger" href="{{URL::to('orderref/delete').'/'.$item->id}}">Delete</a></td>
                            @endcan
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
              <div class="box-footer">
              </div>
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
<link rel="stylesheet"  href="{{ asset('public/admin_asset/dist/css/bootstrap-select.css') }}" />
<script src="{{ asset('public/admin_asset/dist/js/bootstrap-select.js') }}"></script>
<script type="text/javascript">
  $('.selectpicker').selectpicker();
</script>


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