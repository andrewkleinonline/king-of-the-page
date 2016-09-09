
// $(document).ready(function () {
//   setPromptResponseType()
// })
//
//   function setPromptResponseType () {
//
//
$(document).ready(function () {
  adminApprovePrompt()
})

function adminApprovePrompt() {
  $("button#prompt_approve").on("ajax:success", function(event, response) {
    debugger;
  })
}

// function admin_approve(){
//   $("button#prompt_approve").click(funtion(){
//     $.ajax("/prompts/approve_prompt")
//   });
// }
