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
//滚动加载
$(function () {
   $(window).scroll(function () {
      //浏览器所能看到的页面的那部分的高度
      var winH = $(window).height();
      var scrH = $(window).scrollTop();//滚动的高度
      console.log(scrH);
      //获取整个页面的高度 htmH为设置的滚动到的高度位置
      var htmH = $(document).height() - 1410;
           //可见高度+滚动高度 超出设置的高度，触发方法
      if (winH + scrH >= htmH) {
        //到达底部-1410的高度，触发方法
//for循环
        for (var i =0;i<4;i++) {
		    $('<div class="min_picture"><a href="###"><img src="../image/download-4.png" alt="" /><p class="ad-line">酱香传奇 王子酒双支</p><p class="name-line">53°茅台王子酒（旧包装） 500ml（2瓶装)</p><p class="my-price-line-zi_button-line clearfix"><span class="my-price-line-zi fl">活动价：￥<em class="my-price"><i jdprice="" jshop="price">218</i></em></span><a class="button-line fr" href="###">立即抢购</a></p></a></div>').appendTo('.header_bottom_footer_top_content_con_sw_two_middle');
		    $('<div class="min_picture"><a href="###"><img src="../image/download-4.png" alt="" /><p class="ad-line">酱香传奇 王子酒双支</p><p class="name-line">53°茅台王子酒（旧包装） 500ml（2瓶装)</p><p class="my-price-line-zi_button-line clearfix"><span class="my-price-line-zi fl">活动价：￥<em class="my-price"><i jdprice="" jshop="price">218</i></em></span><a class="button-line fr" href="###">立即抢购</a></p></a></div>').appendTo('.header_bottom_footer_top_content_con_sw_two_bottom');
		    $('<div class="min_picture"><a href="###"><img src="../image/download-4.png" alt="" /><p class="ad-line">酱香传奇 王子酒双支</p><p class="name-line">53°茅台王子酒（旧包装） 500ml（2瓶装)</p><p class="my-price-line-zi_button-line clearfix"><span class="my-price-line-zi fl">活动价：￥<em class="my-price"><i jdprice="" jshop="price">218</i></em></span><a class="button-line fr" href="###">立即抢购</a></p></a></div>').appendTo('.header_bottom_footer_top_content_mt_sur_one_middle');
		    //禁用滚动事件
			$(window).unbind ('scroll');
        }
      }
   });
})
//// 监听滚动条，本来不想用jQuery但是发现js里面监听滚动条的事件不好添加，这边就引用了Jquery的$(obj).scroll();这个方法了
//$(window).scroll(function() {
//  //下面这句主要是获取网页的总高度，主要是考虑兼容性所以把Ie支持的documentElement也写了，这个方法至少支持IE8
//  var htmlHeight = document.body.scrollHeight || document.documentElement.scrollHeight;
//  //clientHeight是网页在浏览器中的可视高度，
//  var clientHeight = document.body.clientHeight || document.documentElement.clientHeight;
//  //scrollTop是浏览器滚动条的top位置，
//  var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
//  //通过判断滚动条的top位置与可视网页之和与整个网页的高度是否相等来决定是否加载内容；
//  if (scrollTop + clientHeight == htmlHeight) {
//     $.ajax({
//			url: "../php/index.php",
//			type: "get",
//			data: {},
//			typeData: "json",
//			async: true,
//			success: function(data){
//				console.log(data);
//				$('.header_bottom_footer_top" id="header_bottom_footer_top')[0].innerHtml='1234546';
//			}
//		});
//  }
//})   
////获取列表中的原有内容
//var content = document.getElementById("img").innerHTML;
////每被调用一次，就将网页原有内容添加一份，这个大家可以写自己要加载的内容或指令
//function addLi() {
//  document.getElementById("img").innerHTML += content;
//}
///*
// * 监听滚动条，本来不想用jQuery但是发现js里面监听滚动条的事件不好添加，这边就引用了Jquery的$(obj).scroll();这个方法了
// */
//$(window).scroll(function() {
//  //下面这句主要是获取网页的总高度，主要是考虑兼容性所以把Ie支持的documentElement也写了，这个方法至少支持IE8
//  var htmlHeight = document.body.scrollHeight || document.documentElement.scrollHeight;
//  //clientHeight是网页在浏览器中的可视高度，
//  var clientHeight = document.body.clientHeight || document.documentElement.clientHeight;
//  //scrollTop是浏览器滚动条的top位置，
//  var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
//  //通过判断滚动条的top位置与可视网页之和与整个网页的高度是否相等来决定是否加载内容；
//  if (scrollTop + clientHeight == htmlHeight) {
//      addLi();
//  }
//})
//  