class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    $("#login_form").on('click', 'a[data-clear-form]', Home.clear_form)
    $("#form").on("focus", "#item_available_from", Home.pick_from_date)
    $("#form").on("focus", "#item_available_until", Home.pick_until_date)
    $('#search_button').click(Home.search)
    $('#search_form').submit(Home.search)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()
    $("#login_form").empty()


  @pick_from_date: (e) ->
    e.preventDefault()
    $("#item_available_from").datepicker({ dateFormat: 'yy-mm-dd', minDate: Date.now() })

  @pick_until_date: (e) ->
    e.preventDefault()
    $("#item_available_until").datepicker({ dateFormat: 'yy-mm-dd' })

  @search: (e) ->
    e.preventDefault()
    input = $('#search').val()
    settings=
      dataType: 'script'
      type: 'get'
      url: "/items/search?query=#{input}"
    $.ajax(settings)

$(document).ready(Home.document_ready)
