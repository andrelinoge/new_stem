//= require "./theme/jquery-3.2.1.js"
//= require "./theme/popper.min.js"
//= require "./theme/bootstrap.min.js"
//= require "./theme/owl.carousel.js"
//= require "./theme/jquery.magnific-popup.min.js"
//= require "./theme/magnific-popup-options.js"
//= require "./theme/revolution-slider/jquery.themepunch.revolution.min.js"
//= require "./theme/revolution-slider/jquery.themepunch.tools.min.js"
//= require "./theme/jquery.fancybox.min.js"
//= require "./theme/custom.js"
//= require rails-ujs

$(function() {
  var header = $("#top_nav");
  
  if ($(window).width() > 769)  {
    $(window).scroll(function() 
    {
      var scroll = $(window).scrollTop();

      if (scroll >= 100) {
        header.addClass('fixed-top');
      } else {
        header.removeClass('fixed-top');
      }
    });  
  }
});
