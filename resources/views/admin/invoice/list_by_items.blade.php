@extends('admin.app')

@section('title','Item')

@section('extra_css')
 <link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
 <link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/datatables.net-bs/css/buttons.dataTables.min.css') }}">
  <!-- Theme style -->
@endsection

@section('main_content')  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Item
      </h1>
        <a href="" class="btn btn-success pull-right ">Add</a>
    </section>

    <!-- Main content -->
    <section class="content">
      @include('includes.messages')


             <div class="box">
               <div class="box-header">
                 
               </div>
               <!-- /.box-header -->
               <div class="box-body">
                 <table id="example1" class="table table-bordered table-striped table-responsive">
                   <thead>
                   <tr>
                      <th>#</th>
                      <th>Name</th>
                      <th>item_code</th>
                      <th>total_stock</th>
                      <th>stockout</th>
                      <th>pack_size</th>
                      <th>group_name</th>
                      <th>group_code</th>
                      <th>added_by</th>
                      <th>action</th>
                    </tr>
                   </thead>
                   <tbody>
                   
                   </tbody>
                   <tfoot>
                   <tr>
                    <tr>
                      <th>#</th>
                      <th>Name</th>
                      <th>item_code</th>
                      <th>total_stock</th>
                      <th>stockout</th>
                      <th>pack_size</th>
                      <th>group_name</th>
                      <th>group_code</th>
                      <th>added_by</th>
                      <th>action</th>
                    </tr>
                   </tr>
                   </tfoot>
                 </table>
               </div>
               <!-- /.box-body -->
             </div>
             <!-- /.box -->
    </section>
    <!-- /.content -->
    <div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="modal_title"></h4>
              </div>
              <div class="modal-body">
                <div><strong>Item Details</strong> <span id="item_details"></span></div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Close</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

   
@endsection
@section('extra_js')
<!-- DataTables -->
<script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/dataTables.buttons.min.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/buttons.flash.min.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/jszip.min.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/pdfmake.min.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/vfs_fonts.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/buttons.html5.min.js') }}"></script>
<script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/buttons.print.min.js') }}"></script>
<script>
  $(function () {
    $('#example1').DataTable({
      serverSide: true,
     processing: true,
     ajax: '{{ route('ajaxItem') }}',
     dom: 'Blfrtip',
     buttons: [
        'copyHtml5', 'excelHtml5', 'pdfHtml5', 'csvHtml5','print'
     ],
     columns: [
      { data: 'rownum', name: 'rownum' },
      { data: 'item_name', name: 'item_name' },
      { data: 'item_code', name: 'item_code' },
      { data: 'total_stock', name: 'total_stock' },
      { data: 'stockout', name: 'stockout' },
      { data: 'pack_size', name: 'pack_size' },
      { data: 'group_name', name: 'group_name' },
      { data: 'group_code', name: 'group_code' },
      { data: 'added_by', name: 'added_by' },
      {data: 'action', name: 'action', orderable: false, searchable: false},
    ],
    "order": [[ 0, "desc" ]]
    });



    $(document).on('click','#modal_switch', function() {
      //e.preventDefault();
      var id = $(this).data('id');
      var _token = $('input[name="_token"]').val();
      // console.log(id);
      // console.log(_token);

      $.ajax({
        url: '{{ route('getItemDataById') }}',
        type: 'POST',
        data: {id:id,_token:_token},
        dataType:'json',
        success: function(data){
          // console.log(data);

          var item_barcode = ``;
          $.each(data.stock_in,function(index,value){
            //console.log(value);
            item_barcode += `<ul class="list-group">
              <li class="list-group-item active">Barcode: ${value.barcode}</li>
              <li class="list-group-item">Batch: ${value.batch_no}</li>
              </ul>`;
          })
          $("#modal_title").html(data.item_name+'('+data.item_code+')');
          $("#item_details").html(item_barcode);
          
          $('#modal-default').modal('show');
        }
      });
      
    });
    
  });
</script>

@endsection