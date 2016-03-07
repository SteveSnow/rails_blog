$(document).ready(function() {

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

 $('.inner-comment-wrapper').map(function(){
    commentBoxHeight = $(this).height();
    messageHeight = $(this).children('.comment-message').height();
    infoHeight = $(this).children('.comment-info').height();
    margin_offset = commentBoxHeight - messageHeight - infoHeight - 10 ;
    $(this).children('.comment-info').css('margin-top', margin_offset);
  });

});

function commentInfoMargin(){

};
