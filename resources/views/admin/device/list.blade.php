@extends('admin.app')

@section('title','Device list')

@section('extra_css')
  <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('main_content')  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Device List
      </h1>
      @can('device_add')
        <a href="{{ route('devices.create') }}" class="btn btn-success pull-right ">Add New</a>
      @endcan
        <a href="#" id="devices_all" class="btn btn-success pull-right ">Printers Under Net</a>
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
                <th>ID</th>
                <th>Device_id</th>
                <th>Type</th>
                <th>action</th>
              </tr>
             </thead>
             <tbody>
             @foreach($devices as $single_device)
                <tr>
                  <td>{{ $loop->index +1 }}</td>
                  <td>{{ $single_device->device_name }}</td>
                  <td>{{ $single_device->device_id }}</td>
                  <td>{{ $single_device->device_ip }}</td>
                  <td>{{ $single_device->device_type }}</td>
                  <td>
                      @can('device_edit')
                        <a href="{{ route('devices.edit',$single_device->id) }}" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                      @endcan
                      @can('device_delete')
                        <a href="#" onclick="if(confirm('are you sure ?')){ event.preventDefault(); document.getElementById('delete-form-{{$single_device->id}}').submit();}else{event.preventDefault();}" class="btn btn-danger"><i class="fa fa-trash-o"></i></a>
                        <form id="delete-form-{{$single_device->id}}" action="{{ route('devices.destroy',$single_device->id) }}" method="post">
                          {{csrf_field()}}
                          {{method_field('DELETE')}}
                        </form>
                      @endcan

                  </td>
                </tr>
             @endforeach
             </tbody>
             <tfoot>
             <tr>
              <tr>
                <th>#</th>
                <th>Name</th>
                <th>ID</th>
                <th>Device_id</th>
                <th>Type</th>
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


    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Devices Under This Network</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <span id="device_data"></span>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>


   
@endsection
@section('extra_js')
  <!-- DataTables -->
  <script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
  <script src="{{ asset('public/admin_asset/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
  <script type="text/javascript">
    $(function(){
      $('#example1').DataTable();

      $("#devices_all").on('click',function(e){
        e.preventDefault();

        $.ajax({
          url: '{{ route('devices.all') }}',
          type: 'GET',
          success: function(data){
            console.log(data);
            var device_list = ``;
            $.each(data,function(index,value){
              //console.log(value);
              device_list += `<ul class="list-group">
                <li class="list-group-item active">${value.name} (${value.description})</li>
                <li class="list-group-item">id:  ${value.id}</li>
                <li class="list-group-item">state: <span class="label label-${(value.state== 'online') ? 'success' : 'danger'}">${value.state}</span> </li>
                <li class="list-group-item">is_default: <span class="label label-${(value.default== 'true') ? 'success' : 'danger'}">${value.default}</span>  </li>
                </ul>`;
            });

            $("#device_data").html(device_list);
            
            $('#exampleModalCenter').modal('show');
          },
          error(data){
            console.log(data);
          }
        });
        


      })


    })
  </script>
@endsection