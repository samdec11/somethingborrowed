class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    Home.get_browser_location()

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @get_browser_location: ->
    navigator.geolocation.getCurrentPosition(Home.GetLocation)

  @GetLocation: (location) ->
    console.log(location.coords.latitude)

$(document).ready(Home.document_ready)