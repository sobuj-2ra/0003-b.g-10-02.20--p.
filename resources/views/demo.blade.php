<div id="pagecontent">
000077777
</div>
<input type='button' value='print' onclick='printItn()'/>
<script>
    window.printItn = function() {

        var printContent = document.getElementById('pagecontent');

        var windowUrl = 'about:blank';
        var uniqueName = new Date();
        var windowName = 'Print' + uniqueName.getTime();

//  you should add all css refrence for your html. something like.

        var WinPrint= window.open(windowUrl,windowName,'left=300,top=300,right=500,bottom=500,width=1000,height=500');
        WinPrint.document.write('<'+'html'+'><head><link href="cssreference" rel="stylesheet" type="text/css" /></head><'+'body style="background:none !important"'+'>');
        WinPrint.document.write(printContent.innerHTML);

        WinPrint.document.write('<'+'/body'+'><'+'/html'+'>');
        WinPrint.document.close();
        WinPrint.focus();
        WinPrint.print(false);
        WinPrint.close();
    }
</script>
