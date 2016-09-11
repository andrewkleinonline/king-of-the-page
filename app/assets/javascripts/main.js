
$(document).ready(function() {
    	$("div.text_response").hide();
      $("div.image_response").hide();
    $('input:radio[name=data_type]').change(function() {

        if (this.value == 'txt_response') {
            $("div.text_response").show();

        }
        else if (this.value == 'img_response') {
        	$("div.image_response").show();

        }
    });
});
