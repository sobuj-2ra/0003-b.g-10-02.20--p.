@extends('admin.app')

@section('title','Invoice Info')

@section('extra_css')

@endsection

@section('main_content')  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Invoice Info
      </h1>
        <a href="{{ route('invoiceinfo.edit',$data->id) }}" class="btn btn-success pull-right ">Edit</a>
    </section>

    <!-- Main content -->
    <section class="content">
      @include('includes.messages')


       <div class="box">
         <div class="box-header">
           
         </div>
         <!-- /.box-header -->
         <div class="box-body">
          <form role="form" id="ajax_form" action="#" method="POST" enctype="multipart/form-data">
          <div class="box-body">
            {{ csrf_field() }}

            <div class="form-group">
              <label for="name">Document No</label>
              <input type="text" name="name" class="form-control" id="name" placeholder="Enter machine Name" value="{{ $data->document_no }}" readonly="">
            </div>

            <div class="form-group">
              <label for="name">Revision No</label>
              <input type="text" name="name" class="form-control" id="name" placeholder="Enter machine Name" value="{{ $data->revision_no }}" readonly="">
            </div>

            <div class="form-group">
              <label for="name">Effective date</label>
              <input type="text" name="name" class="form-control" id="name" placeholder="Enter machine Name" value="{{ $data->effective_date }}" readonly="">
            </div>

          </div>
          <!-- /.box-body -->
        </form>

          </div>
          <!-- /.box-body -->
         </div>
         <!-- /.box-body -->
       </div>
       <!-- /.box -->
    </section>
    <!-- /.content -->


   
@endsection
@section('extra_js')
@endsection