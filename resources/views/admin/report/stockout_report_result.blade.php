@extends('admin.app')

@section('title','Add Item')

@section('extra_css')

@endsection

@section('main_content')

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 style="display: inline-block;">
        Stock Out Report
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
                          <h3 style="margin-bottom:0px;">Bengal Glass Works Ltd.</h3>
                          <p><i style="padding-bottom:10px;">- Production Stock Out Report -</i></p>
                          <p>
                            Date:
                            @if($fromDate == $toDate)
                                {{$fromDate}}
                            @else
                              {{$fromDate." to ".$toDate}}
                            @endif
                          </p>
                        </div>
                        <br>
                          <table border="1"class="text-center" style="background:#FFF;width:100%">
                                <tr>
                                  <th style="padding:5px 8px;">Date</th>
                                  <th style="padding:5px 8px;">Item</th>
                                  <th style="padding:5px 8px;">Batch</th>
                                  <th style="padding:5px 8px;">Total Qty</th>
                                </tr>
                                <?php
                                $total_qty = 0;
                                foreach ($stockinDatas as $data):
                                    $date = Date('d-m-Y',strtotime($data->created_at));
                                    $dateFormate = Date('Y-m-d 00:00:00',strtotime($data->created_at));
                                    $dateFormate2 = Date('Y-m-d 23:59:59',strtotime($data->created_at));
                                    $items = App\StockOutNew::whereBetween('created_at',[$dateFormate,$dateFormate2])->groupBy('item')->get();
                                    $total_batch = 0;
                                    $itemV = 0;
                                    $is_date = true;
                                    $itemsArr = [];
                                    $itemBatchArr = [];
                                    $ix =0;
                                    $ItemTemp = '';
                                    foreach ($items as $index1 => $item) {
                                      $itemBatch = App\StockOutNew::whereBetween('created_at',[$dateFormate,$dateFormate2])->where('item',$item->item)->groupBy('batch')->get();
                                      $total_batch = $total_batch + count($itemBatch);
                                      array_push($itemsArr, $item->item);
                                    }
                                    $b_inx = 0;
                                    sort($itemsArr);
                                    for ($i=0; $i < $total_batch; $i++) {
                                        echo "<tr>";
                                              if($is_date){
                                                echo "<td rowspan='".$total_batch."' style='padding:5px 8px'>";
                                                  echo $date;
                                                echo "</td>";
                                                $is_date = false;
                                              }
                                              if($itemV < count($itemsArr)){
                                                $itemBatch = App\StockOutNew::whereBetween('created_at',[$dateFormate,$dateFormate2])->where('item',$itemsArr[$itemV])->groupBy('batch')->get();

                                                $itemBatchC = count($itemBatch);
                                                if($i >= $ix){
                                                  echo "<td rowspan='".$itemBatchC."'  style='padding:5px 8px'>";
                                                  echo $itemsArr[$itemV];
                                                  echo "</td>";
                                                  $ItemTemp = $itemsArr[$itemV];
                                                  $ix = $i+$itemBatchC;
                                                  $itemV++;
                                                }
                                              }
                                                $itemBatch = App\StockOutNew::whereBetween('created_at',[$dateFormate,$dateFormate2])->where('item',$ItemTemp)->groupBy('batch')->get();
                                                  foreach ($itemBatch as  $iBatch) {
                                                    array_push($itemBatchArr, $iBatch->batch);
                                                  }
                                                sort($itemBatchArr);
                                   
                                                if(count($itemBatchArr) <= 1){
                                                  echo "<td  style='padding:5px 8px'>";
                                                  echo $itemBatchArr[0];
                                                  echo "</td>";
                                                  $itemBatch_porduct_c = App\StockOutNew::whereBetween('created_at',[$dateFormate,$dateFormate2])->where('item',$ItemTemp)->where('batch',$itemBatchArr[0])->count();

                                                  echo "<td  style='padding:5px 8px'>";
                                                  echo $itemBatch_porduct_c;
                                                  echo "</td>";
                                                  $total_qty += $itemBatch_porduct_c;

                                                }
                                                else{
                                                  if(count($itemBatchArr) > $b_inx){
                                                    echo "<td  style='padding:5px 8px'>";
                                                      echo $itemBatchArr[$b_inx];
                                                    echo "</td>";
                                                    $itemBatch_porduct_c = App\StockOutNew::whereBetween('created_at',[$dateFormate,$dateFormate2])->where('item',$ItemTemp)->where('batch',$itemBatchArr[$b_inx])->count();
                                                    echo "<td  style='padding:5px 8px'>";
                                                    echo $itemBatch_porduct_c;
                                                    echo "</td>";
                                                    $total_qty += $itemBatch_porduct_c;
                                                    $b_inx++;
                                                  }
                                                  else{
                                                      $b_inx = 0;
                                                      if(count($itemBatchArr) > $b_inx){
                                                        echo "<td  style='padding:5px 8px'>";
                                                          echo $itemBatchArr[$b_inx];
                                                        echo "</td>";
                                                        $itemBatch_porduct_c = App\StockOutNew::whereBetween('created_at',[$dateFormate,$dateFormate2])->where('item',$ItemTemp)->where('batch',$itemBatchArr[$b_inx])->count();
                                                        echo "<td  style='padding:5px 8px'>";
                                                        echo $itemBatch_porduct_c;
                                                        echo "</td>";
                                                        $total_qty += $itemBatch_porduct_c;
                                                        $b_inx++;
                                                      }
                                                }

                                                $itemBatchArr = [];
                                              }
                                      echo "</tr>";
                                    }

                                    $b_inx = 0;

                                endforeach; ?>
                                <tr>
                                  <td colspan="3"><b>Total Qty</b></td>
                                  <td><b>{{$total_qty}}</b></td>
                                </tr>
                                <!-- <tr>
                                  <td rowspan="4">Date1</td>
                                </tr>
                                <tr>
                                  <td rowspan="2">Date1 Data 21 A</td>
                                  <td>Date1 Data 22</td>
                                  <td>Date1 Data 23</td>
                                </tr>
                                <tr>
                                  <td>Date1 Data 33</td>
                                  <td>Date1 Data 34</td>
                                </tr>
                                <tr>
                                  <td>Date1 Data 42</td>
                                  <td>Date1 Data 43</td>
                                  <td>Date1 Data 44</td>
                                </tr> -->

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
            preventDefault();
        });

</script>
@endsection
