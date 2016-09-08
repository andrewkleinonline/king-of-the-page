$(document).ready(function () {
  voteAjaxSuccessListener()
})

  function voteAjaxSuccessListener () {
    $("a#vote_link").on("ajax:success", function(event, response){

      $("[response_id=" + response.response_id + "] span").html(response.upvote_class)
      $("[x_id=" + response.response_id + "] span").html(response.votes_message)
      
    })
  }