!function(){"use strict";var t=function(){var t=$(".owl-carousel");t.on("initialized.owl.carousel change.owl.carousel",function(t){var e=t.item.index;$(t.target).find(".owl-item").eq(e).find(".to-animate").removeClass("fadeInUp animated"),$(t.target).find(".owl-item").eq(e).find(".to-animate-2").removeClass("fadeInUp animated")}),t.on("initialized.owl.carousel changed.owl.carousel",function(t){setTimeout(function(){var e=t.item.index;$(t.target).find(".owl-item").eq(e).find(".to-animate").addClass("fadeInUp animated")},700),setTimeout(function(){var e=t.item.index;$(t.target).find(".owl-item").eq(e).find(".to-animate-2").addClass("fadeInUp animated")},900)}),t.owlCarousel({items:1,loop:!0,margin:0,responsiveClass:!0,nav:!0,dots:!0,autoHeight:!0,smartSpeed:500,autoplay:!0,autoplayTimeout:5e3,autoplayHoverPause:!0,navText:["<i class='icon-arrow-left2 owl-direction'></i>","<i class='icon-arrow-right2 owl-direction'></i>"]})},e=function(){$("body").on("click",".js-fh5co-nav-toggle",function(t){$("#navbar").is(":visible")?$(this).removeClass("active"):$(this).addClass("active"),t.preventDefault()})},a=function(){$('a:not([class="external"])').click(function(t){var e=$(this).data("nav-section"),a=$("#navbar");return $("html, body").animate({scrollTop:$('[data-section="'+e+'"]').offset().top},500),a.is(":visible")&&(a.removeClass("in"),a.attr("aria-expanded","false"),$(".js-fh5co-nav-toggle").removeClass("active")),t.preventDefault(),!1})},n=function(t){var e=$("#navbar > ul");e.find("li").removeClass("active"),e.each(function(){$(this).find('a[data-nav-section="'+t+'"]').closest("li").addClass("active")})},i=function(){var t=$("div[data-section]");t.waypoint(function(t){"down"===t&&n($(this.element).data("section"))},{offset:"150px"}),t.waypoint(function(t){"up"===t&&n($(this.element).data("section"))},{offset:function(){return-$(this.element).height()+155}})},o=function(){$(window).scroll(function(t){var e=$("#fh5co-header"),a=$(this).scrollTop();a>500&&2e3>=a?e.addClass("navbar-fixed-top fh5co-animated slideInDown"):500>=a&&e.hasClass("navbar-fixed-top")&&(e.addClass("navbar-fixed-top fh5co-animated slideOutUp"),setTimeout(function(){e.removeClass("navbar-fixed-top fh5co-animated slideInDown slideOutUp")},100))})},s=function(){$("#about-us").length>0&&$("#about-us .to-animate").each(function(t){var e=$(this);setTimeout(function(){e.addClass("fadeInUp animated")},200*t,"easeInOutExpo")})},f=function(){$("#about-us").length>0&&$("#about-us").waypoint(function(t){"down"!==t||$(this).hasClass("animated")||(setTimeout(s,200),$(this.element).addClass("animated"))},{offset:"95%"})},d=function(){$("#team").length>0&&$("#team .to-animate").each(function(t){var e=$(this);setTimeout(function(){e.addClass("fadeInUp animated")},200*t,"easeInOutExpo")})},c=function(){$("#team").length>0&&$("#team").waypoint(function(t){"down"!==t||$(this).hasClass("animated")||(setTimeout(d,200),$(this.element).addClass("animated"))},{offset:"95%"})},u=function(){$("#fh5co-our-services").length>0&&$("#fh5co-our-services .to-animate").each(function(t){var e=$(this);setTimeout(function(){e.addClass("fadeInUp animated")},200*t,"easeInOutExpo")})},l=function(){$("#fh5co-our-services").length>0&&$("#fh5co-our-services").waypoint(function(t){"down"!==t||$(this).hasClass("animated")||(setTimeout(u,200),$(this.element).addClass("animated"))},{offset:"95%"})},m=function(){$("#fh5co-features").length>0&&$("#fh5co-features .to-animate").each(function(t){var e=$(this);setTimeout(function(){e.addClass("fadeInUp animated")},200*t,"easeInOutExpo")})},r=function(){$("#fh5co-features").length>0&&$("#fh5co-features").waypoint(function(t){"down"!==t||$(this).hasClass("animated")||(setTimeout(function(){$(".animate-features-1").addClass("animated fadeIn")},100),setTimeout(function(){$(".animate-features-2").addClass("animated fadeIn")},200),setTimeout(m,500),setTimeout(function(){$(".animate-features-3").addClass("animated fadeInUp")},1400),$(this.element).addClass("animated"))},{offset:"95%"})},h=function(){$("#fh5co-testimonials").length>0&&$("#fh5co-testimonials .to-animate").each(function(t){var e=$(this);setTimeout(function(){e.addClass("fadeInUp animated")},200*t,"easeInOutExpo")})},p=function(){$("#fh5co-testimonials").length>0&&$("#fh5co-testimonials").waypoint(function(t){setTimeout(h,200),$(this.element).addClass("animated")},{offset:"95%"})},v=function(){$("#fh5co-pricing").length>0&&$("#fh5co-pricing .to-animate").each(function(t){var e=$(this);setTimeout(function(){e.addClass("fadeInUp animated")},200*t,"easeInOutExpo")})},C=function(){$("#fh5co-pricing").length>0&&$("#fh5co-pricing").waypoint(function(t){setTimeout(function(){$(".animate-pricing-1").addClass("animated fadeIn")},200),setTimeout(function(){$(".animate-pricing-2").addClass("animated fadeIn")},300),setTimeout(v,700),$(this.element).addClass("animated")},{offset:"95%"})},g=function(){$("#fh5co-press").length>0&&$("#fh5co-press .to-animate").each(function(t){var e=$(this);setTimeout(function(){e.addClass("fadeInUp animated")},200*t,"easeInOutExpo")})},w=function(){$("#fh5co-press").length>0&&$("#fh5co-press").waypoint(function(t){setTimeout(function(){$(".animate-press-1").addClass("animated fadeIn")},200),setTimeout(function(){$(".animate-press-2").addClass("animated fadeIn")},300),setTimeout(g,700),$(this.element).addClass("animated")},{offset:"95%"})};$(function(){$("#menu-toggle").click(function(t){t.preventDefault(),$("#wrapper").toggleClass("toggled")}),e(),t(),a(),o(),i(),f(),c(),l(),r(),p(),C(),w()})}();