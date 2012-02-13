# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

    valueExists = (value, names) ->
        for name in names
            return true if value is name
        false
 
    $('#q').keyup () ->

        searchFieldValue = $(this).val().toUpperCase()
        $(this).val(searchFieldValue)

        $.getJSON "main/" + $(this).val() + ".json", (data) ->

           $('.my-new-list').remove()
           $('.add-new-entry').remove()

           items = []
           names = []
           $.each data, (key, val) ->
              names.push(val["name"])            
              items.push "<li id=\"" + key + "\">" + val["name"] + "</li>"
              i = 0
              definitions = val["definitions"]
              items.push "<ul>"
              while i < definitions.length
                  items.push "<li>" + definitions[i]["text"] + "</li>"                   
                  i++
              items.push "</ul>"
              items

           if !valueExists(searchFieldValue, names)
               $("<span>",
                   class: "add-new-entry"
                   html: "<br />" + searchFieldValue + " does not exist. <a href='acronyms/new'>add it?</a>"
               ).appendTo "body"

           $("<ul/>",
               class: "my-new-list"
               html: items.join("")
           ).appendTo "body"
