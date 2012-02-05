# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

    $('#q').keyup () ->

        console.log($(this).val().toUpperCase())
        $(this).val($(this).val().toUpperCase())

        $.getJSON "main/" + $(this).val() + ".json", (data) ->

           items = []
           $.each data, (key, val) ->
              items.push "<li id=\"" + key + "\">" + val["name"] + "</li>"

           $('.my-new-list').remove()
           $("<ul/>",
               class: "my-new-list"
               html: items.join("")
           ).appendTo "body"
