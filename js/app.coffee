
$ ->
  $window = $(window)
  $body = $(document.body)
  $body.scrollspy({target: ".sidebar"})
  $window.on "load", ->
    $body.scrollspy "refresh"

  # Kill links
  $(".sidenav [href=#]").click (e) ->
    e.preventDefault()

  # Sidenav affixing
  setTimeout (->
    $sideBar = $(".sidebar")
    $sideBar.affix offset:
      top: ->
        offsetTop = $sideBar.offset().top
        sideBarMargin = parseInt($sideBar.children(0).css("margin-top"), 10)
        navOuterHeight = $(".nav").height()
        @top = offsetTop - navOuterHeight - sideBarMargin

      bottom: ->
        @bottom = $(".footer").outerHeight(true)),
    100

  $('.sidebar').on 'activate.bs.scrollspy', -> console.log 'scroll spyed'