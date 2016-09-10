
// $(document).ready(function () {
//   setPromptResponseType()
// })
//
//   function setPromptResponseType () {
//
//
// $(document).ready(function () {
//   adminApprovePrompt()
// })
//
// function adminApprovePrompt() {
//   $("button#prompt_approve").on("ajax:success", function(event, response) {
//     debugger;
//   })
// }
$(document).ready(function() {
    	$("input#txt").hide();
      $("input#img").hide();
    $('input:radio[name=data_type]').change(function() {

        if (this.value == 'txt_response') {
            $("input#txt").show();

        }
        else if (this.value == 'img_response') {
        	$("input#img").show();

        }
    });
});



// function admin_approve(){
//   $("button#prompt_approve").click(funtion(){
//     $.ajax("/prompts/approve_prompt")
//   });
// }
