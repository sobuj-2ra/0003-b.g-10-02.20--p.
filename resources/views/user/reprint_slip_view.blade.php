<!DOCTYPE html>
<html>
<head>
	<title>Hand Held</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
{{-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/> --}}
<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap2.min.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/fontawesome.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
	<meta name="csrf-token" content="{{ csrf_token() }}">

</head>
<body>
@include('includes.buttons')
<div id="handheld">
	<div class="container pt-3 h-100">
		<div class="row">
			<div class="col-12 mx-auto">
			</div>
			<div class="col-12">
                <div class="row">
                    <div class="col-sm-12">
                        <br>
                        <div class="slip-search-section">
                            <div class="col-sm-10 col-sm-offset-1">
                                <div class="panel panel-info">
                                    <div class="panel-heading text-center">
                                    </div>
                                    <div class="panel-body" style="background:#fbfbfb">
                                        <h3 style="text-align:center;color:#444">Delivery Slip Reprint</h3>
                                        <hr>
                                        <form action="{{URL::to('stockout-slip/reprint')}}" method="POST">
                                            {{csrf_field()}}
                                            <div class="col-sm-8 col-sm-offset-2">
                                                <div class="serach-order-ref">
                                                    <div class="input-group">
                                                        <span class="input-group-addon" style="background: none;padding:0px;border:0px;">Delivery Slip Serial No: </span>
                                                        <select name="sl_no" id="" class="selectpicker form-control" data-live-search="true" required>
                                                            <option value=""></option>
                                                            @foreach ($allSL as $slItem)
                                                                <option value="{{$slItem->sl_no}}">{{$slItem->sl_no}}</option>
                                                            @endforeach
                                                        </select>
                                                        <span class="input-group-addon" style="background: none;padding:0px;border:0px;"><button style="" class="btn btn-warning">Print</button></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
		</div>
	</div>

</div>



<link rel="stylesheet"  href="{{ asset('public/admin_asset/dist/css/bootstrap-select.css') }}" />
<script src="{{ asset('public/admin_asset/dist/js/bootstrap-select.js') }}"></script>
<script type="text/javascript">
  $('.selectpicker').selectpicker();
</script>
<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>

<script>
	 const app = new Vue({
	    el: '#handheld',
	    data: {
	    	sales_order :{},
	    	test: 0,
	    	message: ''
	    },

	    mounted(){
	    	// this.getSalesOrder()
	    	// this.listen()
	    },

	    methods: {
	    	getSalesOrder(){
	    		axios.get('{{ route('getSalesOrders') }}')
	    		.then((res) => {
	    			// console.log(res.data);
	    			this.sales_order = res.data;
	    		})
	    		.catch((err) =>{
	    			console.log(err);
	    		})
	    	},

	    	listen(){
	    		Echo.channel('handheld')
	    			.listen('NewSalesOrderAdded',(data)=>{
	    				this.sales_order.unshift(data.stockout)
	    				//console.log(data.stockout);
	    			})
	    	},

	    	// getUrl(data){
	    	// 	var url = `/`;
	    	// 	var sales_order = data.sales_order;
	    	// 	// console.log(url+sales_order);
	    	// 	window.location.href = url+sales_order;
	    	// },

	    	printInvoice(single_sales_order,index){
	    		console.log(single_sales_order,index);
	    	}




	    }
	});
</script>
</body>
</html>
