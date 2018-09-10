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
      alert data
    error: (error) ->
      alert "Something went wrong"
  )