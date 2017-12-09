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
    url: "http://10.80.13.161:8080/index/findWines.do?WineId=1001",
    method: "get",
    success: function (data) {
        for (var i =0;i<4;i++) {
            $('<div class="header_bottom_footer_top_content_con_sw_two_num clearfix"><a class="min_picture fl" href="http://10.80.13.161:8080/wine/goods.do?wid=' + data[0].wid + '" target="_blank"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt="" /><div class="min_picture_bottom"><p class="name-line">' + data[0].wineName + '</p><p class="ad-line">' + data[0].wineName + '</p><p class="my-price-line-zi_button-line"><span class="my-price-line-zi">￥</span><i class="my-price">' + data[0].winePrice + '</i><span class="button-line">立即抢购</span></p></div></a><a class="min_picture fl" href="###"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt="" /><div class="min_picture_bottom"><p class="name-line">' + data[0].wineName + '</p><p class="ad-line">' + data[0].wineName + '</p><p class="my-price-line-zi_button-line"><span class="my-price-line-zi">￥</span><i class="my-price">' + data[0].winePrice + '</i><span class="button-line">立即抢购</span></p></div></a><a class="min_picture fl" href="###"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt="" /><div class="min_picture_bottom"><p class="name-line">' + data[0].wineName + '</p><p class="ad-line">' + data[0].wineName + '</p><p class="my-price-line-zi_button-line"><span class="my-price-line-zi">￥</span><i class="my-price">' + data[0].winePrice + '</i><span class="button-line">立即抢购</span></p></div></a><a class="min_picture fl" href="###"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt="" /><div class="min_picture_bottom"><p class="name-line">' + data[0].wineName + '</p><p class="ad-line">' + data[0].wineName + '</p><p class="my-price-line-zi_button-line"><span class="my-price-line-zi">￥</span><i class="my-price">' + data[0].winePrice + '</i><span class="button-line">立即抢购</span></p></div></a></div>').appendTo('.header_bottom_footer_top_content_con_sw_two');
        };
        for (var i =0;i<2;i++) {
            $('<div class="header_bottom_footer_top_content_con_sw_two_num clearfix"><a class="min_picture fl" href="###"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt="" /><div class="min_picture_bottom"><p class="name-line">' + data[0].wineName + '</p><p class="ad-line">' + data[0].wineName + '</p><p class="my-price-line-zi_button-line"><span class="my-price-line-zi">￥</span><i class="my-price">' + data[0].winePrice + '</i><span class="button-line">立即抢购</span></p></div></a><a class="min_picture fl" href="###"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt="" /><div class="min_picture_bottom"><p class="name-line">' + data[0].wineName + '</p><p class="ad-line">' + data[0].wineName + '</p><p class="my-price-line-zi_button-line"><span class="my-price-line-zi">￥</span><i class="my-price">' + data[0].winePrice + '</i><span class="button-line">立即抢购</span></p></div></a><a class="min_picture fl" href="###"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt="" /><div class="min_picture_bottom"><p class="name-line">' + data[0].wineName + '</p><p class="ad-line">' + data[0].wineName + '</p><p class="my-price-line-zi_button-line"><span class="my-price-line-zi">￥</span><i class="my-price">' + data[0].winePrice + '</i><span class="button-line">立即抢购</span></p></div></a><a class="min_picture fl" href="###"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt="" /><div class="min_picture_bottom"><p class="name-line">' + data[0].wineName + '</p><p class="ad-line">' + data[0].wineName + '</p><p class="my-price-line-zi_button-line"><span class="my-price-line-zi">￥</span><i class="my-price">' + data[0].winePrice + '</i><span class="button-line">立即抢购</span></p></div></a></div>').appendTo('.header_bottom_footer_top_content_mt_sur_one');
        };
    }
});