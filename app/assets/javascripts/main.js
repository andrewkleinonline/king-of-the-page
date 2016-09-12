
$(document).ready(function() {
  show_respond_form();
  show_overthrow_box();
  hide_form();
});



function show_respond_form(){
  $('#respond-form').hide();
  $("#respond-button").on("click", function(){
    $('#respond-form').show();
  });
}

function show_overthrow_box(){
  $('#overthrow-box').hide();
  $("#overthrow-button").on("click", function(){
    $('#overthrow-box').show();
  });
}

function hide_form(){
  $("#respond-button-submit").on("click", function(){
    $('#respond-form').hide();
  });
}
