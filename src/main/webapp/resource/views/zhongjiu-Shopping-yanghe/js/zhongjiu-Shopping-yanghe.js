$(window).bind('scroll', function() {
        if ($(this).scrollTop() >= 600) {
            $('.left_nav').show();
        } else {
            $('.left_nav').hide();
        }
    });
//动画效果
//回到顶部
$(".header_bottom_footer_top_content_backToTop a").click(function() {
    $("body,html").animate({
        scrollTop: 0
    }, 200);
});
$(".left_nav_bottom").click(function() {
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
            $('<a href="http://10.80.13.161:8080/wine/goods.do?wid=' + data[0].wid + '" target="_blank"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt=""  /></a>').appendTo('.header_bottom_footer_top_content_moreActivity_one_top');
            $('<a href="http://10.80.13.161:8080/wine/goods.do?wid=' + data[0].wid + '" target="_blank"><img src="http://10.80.13.161:8080/resource/views/img/' + data[0].wineImg1 + '" alt="" /></a>').appendTo('.header_bottom_footer_top_content_moreActivity_one_bottom');
        }
    }
});

    
