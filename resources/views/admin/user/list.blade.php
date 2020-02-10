@extends('admin.app')

@section('title','Users')

@section('extra_css')
  <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('main_content')  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Employee List
      </h1>
      @can('employee_add')
        <a href="{{ route('users.create') }}" class="btn btn-success pull-right ">Add New</a>
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
                <th>Image</th>
                <th>Name</th>
                <th>Emplyee ID</th>
                <th>Group</th>
                <th>action</th>
              </tr>
             </thead>
             <tbody>
             @foreach($users as $user)
                <tr>
                  <td>{{ $loop->index +1 }}</td>
                  <td><img src="{{ asset('public/storage/employees/'.$user->image) }}" alt="{{ $user->name }}" width="50px" height="auto"> </td>
                  <td>{{ $user->name }}</td>
                  <td>{{ $user->employee_id }}</td>
                  <td>{{ $user->group }}</td>
                  <td>
                    @can('employee_edit')
                      <a href="{{ route('users.edit',$user->id) }}" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                    @endcan
                    @can('employee_delete')
                      <a href="#" onclick="if(confirm('are you sure ?')){ event.preventDefault(); document.getElementById('delete-form-{{$user->id}}').submit();}else{event.preventDefault();}" class="btn btn-danger"><i class="fa fa-trash-o"></i></a>
                      <form id="delete-form-{{$user->id}}" action="{{ route('users.destroy',$user->id) }}" method="post">
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
                <th>Image</th>
                <th>Name</th>
                <th>Emplyee ID</th>
                <th>Group</th>
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