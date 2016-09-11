
$(document).ready(function() {
    	$("input.form-control").hide();
      $("input.form-control-form").hide();
    $('input:radio[name=data_type]').change(function() {

        if (this.value == 'txt_response') {
            $("input.form-control").show();

        }
        else if (this.value == 'img_response') {
        	$("input.form-control-form").show();

        }
    });
});
