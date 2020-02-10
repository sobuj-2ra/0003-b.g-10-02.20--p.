@extends('admin.app')

@section('title','Add Item')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Add Item
      </h1>
      <a href="{{ route('items.index') }}" class="btn btn-success pull-right ">List</a>
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
        <form role="form" id="ajax_form" action="{{ route('items.store') }}" method="POST" enctype="multipart/form-data">
          <div class="box-body">
            {{ csrf_field() }}

            <div class="form-group">
              <label for="item_name">Item Name</label>
              <input type="text" name="item_name" class="form-control" id="item_name" placeholder="Enter item_name" value="{{ old('item_name') }}" required="">
            </div>

            <div class="form-group">
              <label for="item_code">Item Code</label>
              <input type="text" name="item_code" class="form-control" id="item_code" placeholder="Enter item_code" value="{{ old('item_code') }}" required="" data-inputmask="'mask': '9999999'" data-mask>
              <span id="itemError" class="bg-danger"></span>
            </div>

            <div class="form-group">
              <label for="group_name">Group Name</label>
              <select name="group_name" id="group_name" class="form-control" required>
                <option value=""></option>
                @foreach($allGroups as $item)
                  <option value="{{$item->group_name}}">{{$item->group_name}}</option>
                @endforeach
              </select>
            </div>

            <div class="form-group">
              <label for="group_code">Group Code</label>

              <input type="text" name="group_code" class="form-control" id="group_code" placeholder="Enter group_code" value="{{ old('group_code') }}">
            </div>

            <div class="form-group">
              <label for="pack_size">Pack Size</label>
              <input type="number" name="pack_size" class="form-control" id="pack_size" placeholder="Enter pack_size" value="{{ old('pack_size') }}">
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
		$('[data-mask]').inputmask();

    $('#item_code').on('keyup',function(){
      var item_code = $('#item_code').val();
      var _token = $('input[name="_token"]').val();

      //console.log(item_code,_token);
      $.ajax({
        url: "{{ route('checkItemCode') }}",
        type: 'POST',
        dataType: 'json',
        data: {item_code:item_code,_token:_token},
        success: function(data){
          //console.log(data);
          $('#itemError').html(data.message);
        }
      });
    });




    
    
	});
</script>
@endsection