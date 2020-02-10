{{-- <!DOCTYPE html> --}}
<html>
<head>
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	 <script type="text/javascript" src="{{ asset('public/front_end/js/jquery-3.2.1.slim.min.js') }}"></script>
	 <script type="text/javascript" src="{{ asset('public/front_end/js/JsBarcode.all.min.js') }}"></script>
     <!-- <script src="https://cdn.jsdelivr.net/jsbarcode/3.3.20/JsBarcode.all.min.js"></script>  -->

	<meta name="csrf-token" content="{{ csrf_token() }}">



<style type="text/css" media="print">




	.barcode_jk{
		float: left;
		text-align: left;
		width: 80%;
		/*margin-bottom: 25px;
		padding: 0;
		*/
		height:auto;
		margin: 0 auto;
	}


	.barcode_jk{
		margin-bottom: 30px;
	}

	.barcode_jk p{
		text-align: center;
		width: 100%;
		margin: 0 auto;
		padding-top:10px;

	}

	.barcode_jk span{
		text-align:center;
		font-size: 8px;
		font-weight:700;
		margin: 0;
		padding: 0;
		padding-left:30px
	}

	a[href]:after {
     content: none !important;
   }


	@media print  
		{


		  	


		@page {
		   size: auto;   /* auto is the initial value */
        margin: 0mm;  /* this affects the margin in the printer settings */
		}


		html, body {
      margin: 0px !important; 
      padding: 0px !important;
    }

		footer {
			display: none;
			position: fixed;
			bottom: 0;
		}

  header {
    display: none;
    position: fixed;
    top: 0;
  }

 	a[href]:after {
		content: none !important;
   }




   }

</style>




</head>
<body>





<?php

// var_dump($send_barcode);

$n=0;
foreach($send_barcode as $get_barcode){

	//echo $n;

	$only_barcode=$get_barcode['barcode'];
	$batch_no=$get_barcode['batch_no'];
	echo '
	<div class="barcode_jk">
	<div class="barcode_jk_sub">
	<p>
	<span>'.$batch_no.' '.$send_machine.' '.$item_name.'</span>
	<canvas   id="code128'.$n.'" style="width:96%; margin:0 auto"></canvas>
	</p>
	</div>
	</div>
	';

	//echo "<pre>";
	//var_dump($only_barcode);
	//echo "</pre>";

	 echo '
	   <script>

			 JsBarcode("#code128'.$n.'", "'.$only_barcode.'", {
				fontSize: 35,
				fontOptions: "bold",
				textMargin: 0,
				displayValue: true,
				height: 190,
				width: 4,
				marginBottom:10,
				marginLeft:250,
				marginTop:10
			  });


		</script>
	 ';

	 $n++;
}


?>










<script type="text/javascript">

//window.print();
window.onload=function(){self.print();} 
//window.onfocus=function(){ window.close();}


$(window).on('afterprint', function () {
   window.location.href="{{ url("/allmachine/$send_machine") }}";
});


</script>



