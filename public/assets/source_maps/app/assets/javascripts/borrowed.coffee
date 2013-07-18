class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    $("#login_form").on('click', 'a[data-clear-form]', Home.clear_form)
    $("#form").on("focus", "#item_available_from", Home.pick_from_date)
    $("#form").on("focus", "#item_available_until", Home.pick_until_date)
    $("#borrowing_items").on("click", ".return", Home.return_item)
    Home.search_complete()

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()
    $("#login_form").slideUp().empty();

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


  @return_item: (e) ->
    e.preventDefault()
    borrow_id = $(this).parent().next().text()
    $("#borrow_#{borrow_id}").foundation('reveal', 'open')
    $(this).parent().empty().text("A verification has been sent to the owner")
    settings =
      dataType: 'json'
      type: 'get'
      url: "/items/return_verification?borrow=#{borrow_id}"
    $.ajax(settings).done()

  @search_complete: ->
    text = $("#search").val()
    settings =
      dataType: 'json'
      type: 'get'
      url: "/items/autocomplete"
    $.ajax(settings).done(Home.results)

  @results: (message) ->
    $('#search').autocomplete({ source: message });



$(document).ready(Home.document_ready)
