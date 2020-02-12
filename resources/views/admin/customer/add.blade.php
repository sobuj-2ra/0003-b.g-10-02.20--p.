@extends('admin.app')

@section('title','Add Group')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Customer
      </h1>
    </section>
    <!-- Main content -->
    <section class="content">
      <!-- general form elements -->
      <div class="row">
        <div class="col-md-10 col-md-offset-1">
            @if(!Session::has('edit'))
              <div class="box box-success">
                <div class="box-header ">
                  @include('includes.messages')
                  <div id="form_output"></div>
                </div>
                <div class="col-md-6 col-md-offset-3">
                  @if(Session::has('msg') && Session::get('add') == '1')
                    <div class="alert alert-{{Session::get('status')}}">
                      <span style="text-align:center">{{Session::get('msg')}}</span>
                    </div>
                  @endif
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form role="form" id="" action="{{ URL::to('/customer') }}" method="POST">
                  <div class="box-body">
                      {{ csrf_field() }}
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="name">Customer</label>
                          <input type="text" name="cust_name" class="form-control" id="order_ref" placeholder="Enter Customer Name"  required="">
                        </div>
                        <div class="form-group">
                          <label for="name">Phone</label>
                          <input type="text" name="phone" class="form-control" id="order_ref" placeholder="Enter Phone No"  required="">
                        </div>
                      </div>
                      <div class="col-sm-5">
                        <div class="form-group">
                          <label for="name">Company Name</label>
                          <input type="text" name="company_name" class="form-control"  placeholder="Enter Company Name" >
                        </div>
                        <div class="form-group">
                          <label for="name">Address</label>
                          <input type="text" name="address" class="form-control"  placeholder="Enter Address" >
                        </div>
                      </div>
                  </div>
                  <div class="box-footer">
                    <div class="col-sm-12">
                      <button type="submit" id="add_data" class="btn btn-success">Submit</button>
                    </div>
                  </div>
                </form>
              </div>
            @else
              <div class="box box-info">
                <div class="box-header with-border">
                  @include('includes.messages')
                  <div id="form_output"></div>
                </div>
                <form  action="{{ URL::to('customer/'.Session::get('id'))}}" method="POST">
                  @method('PUT')
                  {{ csrf_field() }}
                  <div class="box-body">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="name">Customer</label>
                      <input type="text" name="cust_name" class="form-control" id="order_ref" value="{{Session::get('cust_name')}}" placeholder="Enter Customer Name"  required="">
                      </div>
                      <div class="form-group">
                        <label for="name">Phone</label>
                        <input type="text" name="phone" class="form-control" id="order_ref" value="{{Session::get('phone')}}" placeholder="Enter Phone No"  required="">
                      </div>
                    </div>
                    <div class="col-sm-5">
                      <div class="form-group">
                        <label for="name">Company Name</label>
                        <input type="text" name="company_name" class="form-control" value="{{Session::get('company')}}"  placeholder="Enter Company Name" >
                      </div>
                      <div class="form-group">
                        <label for="name">Address</label>
                        <input type="text" name="address" class="form-control" value="{{Session::get('address')}}" placeholder="Enter Address" >
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
          <div class="col-md-12">
          <div class="box box-success">
            <div class="box-body">
              <div class="col-md-10 col-md-offset-1">
                @if(Session::has('msg') && Session::get('view') == '1')
                  <div class="alert alert-{{Session::get('status')}}">
                    <span style="text-align:center">{{Session::get('msg')}}</span>
                  </div>
                @endif
              </div>
                <div class="col-md-12">
                  <h2 style="text-align:center;margin-bottom:0">Order Reference List</h2>
                  <hr>
                </div>
                  <table class="table table-responsive table-striped">
                    <tbody>
                      <tr>
                        <th>Sl</th>
                        <th>Customer Name</th>
                        <th>Phone</th>
                        <th>Company Name</th>
                        <th>Address</th>
                        <th>Action</th>
                      </tr>
                    </tbody>
                    <tbody>
                      @if(isset($allCustomer))
                        @foreach ($allCustomer as $item)
                          <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$item->cust_name}}</td>
                            <td>{{$item->phone}}</td>
                            <td>{{$item->company}}</td>
                            <td>{{$item->address}}</td>
                          <td>
                            @can('customer_edit')
                            <a onclick="return confirm('Are you sure! you want to Edit?')" class="btn btn-info" href="{{URL::to('customer').'/'.$item->id.'/edit'}}">Edit</a>
                            @endcan
                            @can('customer_delete')
                            <a onclick="return confirm('Are you sure! you want to delete?')" class="btn btn-danger" href="{{URL::to('customer/delete').'/'.$item->id}}">Delete</a></td>
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