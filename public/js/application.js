$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('#new_comeback_button').on('click', function() {
    $(this).css('display', 'none');
    $('#new_comeback_form').css('display', 'inline');

  });


  $('#new_comeback_form').on('submit', function(event) {

    event.preventDefault();
    var comeback_content = $("#comeback").val();
    console.log(comeback_content)
    var url_path = $(this).attr('action')
    console.log(url_path)
    if (comeback_content != "") {

      data = {comeback: comeback_content}

      $.ajax({
        url: url_path,
        type: 'POST',
        data: data
      })
      .done(function(response) {
        console.log("success");
        var comeback = JSON.parse(response)
        console.log(comeback);

        $(".individual-comeback").last().append('<div class="individual-comeback"><h4>'+comeback.description+'</h4><h4>'+comeback.vote_total+'</h4><h6>'+comeback.username+'</h6><h6>'+comeback.timestamp+'</h6></div>');
      })

      $("#comeback").val('');

    }

    $(this).css('display', 'none');
    $('#new_comeback_button').css('display', 'inline');

  });

  $('#new_smack_comment_button').on('click', function() {

    $(this).css('display', 'none');
    $('#smack_comment_form').css('display', 'inline');

  });

  $('#new_comeback_comment_button').on('click', function() {

    $(this).css('display', 'none');
    $('#comeback_comment_form').css('display', 'inline');
    console.log('worked')

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
