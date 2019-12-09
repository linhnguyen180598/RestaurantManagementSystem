// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$( document ).on('turbolinks:load', function() {
  $(".js-selectTableId").change(function(){
    var table_id = $(this).val();
    var reservation_id = $(this).attr('data-reservation-id');
    $.ajax({
      method: "POST",
      url: "/reservation_table",
      data: { table_id: table_id, reservation_id: reservation_id }
    }).done(function() {
      console.log( "Data Saved! " );
    });
  }); 
});

// $( document ).on
//   ('turbolinks:load', function() {
//     $(".js-unassignTableId").change(function() {
//     var reserved = $(this).val()
//     var reservation_id = $(this).attr('data-reservation-id')
//     $.ajax({
//       method: "POST"
//       url: "/reservation_table"
//       data: {reserved:}
//     })
//   }
// }