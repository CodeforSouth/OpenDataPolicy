
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

  # Smooth Scrollto

  $("a[href*=#]:not([href=#])").click ->
    if location.pathname.replace(/^\//, "") is @pathname.replace(/^\//, "") or location.hostname is @hostname
      target = $(@hash)
      target = (if target.length then target else $("[name=" + @hash.slice(1) + "]"))
      if target.length
        $("html,body").animate
          scrollTop: target.offset().top
        , 800
        false
