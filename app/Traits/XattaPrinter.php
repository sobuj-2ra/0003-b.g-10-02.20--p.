<?php 
namespace App\Traits;
use PrintNode;

Trait XattaPrinter{

	public function PrintDocument($printer_id,$document)
	{
		// Open a connection to PrintNode
    	// You first need to establish a connection to PrintNode. 
    	// This can be done by using a PrintNode\ApiKey instance using your api-key.
    	// $credentials = new PrintNode\ApiKey(
    	//     PRINTNODE_APIKEY
    	// )
    	$api_key = env('PRINTNODE_API');
        // dd($api_key);

    	$credentials = new PrintNode\Credentials();
    	$credentials->setApiKey($api_key);
    	// Hint: Your API username is in the format description.integer, where description 
    	// is the name given to the API key when you created it, followed by a dot (.) and an integer. 
    	// All this information is provided for you when you create your API Key.
    	// Step 3: Get a list of computers, printers or printjobs which are available.
    	// To get a list of computers, printers or printjobs, create a new PrintNode\Request 
    	// object, passing it your credentials as the argument to it's constructor.
    	$request = new \PrintNode\Request($credentials);
    	// Hint: Before you can get a list of computers or printers, you must have successfully 
    	// connected using the PrintNode Client software. If you have not yet connected with 
    	// the client software you will not receive any results from the API.
    	// Call the getComputers, getPrinters() or getPrintJobs() method on the object:
    	$computers = $request->getComputers();
    	$printers = $request->getPrinters();
    	//dd($printers);
    	$printJobs = $request->getPrintJobs();
    	// Hint: The return value from these methods is always an array containing 0 or more 
    	// instances of PrintNode\Computer, PrintNode\Printer or PrintNode\PrintJob depending 
    	// on the method called. You can iterate over this array however you please, for example 
    	// you might use a while or foreach loop.
    	// Step 4: Send a PrintJob to Printnode.
    	// PrintNode currently only accepts PDF documents. 
    	// To print something, you need to create a new instance of PrintNode\PrintJob:
    	$printJob = new PrintNode\PrintJob();
    	// You can then populate this object with the information about the print-job 
    	// and add the base64-encoded content of, or the URI to your PDF. To do this use the properties 
    	// as defined on the object. 
    	// $file = URL::asset('storage/test.pdf');
    	// In this example, we're going to print a a base64-encoded PDF named invoice.pdf:

    	$printer_key = (int) $this->getPrinterKeyFromId($printers,(int)$printer_id);
        // dd($printer_key);


    	$printJob->printer = $printers[$printer_key];
    	$printJob->contentType = 'pdf_base64';
    	$printJob->content = base64_encode(file_get_contents($document));
    	$printJob->source = basename($document);
    	$printJob->title = basename($document);
    	// Hint: The PrintNode PHP API comes complete with PHPDoc comments. 
    	// If you have an editor that supports PHPDoc code completion, you should see hints 
    	// for the properties and method names on each of the objects.
    	// Once you have populated the object, all that's left to do is submit it:
    	$response = $request->post($printJob);
    	// The response returned from the post method is an instance of PrintNode\Response. 
    	// It contains methods for retrieving the response headers, body and HTTP status-code and message.
    	// Returns the HTTP status code.
    	return $statusCode = $response->getStatusCode();
    	// Returns the HTTP status message.
    	$statusMessage = $response->getStatusMessage();
    	// Returns an array of HTTP headers.
    	$headers = $response->getHeaders();
    	// Return the response body.
    	 $content = $response->getContent();
	}


	public function getPrinterKeyFromId($printers,$printer_id)
	{
		foreach ($printers as $key => $printer) {
    		if ($printer->id == $printer_id) {
    			return $key;
    		}
    	}
	}


}



 ?>