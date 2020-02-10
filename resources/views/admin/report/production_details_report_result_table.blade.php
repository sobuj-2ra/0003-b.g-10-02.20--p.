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
                            Date:
                            @if(@$fromDate == @$toDate)
                                {{@$fromDate}}
                            @else
                            {{@$fromDate." to ".@$toDate}}
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
                                    $totalGradeA = 0;
                                    $totalGradeB = 0;
                                    $totalGradeC = 0;
                                    foreach($barcodeData as $i1 => $date){
                                      $m_count = 0;
                                      $shift_count = 0;
                                    $loopDate = DATE('Y-m-d',strtotime($date->created_at));
                                    $loopDateFrom = DATE('Y-m-d 06:00:00',strtotime($loopDate));
                                    $loopDateTo = DATE('Y-m-d 5:59:59',strtotime($loopDate));
                                    $Modifydate = new DateTime($loopDateTo);
                                    $Modifydate->modify('+1 day');
                                    $toF = $Modifydate->format('Y-m-d H:i:s');
                                    //echo $loopDateFrom." => ".$toF."<br>";

                                    $shifts = App\Barcode::select('created_at','shift')->whereBetween('created_at',[$loopDateFrom,$toF])->groupBy('shift')->get();
                                    $shift_count += count($shifts);
                                    foreach($shifts as $shift){
                                      $machines = App\Barcode::select('created_at','shift',DB::raw('COUNT(m_id) AS t_m'))->whereBetween('created_at',[$loopDateFrom,$toF])->where('shift',$shift->shift)->groupBy('m_id')->get();
                                      $m_count += count($machines);
                                      //echo count($machines).", ";
                                    }

                                    //echo "-".$m_count."<br>";
                                    // echo $shift_count."<br><br>";

                                    $is_date = 1;
                                    $shift_c = 0;
                                    $is_shift = 0;
                                    $m_c = 0;
                                    $is_m = 0;
                                    $m_i = 0;
                                    $ix = 0;
                                    $shiftItem = '';
                                    $shiftsArr = App\Barcode::select('created_at','shift')->whereBetween('created_at',[$loopDateFrom,$toF])->groupBy('shift')->get()->toarray();

                                  //echo $m_count;
                                  for ($i = 0; $i < $m_count ; $i++){
                                    echo "<tr>";
                                      if ($is_date == 1){
                                        echo "<td style='padding:5px 8px' rowspan='".$m_count."'>".Date('d-m-Y',strtotime($date->created_at))."</td>";
                                      }
                                      $shiftsData = App\Barcode::select('created_at','shift')->whereBetween('created_at',[$loopDateFrom,$toF])->groupBy('shift')->get()->toarray();
                                      $shift_c = count($shiftsData);

                                      if($is_shift < $shift_c){
                                        //echo $is_shift."->";
                                          $machineData = App\Barcode::select('created_at','shift','m_id')->whereBetween('created_at',[$loopDateFrom,$toF])->where('shift',$shiftsData[$is_shift]['shift'])->groupBy('m_id')->get()->toarray();
                                          $m_c = count($machineData);
                                            if($i >= $ix){
                                              echo "<td style='padding:5px 8px' rowspan='".$m_c."'>".$shiftsData[$is_shift]['shift']."</td>";
                                              $shiftItem = $shiftsData[$is_shift]['shift'];
                                              $ix = $i+$m_c;
                                              $is_shift++;
                                              $gradeArr = ['A','B','C'];
                                            }
                                          //echo count($machineData)." ";
                                      }
                                        $machine = App\Barcode::select('created_at','shift','m_id')->whereBetween('created_at',[$loopDateFrom,$toF])->where('shift',$shiftItem)->groupBy('m_id')->get()->toarray();

                                        if(count($machine) <= 1){
                                          echo "<td style='padding:5px 8px'>".$machine[0]['m_id']."</td>";
                                          foreach ($gradeArr as  $gArItem) {
                                            $grade_total = App\Barcode::whereBetween('created_at',[$loopDateFrom,$toF])->where('shift',$shiftItem)->where('m_id',$machine[0]['m_id'])->where('grade',$gArItem)->get();
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
                                          if(count($machine) > $m_i){
                                            echo "<td style='padding:5px 8px'>".$machine[$m_i]['m_id']."</td>";
                                            foreach ($gradeArr as  $gArItem) {
                                              $grade_total = App\Barcode::whereBetween('created_at',[$loopDateFrom,$toF])->where('shift',$shiftItem)->where('m_id',$machine[$m_i]['m_id'])->where('grade',$gArItem)->get();
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
                                            $m_i = 0;
                                            if(count($machine) > $m_i){
                                              echo "<td style='padding:5px 8px'>".$machine[$m_i]['m_id']."</td>";
                                              foreach ($gradeArr as  $gArItem) {
                                                $grade_total = App\Barcode::whereBetween('created_at',[$loopDateFrom,$toF])->where('shift',$shiftItem)->where('m_id',$machine[$m_i]['m_id'])->where('grade',$gArItem)->get();
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
                                    echo "</tr>";
                                        $is_date = 0;
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
            location.reload(true);
        });

</script>
@endsection
