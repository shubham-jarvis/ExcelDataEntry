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
      location.href = 'call_log/new?call_id=' + data.success.call_id + '&user_id=2&customer_id=' + customernumber
    error: (error) ->
      alert "Something went wrong"
  )