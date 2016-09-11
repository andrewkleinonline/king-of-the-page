
$(document).ready(function() {
  show_form();
  hide_form();
});


//       $("div.text_response").hide();
//       $("div.image_response").hide();
//       $('input:radio[name=data_type]').change(function() {
//         if (this.value == 'txt_response') {
//             $("div.text_response").show();
//         }
//         else if (this.value == 'img_response') {
//         	$("div.image_response").show();
//         }
//     });
// });


function show_form(){
  $('#respond-form').hide();
  $("#respond-button").on("click", function(){
    $('#respond-form').show();
  });
}

function hide_form(){
  $("#respond-button-submit").on("click", function(){
    $('#respond-form').hide();
  });
}
