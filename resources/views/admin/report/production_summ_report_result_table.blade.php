@extends('admin.app')

@section('title','Add Item')

@section('extra_css')

@endsection

@section('main_content')
<style type="text/css">
  #ui-datepicker-div{
    z-index:+9999;
  }
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
                          <h3 style="margin-bottom:0px;">Bengal Glass Works Ltd.</h3>
                          <p><i style="padding-bottom:10px;">- Production Summary Report -</i></p>
                          <p>
                            Date:
                            @if($fromDate == $toDate)
                                {{$fromDate}}
                            @else
                            {{$fromDate." To ".$toDate}}
                            @endif
                          </p>
                        </div>
                          <table border="1"class="text-center" style="background:#FFF;width:100%">
                                <tr>
                                  <th style="padding:5px 8px;">Date</th>
                                  <th style="padding:5px 8px;">Shift</th>
                                  <th style="padding:5px 8px;">Machine</th>
                                  <th style="padding:5px 8px;">A</th>
                                  <th style="padding:5px 8px;">B</th>
                                  <th style="padding:5px 8px;">C</th>
                                </tr>
                                <?php

                                //$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm
                                    $totalGradeA = 0;
                                    $totalGradeB = 0;
                                    $totalGradeC = 0;
                                    $total_qty = 0;
                                    foreach($barcodeData as $i1 => $date){
                                    $rawdate = $date[0]->created_at;
                                    $loopDate = DATE('Y-m-d',strtotime($rawdate));
                                    $loopDateFrom = DATE('Y-m-d 07:00:00',strtotime($loopDate));
                                    $loopDateTo = DATE('Y-m-d 6:59:59',strtotime($loopDate));
                                    $Modifydate = new DateTime($loopDateTo);
                                    $Modifydate->modify('+1 day');
                                    $toF = $Modifydate->format('Y-m-d H:i:s');
                                    //echo $loopDateFrom." => ".$toF."<br>";


                                    $shifts = $Datas->where('created_at','>',$loopDateFrom)->where('created_at','<', $toF)->groupBy('shift');
                                    $total_m = 0;
                                    $shiftV = 0;
                                    $is_date = true;
                                    $shiftArr = [];
                                    $shift_m_arr = [];
                                    $ix =0;
                                    $shiftTemp = '';
                                    $m_i = 0;
                                    $gradeArr = ['A','B','C'];
                                    foreach ($shifts as $index1 => $item) {
                                      $shiftMachine= $Datas->where('created_at','>',$loopDateFrom)->where('created_at','<', $toF)->where('shift',$item[0]->shift)->groupBy('m_id');
                                      $total_m += count($shiftMachine);
                                      array_push($shiftArr, $item[0]->shift);
                                    }
                                    sort($shiftArr);

                                    for ($i=0; $i < $total_m; $i++) {
                                        echo "<tr>";
                                              if($is_date){
                                                echo "<td rowspan='".$total_m."' style='padding:5px 8px'>";
                                                  echo Date('d-m-Y', strtotime($rawdate));
                                                echo "</td>";
                                                $is_date = false;
                                              }

                                              if($shiftV < count($shiftArr)){
                                                $shiftMachine= $Datas->where('created_at','>',$loopDateFrom)->where('created_at','<', $toF)->where('shift',$shiftArr[$shiftV])->groupBy('m_id');

                                                $shiftMachine_C = count($shiftMachine);
                                                if($i >= $ix){
                                                  echo "<td rowspan='".$shiftMachine_C."'  style='padding:5px 8px'>";
                                                    echo $shiftArr[$shiftV];
                                                  echo "</td>";
                                                  $shiftTemp = $shiftArr[$shiftV];
                                                  $ix = $i+$shiftMachine_C;
                                                  $shiftV++;

                                                }
                                              }
                                                $shiftMachine= $Datas->where('created_at','>',$loopDateFrom)->where('created_at','<', $toF)->where('shift',$shiftTemp)->groupBy('m_id');
                                                  foreach ($shiftMachine as $ib => $iMachine){
                                                    array_push($shift_m_arr, $iMachine[0]->m_id);
                                                    }
                                                sort($shift_m_arr);


                                                if(count($shift_m_arr) <= 1){
                                                  echo "<td  style='padding:5px 8px'>";
                                                  echo $shift_m_arr[0];
                                                  echo "</td>";
                                                    foreach ($gradeArr as  $gArItem) {
                                                      $grade_total = $Datas->where('created_at','>',$loopDateFrom)->where('created_at','<', $toF)->where('shift',$shiftTemp)->where('m_id',$shift_m_arr[0])->where('grade',$gArItem);
                                                      echo "<td style='padding:5px 8px'>".count($grade_total)."</td>";
                                                      if($gArItem == 'A'){
                                                        $totalGradeA += count($grade_total);
                                                      }
                                                      else if($gArItem == 'B'){
                                                        $totalGradeB += count($grade_total);
                                                      }
                                                      else if($gArItem == 'C'){
                                                        $totalGradeC += count($grade_total);
                                                      }
                                                    }
                                                }
                                                else{
                                                  if(count($shift_m_arr) > $m_i){
                                                    echo "<td  style='padding:5px 8px'>";
                                                    echo $shift_m_arr[$m_i];
                                                    echo "</td>";
                                                      foreach ($gradeArr as  $gArItem) {
                                                        $grade_total = $Datas->where('created_at','>',$loopDateFrom)->where('created_at','<', $toF)->where('shift',$shiftTemp)->where('m_id',$shift_m_arr[$m_i])->where('grade',$gArItem);
                                                        echo "<td style='padding:5px 8px'>".count($grade_total)."</td>";
                                                        if($gArItem == 'A'){
                                                          $totalGradeA += count($grade_total);
                                                        }
                                                        else if($gArItem == 'B'){
                                                          $totalGradeB += count($grade_total);
                                                        }
                                                        else if($gArItem == 'C'){
                                                          $totalGradeC += count($grade_total);
                                                        }
                                                      }
                                                      $m_i++;
                                                  }
                                                  else{
                                                      $m_i=0;
                                                      if(count($shift_m_arr) > $m_i){
                                                        echo "<td  style='padding:5px 8px'>";
                                                        echo $shift_m_arr[$m_i];
                                                        echo "</td>";
                                                          foreach ($gradeArr as  $gArItem) {
                                                            $grade_total = $Datas->where('created_at','>',$loopDateFrom)->where('created_at','<', $toF)->where('shift',$shiftTemp)->where('m_id',$shift_m_arr[$m_i])->where('grade',$gArItem);
                                                            echo "<td style='padding:5px 8px'>".count($grade_total)."</td>";
                                                            if($gArItem == 'A'){
                                                              $totalGradeA += count($grade_total);
                                                            }
                                                            else if($gArItem == 'B'){
                                                              $totalGradeB += count($grade_total);
                                                            }
                                                            else if($gArItem == 'C'){
                                                              $totalGradeC += count($grade_total);
                                                            }
                                                        }
                                                        $m_i++;
                                                      }
                                                  }
                                                }
                                                $shift_m_arr = [];
                                      echo "</tr>";
                                    }

                               } ?>
                               <tr>
                                 <td style='padding:5px 8px' colspan="3"><b>Total</b></td>
                                 <td style='padding:5px 8px'><b>{{$totalGradeA}}</b></td>
                                 <td style='padding:5px 8px'><b>{{$totalGradeB}}</b></td>
                                 <td style='padding:5px 8px'><b>{{$totalGradeC}}</b></td>
                               </tr>
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
            preventDefault();
        });

</script>
@endsection
