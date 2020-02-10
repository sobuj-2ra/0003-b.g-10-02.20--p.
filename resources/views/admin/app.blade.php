<!DOCTYPE html>
<html>
<head>
  @include('admin.partials.head')
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <header class="main-header">
    @include('admin.partials.header')
  </header>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      @include('admin.partials.sidebar')
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    @section('main_content')
      @show
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  @include('admin.partials.footer')
</body>
</html>
