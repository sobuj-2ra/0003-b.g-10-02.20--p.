<!DOCTYPE html>
<html>
<head>
	<title>Hand Held</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/fontawesome.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<!-- Scripts -->
<script src="{{ asset('js/app.js') }}"></script>

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
							<div class="col-md-3">
								<a href="{{URL::to('stockout-slip')}}" class="box-area">
									<div class="stockin-area text-center">
										<i class="fa fa-stack-overflow"></i><br>
										Slip Section
									</div>
								</a>
								<br>
							</div>
							<div class="col-md-3">
								<a href="{{URL::to('stockouts')}}" class="box-area">
									<div class="stockin-area text-center">
										<i class="fa fa-barcode text-center"></i><br>
										Old Menu
									</div>
								</a>
								<br>
							</div>
					</div>
			</div>
		</div>
	</div>

</div>











<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>
<script src="{{ asset('public/admin_asset/dist/js/bootstrap-select.js') }}"></script>
<script type="text/javascript">
  $('.selectpicker').selectpicker();
</script>

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
