$(function() {
  var adivs = $('.phptomargin'),
    asolids = $('.abdivstyle'),
    amored = $('.detail-descript');

  $(".phptomargin .abdivstyle .w120-img .img-w100").click(function() {
    showorhid(this)
  })

  function showorhid(_this) {
    var jqwd;
    jqwd = $(window).width();
    if (jqwd < 479) {
      $(_this).closest(".abdivstyle").find(".detail-descript").slideToggle();
    }
  } //showorhid


  adivs.hover(function() {
    if ($(window).width() >= 479) {
      $(this).css({
        'z-index': 9
      });
      $(this).find('.detail-descript').show();
      $(this).find('.abdivstyle').addClass('solid-add');
    }
  }, function() {
    if ($(window).width() >= 479) {
      adivs.css({
        'z-index': 1
      });
      amored.hide();
      asolids.removeClass('solid-add');
    }
  });


//  var maxlen=65;
//  var i = 1;
//  var pa = document.getElementById("news_summary_" + i);
//  while (pa) {
//  var txt = pa.innerHTML;
//   if (txt.length>maxlen){
//   txt=txt.substring(0,maxlen);
//   txt=txt+"......";       }
//    pa.innerHTML=txt;
//     i++;
//     pa = document.getElementById("news_summary_" + i);
//      }              /**/
//      i = 1;
//       var ydate = document.getElementById("div_ydate_" + i);
//       while (ydate) {
//       var txt = ydate.innerHTML;
//       var str = "<span>"+getMd1(txt)+"</span>"+getYyyy1(txt);
//       ydate.innerHTML=str;
//        i++;
//         ydate = document.getElementById("div_ydate_" + i);
//           }

//  //导航
//  var vNavWaitSlide, NavWaitSlide;
//  $('#nav > li').hover(
//    function() {
//      $(this).find('a:first').addClass("hover");
//      var current_li = $(this),
//        targ = $(current_li).find('ul:first');
//      NavWaitSlide = setTimeout(function() {
//        if (!$(targ).is(':visible')) {
//          $(targ).slideDown(200);
//        }
//      }, 100)
//    },
//    function() {
//      clearTimeout(NavWaitSlide);
//      $(this).find('ul').hide();
//      $(this).find('a:first').removeClass("hover");
//    }
//  );
//
//  //ie6
//
//  if ($.browser.msie) {
//    if (parseInt($.browser.version) < 7) {
//      $("header.header").prepend("<div class='ie6' style='display:none;'><span>关闭</span>非常抱歉，本站不再支持您的浏览器，请升级您的浏览器到 <a href='http://www.microsoft.com/zh-cn/download/internet-explorer-8-details.aspx' target='_blank'>更高的版本</a>！以获得更好的观看效果。</div>");
//      $(".ie6").animate({
//        height: "toggle",
//        opacity: "toggle"
//      }, 1000);
//      $(".ie6 span").click(function() {
//        $(".ie6").slideUp()
//      })
//    }
//  }
//  //小屏幕menu
//
//  $("#smenu").toggle(function() {
//      $("#nav").slideDown(100);
//    },
//    function() {
//      $("#nav").slideUp(100);
//    }
//  )
//
//  $("#submenu").toggle(function() {
//      $(this).next().slideDown(100);
//    },
//    function() {
//      if ($("#submenu .menuicon").is(':visible')) {
//        $(this).next().slideUp(100)
//      };
//    }
//  )
//
//
//  //右侧menu
//  $("section.leftNav li").each(function() {
//    if ($(this).find('ul:first').length > 0) {
//      $(this).find('i:first').show();
//      if ($(this).hasClass('current')) {
//        $(this).find('i:first').removeClass("thuicon-plus");
//        $(this).find('i:first').addClass("current thuicon-minus");
//      }
//    } else {
//      $(this).find('i:first').hide();
//    }
//  })
//
//  $("section.leftNav li i").click(
//    function() {
//      if ($(this).siblings("ul").is(":visible")) {
//        $(this).removeClass("current  thuicon-minus");
//        $(this).addClass("thuicon-plus");
//        $(this).siblings("ul").slideUp('fast');
//      } else {
//        $(this).removeClass("thuicon-plus");
//        $(this).addClass("current thuicon-minus");
//        $(this).siblings("ul").slideDown('fast');
//      }
//    })
//
//  //tab
//  $('.swapmenu li').click(function() {
//    var dex = $(this).index();
//    $(this).addClass('current').siblings().removeClass('current');
//    $('#' + $(this).parent().attr("targ")).children().eq(dex).fadeIn().siblings().hide();
//
//  })



$(document).ready(function() {
	//vendor script
	$('#header')
	.css({ 'top':-50 })
	.delay(1000)
	.animate({'top': 0}, 800);

	$('#footer')
	.css({ 'bottom':-15 })
	.delay(1000)
	.animate({'bottom': 0}, 800);

	//blocksit define
	$(window).load( function() {
		$('#container').BlocksIt({
			numOfCol: 3,
			offsetX: 8,
			offsetY: 8
		});
	});

	//window resize
	var currentWidth = 1100;
	col = 3;
	$(window).resize(function() {
		var winWidth = $(window).width();
		var conWidth;
		if(winWidth < 380) {
			conWidth = 360;
			col = 1
		} else if(winWidth < 660) {
			conWidth = 600;
			col = 1
		} else if(winWidth < 880) {
			conWidth = 660;
			col = 2
		} else if(winWidth < 1100) {
			conWidth = 940;
			col = 3;
		}


		if(conWidth != currentWidth) {
			currentWidth = conWidth;
			$('#container').width(conWidth);
			$('#container').BlocksIt({
				numOfCol: col,
				offsetX: 4,
				offsetY: 4
			});
		}
	});

	//close ad
	$('.buttonclose a').on('click', function() {
		$(this).parent().parent().fadeOut(1000);
		$(this).off('click');
		return false;
	});
});

})
