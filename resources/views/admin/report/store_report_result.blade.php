@extends('admin.app')

@section('title','Add Item')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Store Report
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- general form elements -->
      <div class="box box-success">
        <div class="box-header with-border" style="background: #f7f7f7;">
          @include('includes.messages')
                <div class="row">
                  <div class="col-md-12" >
                    <div class="row">
                            <div class="col-md-1" style="padding-right: 6px; float: right">
                                <button type="submit" class="btn btn-primary pull-right" style="padding: 7px 22px;margin:10px" onclick="printDiv('printableArea')" style="margin-right:10px;">Print</button>
                            </div>
                    </div>
                    <div id="printableArea" class="proction_summ_result_area" style="background:#FFF">
                      <br>
                      <div class="production_report_head" style="text-align:center">
                        <h3 style="margin-bottom:0px;">Bengal Glass Works Ltd. </h3>
                        <p><i style="padding-bottom:10px;">- Production Store Report -</i></p>
                      </div>
                      <br>
                      <div class="proction_summ_result_area">
                          <table class="table table-bordered  table-responsive" style="background:#FFF">
                                <tr>
                                  <th>Sl</th>
                                  <th>Item Name</th>
                                  <th>Group Name</th>
                                  <th>Pack Size</th>
                                  <th>Carton Qty</th>
                                  <th>Total Qty</th>
                                </tr>
                                <?php
                                 $n = 1;
                                 foreach ($StoreData as $data): ?>
                                  <tr>
                                    <td>{{$n}}</td>
                                    <td>{{$data->item_name}}</td>
                                    <td>{{$data->group_name}}</td>
                                    <td>{{$data->pack_size}}</td>
                                    <td>{{$data->item_qty}}</td>
                                    <td>
                                      <?php
                                          $totalQty = $data->pack_size*$data->item_qty;
                                          echo $totalQty;
                                      ?>
                                    </td>
                                  </tr>
                                <?php
                                $n++;
                               endforeach;
                               ?>
                          </table>
                      </div>
                  </div>
              </div>
              <br>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
      </div>
      <!-- /.box -->



    </section>
    <!-- /.content -->

@endsection

@section('extra_js')
<!-- InputMask -->
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.js') }}"></script>
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.date.extensions.js') }}"></script>
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.numeric.extensions.js') }}"></script>
<script src="{{ asset('public/admin_asset/plugins/input-mask/jquery.inputmask.extensions.js') }}"></script>
<script src="{{asset('public/front_end/js/jQuery-ui.js')}}"></script>
<link rel="stylesheet" href="{{asset('public/front_end/css/jQuery-ui.css')}}">
<script type="text/javascript">
	$(function(){
		// Datemask dd/mm/yyyy
		// $('[data-mask]').inputmask();

  //   $('#item_code').on('keyup',function(){
  //     var item_code = $('#item_code').val();
  //     var _token = $('input[name="_token"]').val();

  //     //console.log(item_code,_token);
  //     $.ajax({
  //       url: "{{ route('checkItemCode') }}",
  //       type: 'POST',
  //       dataType: 'json',
  //       data: {item_code:item_code,_token:_token},
  //       success: function(data){
  //         //console.log(data);
  //         $('#itemError').html(data.message);
  //       }
  //     });
    // });



    $("#datepicker").datepicker({dateFormat: 'dd-mm-yy'});
    $("#datepicker2").datepicker({dateFormat: 'dd-mm-yy'});


	});
</script>
<script type="text/javascript">
    function printDiv(printableArea) {

        var printContents = document.getElementById(printableArea).innerHTML;
        var originalContents = document.body.innerHTML;

        document.body.innerHTML = printContents;

        window.print();

        document.body.innerHTML = originalContents;
    }
        $(window).on('afterprint', function () {
            location.reload(true);
        });

</script>
@endsection
