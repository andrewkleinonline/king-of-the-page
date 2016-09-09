
$(document).ready(function () {
  voteAjaxSuccessListener();
});


  function voteAjaxSuccessListener () {
    $(".vote-link").on("ajax:complete", function(e, request, status){
      var response = request.responseJSON;
      $("#response_" + response.response_id + " i").attr('class', response.upvote_class);
      $("#response_" + response.response_id + " .vote-count").text(`${response.votes_number} Votes`);
    });
  }
