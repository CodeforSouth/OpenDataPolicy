// Generated by CoffeeScript 1.7.1
(function() {
  $(function() {
    var $body, $window, sidebarAffixing;
    $window = $(window);
    $body = $(document.body);
    $body.scrollspy({
      target: ".sidebar"
    });
    $window.on("load", function() {
      return $body.scrollspy("refresh");
    });
    $(".sidenav [href=#]").click(function(e) {
      return e.preventDefault();
    });
    sidebarAffixing = function() {
      var $sideBar;
      console.log('hello');
      $sideBar = $(".sidebar");
      $sideBar.affix({
        offset: {
          top: function() {
            var navOuterHeight, offsetTop;
            offsetTop = $sideBar.offset().top;
            this.sideBarMargin = parseInt($sideBar.children(0).css("margin-top"), 10);
            navOuterHeight = $(".nav").height();
            return this.top = offsetTop - navOuterHeight - this.sideBarMargin;
          },
          bottom: function() {
            return this.bottom = $(".footer").outerHeight(true);
          }
        }
      });
      return console.log(offset);
    };
    setTimeout(sidebarAffixing(), 100);
    setTimeout(function() {
      return $('.top').affix();
    }, 100);
    return $('.sidebar').on('activate.bs.scrollspy', function() {
      return console.log('scroll spyed');
    });
  });

}).call(this);

//# sourceMappingURL=app.map
