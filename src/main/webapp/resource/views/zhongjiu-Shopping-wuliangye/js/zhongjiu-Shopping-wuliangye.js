$(window).bind('scroll', function() {
        if ($(this).scrollTop() >= 600) {
            $('.left_nav').show();
            $('.right_nav').show();
        } else {
            $('.left_nav').hide();
            $('.right_nav').hide();
        }
    });
    //动画效果
    //回到顶部
    $(".left_nav_bottom").click(function() {
        $("body,html").animate({
            scrollTop: 0
        }, 200);
    });
     $(".right_nav_five").click(function() {
        $("body,html").animate({
            scrollTop: 0
        }, 200);
    }); 
//for循环 
$.ajax({
  url:"http://10.80.13.161:8080/huichang/wuliangye.do",
  method: "get",
  success: function (data) {
    console.log(data);
    console.log(data.wuliangyeWines1);
    for (var i = 0; i < 16; i++) {
      $('<a class="min_picture fl" href="http://10.80.13.161:8080/wine/goods.do?wid='+ data.wuliangyeWines1[i].wid + '" target="_blank">'
      +' <img src="http://10.80.13.161:8080/resource/views/img/huichang/' + data.wuliangyeWines1[i].wineImg1 +'" alt="" />'
      +' <div class="min_picture_bottom">'
      +' <p class="name-line">'+data.wuliangyeWines1[i].wineDegree+'°<span>'+data.wuliangyeWines1[i].wineName+'</span><span>'+data.wuliangyeWines1[i].wineLiter +'</span></p>'
      +' <p class="ad-line">'+data.wuliangyeWines1[i].wineEvalution+'</p>'
      +' <p class="my-price-line-zi_button-line">'
      +' <span class="my-price-line-zi">￥</span>'
      +' <i class="my-price">' +data.wuliangyeWines1[i].winePrice + '</i>'
      +' <span class="button-line">立即抢购</span></p></div></a>').appendTo('.header_bottom_footer_top_content_con_sw_two_num');
    }
    for (var i = 0; i < 8; i++) {
      $('<a class="min_picture fl" href="http://10.80.13.161:8080/wine/goods.do?wid='+ data.wuliangyeWines2[i].wid + '" target="_blank">'
      +' <img src="http://10.80.13.161:8080/resource/views/img/huichang/' + data.wuliangyeWines2[i].wineImg1 +'" alt="" />'
      +' <div class="min_picture_bottom">'
      +' <p class="name-line">'+data.wuliangyeWines2[i].wineDegree+'°<span>'+data.wuliangyeWines2[i].wineName+'</span><span>'+data.wuliangyeWines2[i].wineLiter +'</span></p>'
      +' <p class="ad-line">'+data.wuliangyeWines2[i].wineEvalution+'</p>'
      +' <p class="my-price-line-zi_button-line">'
      +' <span class="my-price-line-zi">￥</span>'
      +' <i class="my-price">' + data.wuliangyeWines2[i].winePrice + '</i>'
      +' <span class="button-line">立即抢购</span></p></div></a>').appendTo('.header_bottom_footer_top_content_mt_sur_one_one');
    }
  }
});