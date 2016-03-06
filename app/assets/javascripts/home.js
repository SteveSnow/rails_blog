$(document).on('page:load', function(){

  $('.comment-link').click(function(e){
    e.preventDefault();
    var new_comment_box = $(this).next().children('.new-comment-box');
    new_comment_box.fadeIn();
    $(this).hide();
  });

  $('.cancel-comment-button').click(function(){
    var new_comment_box = $('.new-comment-box').parent().children('.new-comment-box');
    new_comment_box.hide();
    $('.comment-link').show();
  });

});
