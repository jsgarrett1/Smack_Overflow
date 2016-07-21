$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('#new_comeback_button').on('click', function() {

    $(this).css('display', 'none');
    $('#new_comeback_form').css('display', 'inline');

  });


  $('#new_smack_comment_button').on('click', function() {

    $(this).css('display', 'none');
    $('#smack_comment_form').css('display', 'inline');

  });

  // $('#new_comeback_form').submit( function(event) {

  //   event.preventDefault();
  //   var comeback = $("#comeback").val();

  //   if (comeback != "") {

  //     $.ajax({
  //       url: '/categories/:category_id/smacks/:smack_id/comebacks/new',
  //       type: 'default GET (Other values: POST)',
  //       dataType: 'default: Intelligent Guess (Other values: xml, json, script, or html)',
  //       data: {param1: 'value1'},
  //     })
  //     .done(function() {
  //       console.log("success");
  //     })
  //     .fail(function() {
  //       console.log("error");
  //     })
  //     .always(function() {
  //       console.log("complete");
  //     });




  //     $("#comeback").val('');
  //   }

    // $("#comebacks").append('<li class="comment"><article><p>'+comments+'</p><span class="author">'+author_name+'</span></article></li>');
});
