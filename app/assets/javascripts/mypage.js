$(function() {
  $('.mypage-tab-todo').hide();
  $('.mypage-tab-notification').show();
  $('.tab-notification').addClass("active");

  $('.dealing-detail').show();
  $('.done-detail').hide();
  $('.dealing').addClass('active');

  $('.tab-notification').on("click", function(e){
    e.preventDefault();
    $(this).addClass('active');
    $('.tab-todo').removeClass('active');
    $('.mypage-tab-todo').hide();
    $('.mypage-tab-notification').show();
  });

  $('.tab-todo').on("click", function(e){
    e.preventDefault();
    $(this).addClass('active');
    $('.tab-notification').removeClass('active');
    $('.mypage-tab-notification').hide();
    $('.mypage-tab-todo').show();
  });

  $('.dealing').on("click", function(e){
    e.preventDefault();
    $(this).addClass('active');
    $('.done').removeClass('active');
    $('.dealing-detail').show();
    $('.done-detail').hide();
  });

  $('.done').on("click", function(e){
    e.preventDefault();
    $(this).addClass('active');
    $('.dealing').removeClass('active');
    $('.dealing-detail').hide();
    $('.done-detail').show();
  });
});
