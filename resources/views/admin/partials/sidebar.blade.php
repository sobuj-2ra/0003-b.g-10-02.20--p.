
<!-- Sidebar user panel -->
<div class="user-panel">
  <div class="pull-left image">
    <img src="{{ asset('public/storage/employees/'.Auth::user()->image) }}" class="img-circle" alt="User Image">
  </div>
  <div class="pull-left info">
    <p>{{ Auth::user()->name }}</p>
    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
  </div>
</div>
<!-- search form -->
<form action="#" method="get" class="sidebar-form">
  <div class="input-group">
    <input type="text" name="q" class="form-control" placeholder="Search...">
    <span class="input-group-btn">
          <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
          </button>
        </span>
  </div>
</form>
<!-- /.search form -->
<!-- sidebar menu: : style can be found in sidebar.less -->
<ul class="sidebar-menu" data-widget="tree">
  <li class="header">MAIN NAVIGATION</li>

  <li class="treeview">
      <li><a href="{{ route('dashboard') }}"><i class="fa fa-dashboard text-red"></i> <span>Dashboard</span></a></li>
  </li>

    <ul class="treeview-menu">
      <li><a href="{{ route('users.index') }}"><i class="fa fa-circle-o"></i>List</a></li>
      <li><a href="{{ route('users.create') }}"><i class="fa fa-circle-o"></i>Add</a></li>
    </ul>
  </li>

  <li class="treeview">
    <a href="#">
      <i class="fa fa-folder-open"></i> <span>Employee</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="{{ route('users.index') }}"><i class="fa fa-circle-o"></i>List</a></li>
      <li><a href="{{ route('users.create') }}"><i class="fa fa-circle-o"></i>Add</a></li>
    </ul>
  </li>
  <li><a href="{{ URL::to('customer') }}"><i class="fa fa-circle-o text-aqua"></i> <span>Customer</span></a></li>
  <li><a href="{{ URL::to('orderref/create') }}"><i class="fa fa-circle-o text-aqua"></i> <span>Order Referance</span></a></li>



  <li class="treeview">
    <a href="#">
      <i class="fa fa-folder-open"></i> <span>Device</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="{{ route('devices.index') }}"><i class="fa fa-circle-o"></i>List</a></li>
      <li><a href="{{ route('devices.create') }}"><i class="fa fa-circle-o"></i>Add</a></li>
    </ul>
  </li>

  <li class="treeview">
    <a href="#">
      <i class="fa fa-folder-open"></i> <span>Machine</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="{{ route('machines.index') }}"><i class="fa fa-circle-o"></i>List</a></li>
      <li><a href="{{ route('machines.create') }}"><i class="fa fa-circle-o"></i>Add</a></li>
    </ul>
  </li>

  <li class="treeview">
    <a href="#">
      <i class="fa fa-folder-open"></i> <span>Shift</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="{{ route('shifts.index') }}"><i class="fa fa-circle-o"></i>List</a></li>
      <li><a href="{{ route('shifts.create') }}"><i class="fa fa-circle-o"></i>Add</a></li>
    </ul>
  </li>

  <li class="treeview">
    <a href="#">
      <i class="fa fa-folder-open"></i> <span>Items</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="{{ route('items.index') }}"><i class="fa fa-circle-o"></i>List</a></li>
      <li><a href="{{ route('items.create') }}"><i class="fa fa-circle-o"></i>Add</a></li>
    </ul>
  </li>

  <li class="treeview">
    <a href="#">
      <i class="fa fa-folder-open"></i> <span>Group Name</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="{{ URL::to('group/view') }}"><i class="fa fa-circle-o"></i>List</a></li>
      <li><a href="{{ URL::to('group/create') }}"><i class="fa fa-circle-o"></i>Add</a></li>
    </ul>
  </li>

  <li class="treeview">
    <a href="#">
      <i class="fa fa-folder-open"></i> <span>InvoiceInfo</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="{{ route('invoiceinfo.index') }}"><i class="fa fa-circle-o"></i>List</a></li>
    </ul>
  </li>

  <li class="treeview">
    <a href="#">
      <i class="fa fa-folder-open"></i> <span>Orders</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="{{ route('allinvoice') }}"><i class="fa fa-circle-o"></i>By Customer</a></li>
      <li><a href="{{ route('allitem') }}"><i class="fa fa-circle-o"></i>By Item</a></li>
    </ul>
  </li>

  <li class="treeview">
    <a href="#">
      <i class="fa fa-folder-open"></i> <span>Reports</span>
      <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
      </span>
    </a>
    <ul class="treeview-menu">
      <li><a href="{{ URL::to('report/production/summary') }}"><i class="fa fa-circle-o"></i>Production Summary</a></li>
      <li><a href="{{ URL::to('report/stockin') }}"><i class="fa fa-circle-o"></i>Stock In Report</a></li>
      <li><a href="{{ URL::to('report/stockout') }}"><i class="fa fa-circle-o"></i>Stock Out Report</a></li>
      <li><a href="{{ URL::to('report/store') }}"><i class="fa fa-circle-o"></i>Store Report</a></li>
    </ul>
  </li>

    <li><a href="{{ route('activitylog.index') }}"><i class="fa fa-circle-o text-aqua"></i> <span>Logs</span></a></li>

</ul>
