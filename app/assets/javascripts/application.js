// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require social-share-button
//= require sweet-alert
//= require sweet-alert-confirm
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .


var sweetAlertConfirmConfig = {
  title: 'Are you sure person man?',
  type: 'warning',
  showCancelButton: true,
  cancelButtonText: 'No way',
  confirmButtonColor: 'green',
  confirmButtonText: 'Ok',
  text: 'This is a subtitle'
};


$(document).ready(function(){
  $('.side_right_box:odd').css('background-color', '#D32F2F');

  $('.side_right_box:even').css('background-color', '#F44336');
});