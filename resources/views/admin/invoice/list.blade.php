@extends('admin.app')

@section('title','Invoice')

@section('extra_css')
 <link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
  <!-- Theme style -->
@endsection

@section('main_content')  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Invoice
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
                      <th>sales_order</th>
                      <th>reference_no</th>
                      <th>sl_no</th>
                      <th>delivery_time</th>
                      <th>transport_no</th>
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
                      <th>sales_order</th>
                      <th>reference_no</th>
                      <th>sl_no</th>
                      <th>delivery_time</th>
                      <th>transport_no</th>
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
     ajax: '{{ route('invoiceAjax') }}', 
     columns: [
      { data: 'rownum', name: 'rownum' },
      { data: 'name', name: 'name' },
      { data: 'sales_order', name: 'sales_order' },
      { data: 'reference_no', name: 'reference_no' },
      { data: 'sl_no', name: 'sl_no' },
      { data: 'delivery_time', name: 'delivery_time' },
      { data: 'transport_no', name: 'transport_no' },
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