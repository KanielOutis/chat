# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

`window.onload = function(){setInterval(()=>{Rails.ajax({
  type: "GET",
  url: ""
  }); console.log("hello its interval");}, 15000)}`
