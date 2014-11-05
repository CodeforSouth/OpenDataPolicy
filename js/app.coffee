
$ ->
  $window = $(window)
  $body = $(document.body)
  $body.scrollspy({target: ".sidebar"})
  $window.on "load", ->
    $body.scrollspy "refresh"

  # Kill links
  $(".sidenav [href=#]").click (e) ->
    e.preventDefault()

  $('.sidebar').on 'activate.bs.scrollspy', -> console.log 'scroll spyed'