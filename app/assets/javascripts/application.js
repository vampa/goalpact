// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

    // hide notifications after 3 seconds
	$('.notice').delay(3200).fadeOut();
	$('.alert').delay(3200).fadeOut();

    // show login form
    $('.js-login').bind('click', function() {
      $('.js-login-wrap').show();
      $('input#login-email').focus();
    });

    // hide modal by clicking outside of it or on the close-modal icon
    $('.modal').click(function(e) {
        if(!$(e.target).parents('.modal').length > 0 || $(e.target).parents('.close-modal').length > 0) {
            $(this).hide();
        }
    });

    if (false) {
      var url = '/charity';
      var response = $.ajax({
                        type: "GET",
                        url: url,
                        success: function(response){
                          $('h1.slogan').text(response);
                        }
                      });
    }
   

});