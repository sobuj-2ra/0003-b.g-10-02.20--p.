@extends('admin.app')

@section('title','Group list')

@section('extra_css')
  <!-- DataTables -->
  <link rel="stylesheet" href="{{ asset('public/admin_asset/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css') }}">
@endsection

@section('main_content')  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Group List
      </h1>
      @can('machine_add')
        <a href="{{ URL::to('group/create') }}" class="btn btn-success pull-right ">Add New</a>
      @endcan
    </section>

    <!-- Main content -->
    <section class="content">
      @include('includes.messages')


       <div class="box">
         <div class="box-header">
            @if(Session::has('msg'))
              <div class="alert alert-{{Session::get('status')}}">
                <span style="text-align:center">{{Session::get('msg')}}</span>
              </div>
            @endif
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
             @foreach($allGroup as $item)
                <tr>
                  <td>{{ $loop->index +1 }}</td>
                  <td>{{ $item->group_name }}</td>
                  <td>{{ $item->created_at }}</td>
                  <td>
                    <a onclick="return confirm('Are you sure? You want to Delete')" href="{{URL::to('group/destroy').'/'.$item->id}}" class="btn btn-danger" >Delete</a>
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