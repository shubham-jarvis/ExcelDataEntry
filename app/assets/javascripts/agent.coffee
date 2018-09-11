# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.callbutton = (customernumber)->
  $.ajax(
    url: 'call?id=' + customernumber
    type: 'get'
    dataType: 'json'
    headers: (
      "Content-Type": "application/json",
      "Accept": "application/json"
    )
    success: (data) ->
#      alert data.success.call_id
      location.href = 'call_log/new?call_id=' + data.success.call_id + '&customer_id=' + customernumber
    error: (error) ->
      alert "Something went wrong"
  )