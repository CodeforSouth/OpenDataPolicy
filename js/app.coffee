
$ ->

  $window = $(window)
  $body = $(document.body)
  $body.scrollspy target: ".bs-docs-sidebar"
  $window.on "load", ->
    $body.scrollspy "refresh"
    return


  # Kill links
  $(".bs-docs-container [href=#]").click (e) ->
    e.preventDefault()
    return


  # Sidenav affixing
  setTimeout (->
    $sideBar = $(".bs-docs-sidebar")
    $sideBar.affix offset:
      top: ->
        offsetTop = $sideBar.offset().top
        sideBarMargin = parseInt($sideBar.children(0).css("margin-top"), 10)
        navOuterHeight = $(".bs-docs-nav").height()
        @top = offsetTop - navOuterHeight - sideBarMargin

      bottom: ->
        @bottom = $(".bs-docs-footer").outerHeight(true)

    return
  ), 100