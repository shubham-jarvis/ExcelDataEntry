window.callbutton = (customernumber)->
  $.ajax(
    url: 'https://kpi.knowlarity.com/Basic/v1/account/call/makecall'
    type: 'POST'
    dataType: 'json'
    data: JSON.stringify({
      k_number: '+912248770336',
      agent_number: '+918010481221',
      customer_number: '+91' + customernumber
    })
    headers: (
      "x-api-key": "x46Q8Td7D67Pd7ePSjCXu9UnZYeDk1la9uCulUmU",
      "Authorization": "a4fc9ffd-f32a-4225-a358-8246ab9fb8da",
      "Content-Type": "application/json"
    )
    success: (data) ->
      alert "Call success"
    error: ->
      alert "Something went wrong"
  )