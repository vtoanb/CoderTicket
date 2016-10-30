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
//= require tether
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(document).on('ready page:load', function () {

  $( "#submit-line" ).on("click", function() {
    var data = { event_id: $(".event-id").text(), lines: [] };
    var array = [];
    array.push(data);
    $(".line-items").each(function(){
      var item = {};
      var selected = $(this).find(":selected").text();
      var id = $(this).find(".type-id").text();
      // var tojson = { id, selected }
      item = {id: id, quantity: selected};
      data.lines.push(item);
    });

    $.ajax({
      method: "POST",
      url: "/orders",
      data: data,
    }).done(function(msg) {
      console.log("done");
      $("#submit-line").hide();
    });
    // end of ajax
  });
});