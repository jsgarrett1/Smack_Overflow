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

    $(".vote-button").on("click", function () {
        event.preventDefault();
    var self = $(this)
    var form = $('.form_class')
    var formUrl = $(this).attr('action')
    console.log(formUrl);
    $.ajax({
      url: formUrl,
      method: 'post',
      data: {
      }
    })
    .done(function(response) {
      console.log(response);
      console.log(self.parent().find('.points'));
      self.parent().find('.points').text(response + " Points");
    });
  });

});
