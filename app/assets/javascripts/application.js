// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .



//
//$(function() {
//    $('[data-contact-form]')
//        .on('submit', function (e) {
//            e.preventDefault();
//
//            if ($(this).parsley().isValid() ) {
//                var data = {
//                    'first-name': $('#contact-form-first-name').val(),
//                    'last-name': $('#contact-form-last-name').val(),
//                    'email': $('#contact-form-email').val(),
//                    'questions-comments': $('#questions-comments').val(),
//                    'to': recipients.toString()
//                };
//
//                $.post('contact-form.php', data, function () {
//                    window.location.href = 'contact-thanks.html';
//                });
//            }
//        })
//        .parsley({
//            errorsContainer: function (field) {
//                var $el = field.$element;
//                return $el.closest('.field');
//            }
//        });
//});

