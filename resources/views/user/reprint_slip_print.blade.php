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

    <div class="slip-search-section">
        <div class="panel-body" style="background:#fbfbfb">
            <div class="col-sm-12">
                <table border="1" class="" style="background:#FFF;width:100%" >
                    <thead>
                        <tr>
                            <th rowspan="5" style="padding:5px;text-align:center">LOGO HERE</th>
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
                            <th style="padding:5px;text-align:center">FINISHED GOODS DELIVERY SLIP</th>
                            <th style="padding:5px;text-align:center">Page No.</th>
                            <th style="padding:5px;text-align:center">Page 1 of 1</th>
                        </tr>
                    </thead>
                </table>
                <div class="col-xs-4"><p style="margin-top:10px">SL No: {{@$sl_no}}</p></div>
                <div class="col-xs-4"><p style="margin-top:10px">Date: {{Date('d-m-Y h:i:s A')}}</p></div>
                <div class="col-xs-4"><p style="margin-top:10px">Sales Order: {{@$sales_order}}</p></div>
                
                <table border="1" class="" style="background:#FFF;width:100%;">
                    @if(@$itemWise && count($itemWise) > 0)
                    <thead>
                        <tr>
                        <th colspan="5"  style="padding:5px;">Customer Name: {{$cust_name}}</th>
                        </tr>
                        <tr>
                            <th style="padding:5px;text-align:center">Item</th>
                            <th style="padding:5px;text-align:center">Quantity(Pcs)</th>
                            <th style="padding:5px;text-align:center">Quantity(Cartons)</th>
                            <th style="padding:5px;text-align:center">Batch No.</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $is_item = true;
                            foreach($itemWise as $item){
                                $item_data = App\Item::select('item_code','item_name', 'pack_size')->where('item_code',$item->item)->first();
                                $item_c = App\StockOutNew::where('item',$item->item)->where('sl_no',$item->sl_no)->where('ref_no',$item->ref_no)->count();
                                $batch_data = App\StockOutNew::where('item',$item->item)->where('sl_no',$item->sl_no)->where('ref_no',$item->ref_no)->groupBy('batch')->get();
                                $batch_c = count($batch_data);

                                for($i = 0;$i < $batch_c;$i++){
                                    echo "<tr>";
                                        if($is_item){
                                            echo "<td rowspan=".$batch_c." style='padding:5px;text-align:center'>".$item_data['item_name']."</item>";
                                            echo "<td rowspan=".$batch_c." style='padding:5px;text-align:center'>".$item_data['pack_size']*$item_c."</item>";
                                            echo "<td rowspan=".$batch_c." style='padding:5px;text-align:center'>".$item_c."</item>";
                                            $is_item = false;   
                                        }
                                        // if($){
                                            echo "<td style='padding:5px;text-align:center'>".$batch_data[$i]->batch."</td>";
                                        // }
                                    echo "</tr>";
                                }
                                $is_item = true; 
                            }
                        ?>
                    </tbody>
                    <tfooter>
                        <tr>
                        <td colspan="5"  style='padding:5px;'><b> Transport No: {{@$transport_no}}</b></td>
                        </tr>
                        <tr>
                            <td colspan="5"  style='padding:5px;'><b>Signature & Date: </b></td>
                        </tr>
                    </tfooter>
                    @else
                    <tr style="height:150px">
                        <td colspan="5"><h3 style="text-align:center;color:#ddd">NO DATA HERE</h3></td>
                    </tr>
                    @endif
                </table>
            </div>
        </div>

    </div>
                  



<script type="text/javascript">
        $(window).load(function () {
            window.print();
        });
</script>
<script>
    $(window).on('afterprint', function () {
        window.location.href = "{{ url("/stockout-slip") }}";
    });
</script>
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
