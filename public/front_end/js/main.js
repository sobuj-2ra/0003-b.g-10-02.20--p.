$(document).ready(function(e){
		// $(".image-checkbox").click(function(){
		// 	$(this).toggleClass("image-checkbox-checked");
		// });

		$(".allreset").click(function() {
			$('input[type=checkbox]').prop('checked',false); 
			$('input:checkbox').removeAttr('checked');
			$(':checkbox').each(function(i,item){ 
			        this.checked = item.defaultChecked; 
			});
			$(".image-checkbox").removeClass('image-checkbox-checked');
		});
});