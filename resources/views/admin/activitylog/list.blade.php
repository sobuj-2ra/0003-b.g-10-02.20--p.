@extends('admin.app')

@section('title','Acitivity Log')

@section('extra_css')
 <link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
  <!-- Theme style -->
@endsection

@section('main_content')  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Acitivity Log
      </h1>
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
                      <th>Action</th>
                      <th>Employee_id</th>
                      <th>New Data</th>
                      <th>Old Data</th>
                      <th>Time</th>
                    </tr>
                   </thead>
                   <tbody>
                   
                   </tbody>
                   <tfoot>
                   <tr>
                    <tr>
                      <th>#</th>
                      <th>Name</th>
                      <th>Action</th>
                      <th>Employee_id</th>
                      <th>New Data</th>
                      <th>Old Data</th>
                      <th>Time</th>
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
                <h4 class="modal-title"></h4>
              </div>
              <div class="modal-body">
                <div><strong>Name:</strong> <span id="name"></span></div>
                <div><strong>sales_order:</strong> <span id="sales_order"></span></div>
                <div><strong>transport_no:</strong> <span id="transport_no"></span></div>
                <div><strong>Order Items:</strong> <span id="order_items"></span></div>

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
<script>
  $(function () {
    $('#example1').DataTable({
      serverSide: true,
     processing: true,
     ajax: '{{ route('activitylog.ajax') }}', 
     columns: [
      { data: 'rownum', name: 'rownum' },
      { data: 'name', name: 'name' },
      { data: 'action', name: 'action' },
      { data: 'employee_id', name: 'employee_id' },
      { data: 'new_data', name: 'new_data' },
      { data: 'old_data', name: 'old_data' },
      { data: 'created_at', name: 'created_at' },
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
        url: '{{ route('getInvoiceDataById') }}',
        type: 'POST',
        data: {id:id,_token:_token},
        dataType:'json',
        success: function(data){
          //console.log(data.delivery_data);
          var order_infos = ``;
          $.each(data.delivery_data,function(index,value){
            //console.log(value);
            order_infos += `<ul class="list-group">
              <li class="list-group-item active">Item Name: ${value.item_name}</li>
              <li class="list-group-item">Item Code: ${value.item_code}</li>
              <li class="list-group-item">Batch No: ${value.batch_no}</li>
              <li class="list-group-item">pack_size: ${value.pack_size}</li>
              <li class="list-group-item">total_cartoon: ${value.total_cartoon}</li>
              <li class="list-group-item">total_qty: ${value.total_qty}</li>
              <li class="list-group-item">Barcodes:</li>`;
            $.each(value.barcodes,function(i,v){
              order_infos += `<li class="list-group-item">${v}</li>`
            })

             order_infos += `</ul>`;
          })
          $("#name").html(data.name);
          $("#sales_order").html(data.sales_order);
          $("#transport_no").html(data.transport_no);
          $('#order_items').html(order_infos);
         // console.log(order_infos);
          
          $('#modal-default').modal('show');
        }
      });
      
    });
    
  });
</script>

@endsection