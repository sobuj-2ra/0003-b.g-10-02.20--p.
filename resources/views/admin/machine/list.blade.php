@extends('admin.app')

@section('title','Machine list')

@section('extra_css')
  <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('main_content')  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Machine List
      </h1>
      @can('machine_add')
        <a href="{{ route('machines.create') }}" class="btn btn-success pull-right ">Add New</a>
      @endcan
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
                <th>action</th>
              </tr>
             </thead>
             <tbody>
             @foreach($machines as $single_machine)
                <tr>
                  <td>{{ $loop->index +1 }}</td>
                  <td>{{ $single_machine->name }}</td>
                  <td>{{ $single_machine->number }}</td>
                  <td>
                      @can('machine_edit')
                        <a href="{{ route('machines.edit',$single_machine->id) }}" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                      @endcan
                      @can('machine_delete')
                        <a href="#" onclick="if(confirm('are you sure ?')){ event.preventDefault(); document.getElementById('delete-form-{{$single_machine->id}}').submit();}else{event.preventDefault();}" class="btn btn-danger"><i class="fa fa-trash-o"></i></a>
                        <form id="delete-form-{{$single_machine->id}}" action="{{ route('machines.destroy',$single_machine->id) }}" method="post">
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


   
@endsection
@section('extra_js')
  <!-- DataTables -->
  <script src="{{ asset('public/admin_asset/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
  <script src="{{ asset('public/admin_asset/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
  <script type="text/javascript">
    $(function(){
      $('#example1').DataTable();


    })
  </script>
@endsection