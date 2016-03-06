$(document).ready(function(){

  $('.new-comment-box').hide();

  $('.comment-link').click(function(e){
    e.preventDefault();
    var new_comment_box = $(this).parent().children('.new-comment-box');
    new_comment_box.fadeIn();
    $(this).hide();
  });

  $('.cancel-comment-button').click(function(){
    var new_comment_box = $('.new-comment-box').parent().children('.new-comment-box');
    new_comment_box.fadeOut();
    $('.comment-link').show();
  });

});
