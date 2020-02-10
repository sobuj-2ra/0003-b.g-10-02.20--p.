<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		@page { margin: 0px; }
		html,body { margin: 0px; }
		.barcode{
			padding: 5px 0 0 5px;
			margin: 0 auto;
		}
		.barcode > div {
		    margin-left: auto;
		    margin-right: auto;
		}
		span{
			display: inline-block;
			margin-left: 10pt;
			font-size: 80%;
			margin-bottom: 0;
			margin-top: 0px;
		}
		span.code{
			text-align: center;
			display: block;
			margin-top: 0;
			letter-spacing: 1px;
			font-size: 55%;
		}
	</style>
</head>
<body>
	<div class="barcode">
		<span>{{ $batch }}</span><br>
		{!! DNS1D::getBarcodeHTML($barcode, "C128",1,42 )!!}
		<span class="code">{{ $barcode }}</span>
	</div>
</body>
</html>