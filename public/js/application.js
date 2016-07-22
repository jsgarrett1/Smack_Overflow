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
      self.parent().find('.points').text(response);
    });
  });

  $(".xyz_comeback").css("padding", "20px");

  //   $(".xyz_comeback").on("click", function (event) {
  //       event.preventDefault();

  //   var self = $(this);
  //   console.log(self);
  //   console.log(event);
  //   var form = $('.form_class')
  //   var formUrl = $(this).attr('action')
  //   $(this).css('color', 'red');

  //   $.ajax({
  //     url: formUrl,
  //     method: 'post',
  //     data: {
  //     }
  //   })
  //   .done(function(response) {
  //     console.log(response);
  //     console.log(self.parents("#comebacks"));
  //     // .find('.comeback-points')
  //     // .text(response);
  //   });
  // });

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
