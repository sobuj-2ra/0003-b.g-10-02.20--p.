@extends('admin.app')

@section('title','Edit Item')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Edit Item
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
        <form role="form" id="ajax_form" action="{{ route('items.update',$item->id) }}" method="POST" enctype="multipart/form-data">
          <div class="box-body">
            {{ csrf_field() }}
            @method('PUT')

            <div class="form-group">
              <label for="item_name">Item Name</label>
              <input type="text" name="item_name" class="form-control" id="item_name" placeholder="Enter item_name" value="{{ $item->item_name }}" required="">
            </div>

            <div class="form-group">
              <label for="item_code">Item Code</label>
              <input type="text" name="item_code" class="form-control" id="item_code" placeholder="Enter item_code" value="{{ $item->item_code }}" required="" data-inputmask="'mask': '9999999'" data-mask>
              <span id="itemError" class="bg-danger"></span>
            </div>

            <div class="form-group">
              <label for="group_name">Group Name</label>
              <select name="group_name" id="group_name" class="form-control" required>
                <option value=""></option>
                @foreach($allGroups as $gName)
                  @if($item->group_name == $gName->group_name)
                    <option value="{{$item->group_name}}" selected>{{$gName->group_name}}</option>
                  @else
                    <option value="{{$item->group_name}}">{{$gName->group_name}}</option>
                  @endif
                @endforeach
              </select>
            </div>

            <div class="form-group">
              <label for="group_code">Group Code</label>
              <input type="text" name="group_code" class="form-control" id="group_code" placeholder="Enter group_code" value="{{ $item->group_code }}">
            </div>

            <div class="form-group">
              <label for="pack_size">Pack Size</label>
              <input type="number" name="pack_size" class="form-control" id="pack_size" placeholder="Enter pack_size" value="{{ $item->pack_size}}">
            </div>
            <input type="hidden" name="item_id" id="item_id" value="{{ $item->id }}">


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
      var item_id = $('#item_id').val();
      var _token = $('input[name="_token"]').val();

      //console.log(item_code,_token);
      $.ajax({
        url: "{{ route('checkItemCode') }}",
        type: 'POST',
        dataType: 'json',
        data: {item_code:item_code,_token:_token,item_id:item_id},
        success: function(data){
          //console.log(data);
          $('#itemError').html(data.message);
        }
      });
    });




    
    
  });
</script>
@endsection