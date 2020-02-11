<!DOCTYPE html>
<html>
<head>
	<title>Hand Held</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap2.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/fontawesome.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
	<meta name="csrf-token" content="{{ csrf_token() }}">

</head>
<body>
@include('includes.buttons')
@php
    $curDate = Date('d-m-Y');
@endphp
<div id="handhelds">
	<div class="container pt-3 h-100q">
		<div id="app1">
			  <section class="content ">
			          <div class="row">
			              <div class="col-md-12">
			                  <div class="main_part countercall-area" >
			                      @if(Session::has('message'))
			                          <div class="row">
			                              <div class="col-md-4 col-md-offset-4 alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</div>
			                          </div>
			                      @endif
			                  <!-- Code Here.... -->

			                      <div class="row">
			                          <div class="col-md-8">
			                              <div v-show="webfilePreloader" class="webfile-preloader"><img class="preloader" src="{{asset("public/assets/img/preloader.gif")}}" alt=""></div>

			                              <div class="col-md-12" style="background:#FFF">
			                                  <div class="readyat-data-info-area">
                                                    <span>Select Date: <input name="selected_date" class="datepicker datepicker_style input_values" style="width:120px" type="text" value="{{$curDate}}"></span>
			                                        <span>Order Reference: <select class="input_values" name="order_ref" id="order_ref" style="height:30px;width:180px">
                                                        <option value=""></option>
                                                        @foreach ($allOrderRef as $item)
                                                            <option value="{{$item->order_ref_no}}">{{$item->order_ref_no}}</option>
                                                        @endforeach  
                                                    </select>
                                                    <div class="float-right" style="background:#e5e7e9; padding: 0px 13px;border-radius: 0px 0px 5px 5px;">
                                                        <span>Total Saved: <b>@{{ total_save }}</b></span> &nbsp;&nbsp;&nbsp;&nbsp;
                                                        <span>Total NF: <b>@{{ total_failed}}</b></span><br>
                                                    </div>
			                                  </div>
			                              </div>
			                              <div class="readyat-content-area">
			                                  <div class="readyat-list-show">
			                                      <table class="table table-responsive">
			                                          <thead>
			                                              <tr>
			                                                  <th>Sl</th>
			                                                  <th>Barcode Number <span><b>( @{{ totalCount }} )</b></span></th>
			                                              </tr>
			                                          </thead>
			                                          <tbody>
			                                              <tr v-for="(item, index) in readyatArr">
			                                                  <td>@{{ index+1 }}</td>
			                                                  <td>@{{ item.barcode }} <input class="input_values" type="hidden" :value="item.barcode" name="barcode[]"></td>
			                                                  <input type="hidden" class="input_values" name="_token" value="{!! csrf_token() !!}">
			                                              </tr>
			                                          </tbody>
			                                      </table>
			                                  </div>
			                              </div>
			                              <div class="readyat-center-section">
			                                  <div class="row">
			                                      <div class="col-md-10 col-md-offset-1">
			                                          <div class="readyat-top-left">
			                                              Barcode: <input @keyup.enter="passportEnterFunc" v-model="passInputVal" id="passfieldId" type="text" style="margin-bottom:10px;" placeholder="Scan Here">
			                                              <br>
			                                              <input @click="passReadySubFunc" type="button" style="margin-left:60px;" class="btn btn-primary" value="Stock In"> <input @click="clearDataFunc" type="reset" class="btn btn-danger" value="Clear">
			                                          </div>
			                                      </div>
			                                  </div>
			                              </div>
			                          </div>
			                          <div class="col-md-4">
			                              <div class="recent_fail_data_area" style="background: #FFF">
			                                  <div style="background:#E5E7E9;width: 100%;text-align:center;border-left:5px solid #FFF;border-right:5px solid #FFF;">
			                                      <b>Recent</b><br>
			                                  <span style="color:red;font-weight:bold">Data Not Found (<b id="rec_fail2" style="color:red">@{{total_recent_f}}</b>)</span>
			                                  </div>
			                                  <table class="table table-responsive">
			                                      <tr>
			                                          <th>SL</th>
			                                          <th>Barcode</th>
			                                      </tr>
			                                      <tr v-for="(itemF,ix) in recentFData">
			                                          <td>@{{ix+1}}</td>
			                                          <td>@{{itemF.barcode}}</td>
			                                      </tr>
			                                  </table>
			                              </div>
			                          </div>
			                      </div>
			                      <br>
			                  </div>
			              </div>
			          </div>
			      </section>
			</div>
	</div>
