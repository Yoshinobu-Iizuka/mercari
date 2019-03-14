$(function () {

  const $hamburger = document.querySelector('.hamburger');
  $hamburger.addEventListener('click', function(){
    $hamburger.classList.toggle('is-active')
  });

  const $wrapper = document.getElementById('nav-wrapper');
  const $navBtn = document.getElementById('nav-btn');

  $navBtn.addEventListener('click', navToggle);

  function navToggle() {
    if ($wrapper.classList.contains('nav-open')) {
      navCloseFunc();
    } else {
      navOpenFunc();
    }
  }

  function navOpenFunc() {
    $wrapper.classList.add('nav-open');
  }
  function navCloseFunc() {
    $wrapper.classList.remove('nav-open');
  }

});
