<!DOCTYPE html>
<html>
<head>
	<title>Stockout</title>

	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/sweetalert.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('public/front_end/css/style.css') }}">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<!-- Scripts -->
	<script src="{{ asset('public/js/app.js') }}"></script>

</head>
<body>
@include('includes.buttons')
<div id="handheld_single">
	<div class="container pt-3 h-100">
		<div class="row">
			<div class="col-5 mx-auto">
				<h2>Scanner Id: {{ $data->scanner_id }}</h2>
			</div>
			<div class="col-5 mx-auto">
				<h2>Sales Order: {{ $data->sales_order }}</h2>
			</div>
			<div class="col-12 mx-auto">
				<div class="list-group">

				  	<p v-if="Object.keys(barcode).length === 0" class="list-group-item list-group-item-action disabled">0 Items Scanned</p>

				  	<p  v-for="(single_barcode,index) in barcode" class="list-group-item list-group-item-action">
				  	@{{ single_barcode.barcode }} <strong>(@{{ single_barcode.batch_no }})</strong> <a href="#" @click.prevent="deleteBarcode(single_barcode,index)" class="btn btn-danger float-right">Delete</a>
				  	</p>


				</div>
			</div>
		</div>
	</div>

</div>




<script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/popper.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/sweetalert.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('public/front_end/js/main.js') }}"></script>


<script>
	 const app = new Vue({
	    el: '#handheld_single',
	    data: {
	    	barcode :{},
	    },

	    mounted(){
	    	this.getSnannedItem();
	    	this.listen();
	    },

	    methods: {
	    	getSnannedItem(){
	    		axios.get('{{ route('getAllBarcodeBySalesOrder',$data->sales_order) }}')
	    		.then((res) => {
	    			// console.log(res.data);
	    			this.barcode = res.data;
	    		})
	    		.catch((err) =>{
	    			console.log(err);
	    		})
	    	},

	    	listen(){
	    		Echo.channel('newbarcodescan')
	    			.listen('NewBarcodeScan',(data)=>{
	    				//console.log(data.barcode.original);
	    				this.barcode.unshift(data.barcode.original)
	    				// console.log(data);
	    			})
	    	},

	    	deleteBarcode(single_barcode,index){
	    		//console.log(single_barcode);
	    		if(confirm('Are you sure ?'))
	    		axios.post('{{ route('deleteScannedBarcode') }}',
					{product_stock_in_id: single_barcode.pivot.product_stock_in_id,
						stockout_id: single_barcode.pivot.stockout_id,})
				.then((res)=>{
					//console.log(res)
					if(res.data == 1){
						swal("Done!", "Deleted Successfully", "success");
						this.barcode.splice(index, 1);
					}
				})
				.catch((err)=>{
					swal("Error!", "There was an error", "error");
					console.log(err)
				})
	    	}

	    	// getUrl(data){
	    	// 	var url = `/`;
	    	// 	var sales_order = data.sales_order;
	    	// 	// console.log(url+sales_order);
	    	// 	window.location.href = url+sales_order;
	    	// }




	    }
	});
</script>
</body>
</html>