</div>



<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>

@php
			 $url = "url::()";
@endphp
<script type="text/javascript">
	 window.onload = function() {
		 var input = document.getElementById("passfieldId").focus();
	 }
</script>
<script type="text/javascript" src="{{asset('public/front_end/js/vue.js')}}"></script>
<script type="text/javascript" src="{{asset('public/front_end/js/axios.js')}}"></script>
 </div>
				@php
						$url = "url::()";
				@endphp
	<script>
			$( ".datepicker" ).datepicker({
					dateFormat: "yy-mm-dd"
			});
	</script>
<script>

				var app = new Vue({
						el:'#app1',
						data:{
								webfilePreloader:false,
								passInputVal: '',
								readyatArr:[],
								dataArr:[],
								totalCount:0,
								checkDouble:false,
								total_save:0,
								total_failed:0,
								recentFData:[],
								total_recent_s:0,
								total_recent_f:0,

						},
						methods:{

								passportEnterFunc: function(){
										var InVal = this.passInputVal;
										this.passInputVal = InVal.split(' ').join('');
										var cuVal = this.passInputVal;


										if(cuVal != '')
										{
												this.checkDouble = false;
												var readyatArr = this.readyatArr;


												// check double data in loop //
												for(item in this.dataArr){
														if(this.dataArr[item] == this.passInputVal){
																this.checkDouble = true;
														}
												}


												// push another array for loop//
												this.dataArr.push(this.passInputVal);

												/// if all ok then push data in main array //
												if(this.checkDouble == false)
												{
														this.readyatArr.push(
																{
																		barcode:this.passInputVal
																}
														);
												}
												else
												{
														alert('This Barcode Already Taken');

												}
										}
										else{
												alert('Please input vlaue');
										}

										$('#passfieldId').focus();
										this.totalCount = this.readyatArr.length;
										this.checkDouble = false;
										this.passInputVal = '';
								},
								clearDataFunc: function()
								{
										if(this.totalCount > 0)
										{
												var sure = confirm('Are you sure! You want to clear?');
												if(sure)
												{
																this.dataArr = [];
																this.readyatArr = [];
																this.totalCount = 0;
																this.remarkParmitMod = false;
																this.checkDouble = false;
																this.remarkInputVal = '';
																this.passInputVal = '';
												}
										}
										else{
												alert('Opps! Nothing to clear');
										}
								},
								passReadySubFunc: function()
								{
										var _this = this;
                                        var order_ref = $('#order_ref').val();
                                        if(order_ref != ''){
                                            if(this.totalCount > 0){
										            var objectData = $('.input_values').serialize();
                                                    axios.post('stockout_m_store_temp',objectData,this.webfilePreloader = true)
                                                            .then(function(res){
                                                            console.log(res.data);
                                                                    _this.webfilePreloader = false;
                                                                    _this.total_save = res.data.total_save;
                                                                    //console.log(res.data.total_save);
                                                                    //console.log(res.data.total_fail);
                                                                    _this.total_failed = res.data.total_fail;
                                                                    _this.dataArr = [];
                                                                    _this.readyatArr = [];
                                                                    _this.totalCount = 0;
                                                                    _this.remarkParmitMod = false;
                                                                _this.checkDouble = false;
                                                                    _this.remarkInputVal = '';
                                                                    _this.passInputVal = '';
                                                                    _this.recentFData = res.data.reject;
                                                                    console.log(res.data.rec_save);
                                                                    _this.total_recent_s = res.data.rec_save;
                                                                    _this.total_recent_f = res.data.rec_fail;
                                                                    document.getElementById('rec_fail').innerText = res.data.rec_fail;
                                                                    document.getElementById('rec_fail2').innerText = res.data.rec_fail ;
                                                            })
                                                            .catch(function(error){
                                                                    console.log(error);
                                                                    _this.webfilePreloader = false;
                                                            })

                                            }else{
                                                    alert('Empty Barcode Number')
                                            }
                                        }
                                        else{
                                            alert('Please Selete Order Reference');
                                        }
								}


						},
						created:function() {
								var _this = this;
								axios.get('onload-stockin-m-datas',{params:{}})
										.then(function (res) {
												_this.webfilePreloader = false;
												_this.total_save = res.data.total_save;
												_this.total_failed = res.data.total_fail;
										})
										.catch(function (error) {
												console.log(error);
										})
						}
				});

		</script>
</body>
</html>
