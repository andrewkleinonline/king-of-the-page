var voteAjaxSuccessListener = function() {
 $(".vote-link").on("ajax:complete", function(e, request, status){
   var response = request.responseJSON;
   $("#response_" + response.response_id + " i").attr('class', response.upvote_class);
   $("#response_" + response.response_id + " .vote-count").text(response.votes_number + "Votes");
   $("#response_" + response.response_id + " #subject-points").text(response.subject_points + "Points");
   $("#king-points").text(response.king_points)
 });
}
$(document).ready(function () {
  voteAjaxSuccessListener();
});
