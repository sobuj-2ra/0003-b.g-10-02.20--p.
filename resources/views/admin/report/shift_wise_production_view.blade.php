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
        SHIFT WISE PRODUCTION EFFICIENCY & QUALITY REPORT
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
                    <div class="table_result_view_area" style="background:#FFF;padding:10px;">
                          <div id="printableArea" style="background:#FFF;">
                                <table border="1" class="" style="width:100%" >
                                  <thead>
                                      <tr>
                                      <th rowspan="5" style="padding:0px 5px;text-align:center;width:100px;"><img class="img img-responsive" src="{{URL::to('public/storage/logo.png')}}" alt="LOGO HERE"></th>
                                      </tr>
                                      <tr>
                                          <th rowspan="2" style="padding:5px;text-align:center">THE BENGAL GLASS WORKS LTD.</th>
                                          <th style="padding:5px;text-align:center">Document No.</th>
                                          <th style="padding:5px;text-align:center">BG-IMS-F-STR-009</th>
                                      </tr>
                                      <tr>
                                          <th style="padding:5px;text-align:center">Revision No.</th>
                                          <th style="padding:5px;text-align:center">01</th>
                                      </tr>
                                      <tr>
                                          <th style="padding:5px;text-align:center">INTEGRATED MANAGEMENT SYSTEM</th>
                                          <th style="padding:5px;text-align:center">Effective Date</th>
                                          <th style="padding:5px;text-align:center">22.06.2015</th>
                                      </tr>
                                      <tr>
                                          <th style="padding:5px;text-align:center">SHIFT WISE PRODUCTION EFFICIENCY & QUALITY REPORT</th>
                                          <th style="padding:5px;text-align:center">Page No.</th>
                                          <th style="padding:5px;text-align:center">Page 1 of 1</th>
                                      </tr>
                                  </thead>
                              </table>
                              <br>
                              <span><b>Date:- {{Date('d-m-Y',strtotime($fromDate))}}</b></span><span class="pull-right"><b>Shift:- {{$selected_shift}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></span>
                                <table border="1"class="text-center" style="width:100%">
                                      <tr>
                                        <th style="padding:5px 8px;">Saction Name</th>
                                        <th style="padding:5px 8px;">Item Name</th>
                                        <th style="padding:5px 8px;">Quantity Carton</th>
                                        <th style="padding:5px 8px;">Quantity Pcs</th>
                                        <th style="padding:5px 8px;">A-Quality(%)</th>
                                        <th style="padding:5px 8px;">B-Quality(%)</th>
                                      </tr>

                                      <?php
                                        $machineData = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->groupBy('m_id')->get();
                                        
                                        foreach($machineData as $machine){
                                          $itemData = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->where('m_id',$machine->m_id)->groupBy('item')->get();
                                          $itemData_c = count($itemData)+1;
                                          $totalProduct = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->where('m_id',$machine->m_id)->get();
                                          echo "<tr>";
                                            echo "<td rowspan='".$itemData_c."' style='width:30px'>".$machine->m_id."</td>";
                                          echo "</tr>";
                                          $totalProduction = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->where('m_id',$machine->m_id)->count();
                                          $totalQtyPcs = 0;
                                          foreach ($itemData as $itemC) {
                                            $TotalItemQty = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->where('m_id',$machine->m_id)->where('item',$itemC->item)->count();
                                            $totalItemPackSize = App\Item::select('item_code','pack_size')->where('item_code', $itemC->item)->first();
                                            $totalQtyPcs += $totalItemPackSize['pack_size']*$TotalItemQty;
                                          }
                                          for($i=0; $i < count($itemData); $i++){
                                            $itemQtyBox = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->where('m_id',$machine->m_id)->where('item',$itemData[$i]['item'])->count();
                                            $itemQtyBoxA = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->where('m_id',$machine->m_id)->where('item',$itemData[$i]['item'])->where('grade','A')->count();
                                            $itemQtyBoxB = App\Barcode::whereBetween('created_at',[$fromDate,$toDate])->where('shift',$selected_shift)->where('m_id',$machine->m_id)->where('item',$itemData[$i]['item'])->where('grade','B')->count();
                                            $itemPackSize = App\Item::select('item_code','pack_size','item_name')->where('item_code',$itemData[$i]['item'])->first();
                                            $itemQtyBoxAF = $itemQtyBoxA*$itemPackSize['pack_size'];
                                            $itemQtyBoxBF = $itemQtyBoxB*$itemPackSize['pack_size'];
                                            $APercen = ($itemQtyBoxAF*100)/$totalQtyPcs;
                                            $BPercen = ($itemQtyBoxBF*100)/$totalQtyPcs;
                                            echo "<tr>";
                                              echo "<td>".$itemPackSize['item_name']."</td>";
                                                echo "<td>".$itemQtyBox."</td>";
                                                echo "<td>".$itemQtyBox*$itemPackSize['pack_size']."</td>";
                                                if($APercen > 0){
                                                  echo "<td>".$itemQtyBoxA*$itemPackSize['pack_size'].' ('.number_format($APercen,0).')'."</td>";
                                                }
                                                else{
                                                  echo "<td>".$itemQtyBoxA*$itemPackSize['pack_size'] .' ('.$APercen.')'."</td>";
                                                }
                                                if($BPercen > 0){
                                                  echo "<td>".$itemQtyBoxB*$itemPackSize['pack_size'] .' ('.number_format($BPercen,0).')'."</td>";
                                                }
                                                else{
                                                  echo "<td>".$itemQtyBoxB*$itemPackSize['pack_size'] .' ('.$BPercen.')'."</td>";
                                                }
                                            echo "</tr>";
                                          }
                                        }
                                      
                                      ?>
                                </table>
                                <br>
                                Remarks:
                                <br>
                                <br>
                                <br>
                                <br>
                                Sent By:
                            </div>
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
