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
                                        <form action="{{URL::to('stockout-slip')}}" method="POST">
                                            {{csrf_field()}}
                                            <div class="col-sm-7 col-sm-offset-5">
                                                <div class="serach-order-ref">
                                                    <div class="input-group">
                                                        <span class="input-group-addon" style="background: none;padding:0px;border:0px;">Order Reference No: </span>
                                                        <select name="order_ref" id="" class="selectpicker form-control" data-live-search="true" required>
                                                            <option value=""></option>
                                                            @foreach ($allRef as $refItem)
                                                                @if(@$ref && $refItem->order_ref == $ref)
                                                                    <option value="{{$refItem->order_ref}}" selected>{{$refItem->order_ref}}</option>
                                                                @else
                                                                    <option value="{{$refItem->order_ref}}">{{$refItem->order_ref}}</option>
                                                                @endif
                                                            @endforeach
                                                        </select>
                                                        <span class="input-group-addon" style="background: none;padding:0px;border:0px;"><button style="background:#fbfbfb" class="btn btn-default">Search</button></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="col-sm-12">
                                            <table class="table table-responsive table-bordered" style="background:#FFF">
                                                @if(@$itemWise && count($itemWise) > 0)
                                                <thead>
                                                    <tr>
                                                        <th colspan="5" style="text-align:center">Order Reference Search Data</th>
                                                    </tr>
                                                    <tr>
                                                        <th>Item</th>
                                                        <th>Quantity(Pcs)</th>
                                                        <th>Quantity(Cartons)</th>
                                                        <th>Batch No.</th>
                                                        <th>Action.</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        $is_item = true;
                                                        foreach($itemWise as $item){
                                                            $item_data = App\Item::select('item_code','item_name', 'pack_size')->where('item_code',$item->item)->first();
                                                            $item_c = App\Temporarystockout::where('item',$item->item)->where('status',1)->count();
                                                            $batch_data = App\Temporarystockout::where('item',$item->item)->where('status',1)->groupBy('batch')->get();
                                                            $batch_c = count($batch_data);

                                                            for($i = 0;$i < $batch_c;$i++){
                                                                echo "<tr>";
                                                                    if($is_item){
                                                                        echo "<td rowspan=".$batch_c.">".$item_data['item_name']."</td>";
                                                                        echo "<td rowspan=".$batch_c.">".$item_data['pack_size']*$item_c."</td>";
                                                                        echo "<td rowspan=".$batch_c.">".$item_c."</td>";
                                                                    }
                                                                        echo "<td>".$batch_data[$i]->batch."</td>";
                                                                 
                                                                    if($is_item){
                                                                        echo "<td rowspan=".$batch_c.">";
                                                                            ?>
                                                                               

                                                                            <?php
                                                                        echo "</td>";
                                                                        $is_item = false;   
                                                                    }
                                                                echo "</tr>";
                                                            }
                                                            $is_item = true; 
                                                        }
                                                    ?>
                                                </tbody>
                                                @else
                                                <tr style="height:150px">
                                                    <td colspan="5"><h3 style="text-align:center;color:#ddd">SEARCH DATA HERE</h3></td>
                                                </tr>
                                                @endif
                                            </table>
                                            @if(@$itemWise && count($itemWise) > 0)
                                                <form action="{{URL::to('stockout-slip-print')}}" method="GET">
                                                    Transport No. <input type="text" name="transport_no" required> Sales Order: <input type="text" name="sales_order" required> <input onclick="return confirm('Are You Sure! You want to Print & Save')" class="btn btn-warning" type="submit" value="Print & Save">
                                                    <input type="hidden" name="ref_no" value="{{@$ref}}">
                                                    <input type="hidden" name="cust_name" value="{{@$cust_name}}">
                                                    <input type="hidden" name="cust_id" value="{{@$cust_id}}">
                                                    <input type="hidden" name="sl_no" value="{{@$sl_no}}">
                                                </form>
                                            @endif
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
