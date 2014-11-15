# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("[id^=like_]").click ->
    params = $(this).get(0).id.split('_')
    user_id   = params[1]
    photo_id  = params[2]
    $.ajax({
      type: "POST",
      url: "/likes",
      data: { user_id: user_id, photo_id: photo_id }
      success:(data) ->
        return false
      error:(data) ->
        return false
    })