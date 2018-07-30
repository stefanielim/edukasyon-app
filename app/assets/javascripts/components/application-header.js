$(document).on('turbolinks:load', function() {
  $('.application-navbar__mobile-menu-icon').on('click',  function(event) {
    event.preventDefault();
    
    $('.application-navbar__links').slideToggle(function() {
      $('.application-header').toggleClass('mobile');
    });
  })
});
