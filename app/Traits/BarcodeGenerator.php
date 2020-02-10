<?php 
namespace App\Traits;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\File;
use PDF;


Trait BarcodeGenerator{
	public function generateBarcodeOld($barcode='',$batch='')
	{
	    // define barcode style
	    $style = array(
	        'position' => 'L',
	        'align' => 'C',
	        'stretch' => false,
	        'fitwidth' => false,
	        'cellfitalign' => '',
	        'border' => false,
	        'hpadding' => 'auto',
	        'vpadding' => 'auto',
	        'fgcolor' => array(0,0,0),
	        'bgcolor' => false, //array(255,255,255),
	        'text' => true,
	        'font' => 'helvetica',
	        'fontsize' => 8,
	        'stretchtext' => 0
	    );


	    //PDF::SetTitle('Hello World');
	    PDF::changeFormat('XT_BARCODE');
	    PDF::reset();
	    PDF::setPrintHeader(false);
	    PDF::setPrintFooter(false);
	    PDF::SetMargins(2,0,0);
	    PDF::SetFooterMargin(0);
	    PDF::SetAutoPageBreak(true,0);
	    // PDF::addFormat("custom", $width, $height);
	    //PDF::Format('A4');
	    PDF::setCellPadding(0,0,0,2);
	    PDF::SetFont('helvetica', '', 11);
	    PDF::AddPage();
	    //PDF::SetXY(2,0);
	    PDF::Cell(22, 0, $batch, 0,0, 'C', 0, '', 0, false, 'T', 'C');
	    PDF::Write(0, '', '', 0, 'L', true, 0, false, false, 0);
	    PDF::write1DBarcode($barcode, 'C128', '', '', '', 15, 0.8,$style, 'N');
	    PDF::Output(storage_path('app/public/pdfs/').$barcode.'.pdf','F');
	}


	public function generateBarcode($barcode='',$batch='',$machine = '')
	{
		$pdf = App::make('dompdf.wrapper');
		$pdf->loadView('barcode',['barcode'=>$barcode,'batch'=>$batch])->setPaper([0, 0,72 , 223.2], 'landscape');
		$pdf->stream();
		$output = $pdf->output();

		// $path = public_path().'/storage/pdfs/'.$machine.'/';
		$path = base_path().'/storage/app/public/pdfs/'.$machine.'/';
		// $path = storage_path().'/public/pdfs/'.$machine.'/';
		// dd(is_dir($path));
		// dd(file_exists($path));
		// dd($path);
		// if(!is_dir($path)){
		// 	rmdir($path);
  //     		mkdir($path, 0755, true);
		// }
		// dd(($path));
		if(File::isDirectory($path)){
			File::makeDirectory($path, 0755, true, true);
		}
		File::makeDirectory($path, 0755, true, true);

	      if(file_put_contents(storage_path("app/public/pdfs/".$machine."/".$barcode.".pdf"), $output)){
	        return response()->json(true);
	      }else{
	        return response()->json(false);
	      }
		
	}


}









 ?>