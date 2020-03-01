@extends('admin.app')

@section('title','Add Item')

@section('extra_css')

@endsection

@section('main_content')
<style type="text/css">

</style>
<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Production Summary Report
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
                      <div id="printableArea" class="proction_summ_result_area">
                        <div class="production_report_head" style="text-align:center">
                          <h3 style="margin-bottom:0px;">Bangal Glass Works Project</h3>
                          <p><i style="padding-bottom:10px;">--Production Summary Report--</i></p>
                          <p>
                           
                          </p>
                        </div>
                          <table border="1"class="text-center" style="background:#FFF;width:100%">
                                <tr>
                                  <th style="padding:5px 8px;">Saction Name</th>
                                  <th style="padding:5px 8px;">Item Name</th>
                                  <th style="padding:5px 8px;">Quantity Pcs</th>
                                  <th style="padding:5px 8px;">A-Quality(%)</th>
                                  <th style="padding:5px 8px;">B-Quality(%)</th>
                                </tr>

                                <?php
                                  $machineData = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->groupBy('m_id')->get();
                                  echo count($machineData);
                                  foreach($machineData as $machine){
                                    $itemData = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->where('m_id',$machine->m_id)->groupBy('item')->get();
                                    $itemData_c = count($itemData)+1;
                                    $totalProduct = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->where('m_id',$machine->m_id)->get();
                                    echo "<tr>";
                                      echo "<td rowspan='".$itemData_c."' style='width:30px'>".$machine->m_id."</td>";
                                    echo "</tr>";
                                    
                                    for($i=0; $i < count($itemData); $i++){
                                      echo "<tr>";
                                        echo "<td>".$itemData[$i]['item']."</td>";
                                        if($i == 0){
                                          echo "<td rowspan='".count($itemData)."'>34</td>";
                                          echo "<td rowspan='".count($itemData)."'>30%</td>";
                                          echo "<td rowspan='".count($itemData)."'>70%</td>";
                                        }
                                      echo "</tr>";
                                    }
                                  }
                                
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
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
