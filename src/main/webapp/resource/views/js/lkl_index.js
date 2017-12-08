// 幻灯片
$(function() {
    //声明变量记录索引
    var index = 0;
    //点击右边按钮
    //忽略重复点击开关
    var toggle = true
    $(".arrow-right").click(function() {

        if (toggle == false) {
            return
        }
        toggle = false
        index++;
        if (index > $('.fade li').length - 1) {
            index = 0;
        }
        $('.pagination ul li').eq(index).addClass('active').siblings().removeClass('active')
        $(".slider>ul>li").eq(index).stop().fadeIn(500, function() {
                toggle = true
            }

        ).siblings("li").stop().fadeOut(500);

    });
    //点击左边按钮
    $(".arrow-left").click(function() {
        if (toggle == false) {
            return
        }
        toggle = false
        index--;
        if (index < 0) {
            index = $('.fade li').length - 1;
        }
        $('.pagination ul li').eq(index).addClass('active').siblings().removeClass('active')
        $(".slider>ul>li").eq(index).fadeIn(1000, function() {
            toggle = true
        }).siblings("li").fadeOut(1000);
    });
    //hover分页器
    $('.pagination ul li').hover(function() {
        var paging = $(this).index()
        //变颜色
        index=$(this).index();
        $(this).addClass('active').siblings().removeClass('active')
        //与图片关联
        $(".slider>ul>li").eq(paging).fadeIn(1000).siblings("li").fadeOut(1000);
        clearInterval(timerID);

//       timerID = setInterval(function() {
//           $(".arrow-right").click()
//
//       }, 2000)
    })

    //增加无限轮播效果
    var timerID = setInterval(function() {
        $(".arrow-right").click()

    }, 3000)
    //移入停止计时器
    $('.slider').mouseenter(function() {
        clearInterval(timerID)
    })
    //移出开始计时器
    $('.slider').mouseleave(function() {
        timerID = setInterval(function() {
            $(".arrow-right").click()

        }, 2000)
    })

});



var jiupin_first_swiper_next = document.getElementsByClassName("jiupin_first_swiper_next");
var jiupin_first_swiper_prev = document.getElementsByClassName("jiupin_first_swiper_prev");
var jiupin_first_swiper_box_imgs = document.getElementsByClassName("jiupin_first_swiper_box_imgs");
var span_count = document.getElementsByClassName("span_count");
//轮播效果
for(var j = 0; j < jiupin_first_swiper_next.length; j++) {
    jiupin_first_swiper_next[j].index = j;
    jiupin_first_swiper_prev[j].index = j;
    jiupin_first_swiper_next[j].onclick = function() {
        span_count[this.index].innerHTML++;
        if(span_count[this.index].innerHTML > 2) {
            span_count[this.index].innerHTML = 0;
        }

        jiupin_first_swiper_box_imgs[this.index].style.transition = "1s";
        jiupin_first_swiper_box_imgs[this.index].style.transform = "translateX(" + (-188) * parseInt(span_count[this.index].innerHTML) + "px)";
    }

    jiupin_first_swiper_prev[j].onclick = function() {
        span_count[this.index].innerHTML--;
        if(span_count[this.index].innerHTML < 0) {
            span_count[this.index].innerHTML = 2;
        }

        jiupin_first_swiper_box_imgs[this.index].style.transition = "1s";
        jiupin_first_swiper_box_imgs[this.index].style.transform = "translateX(" + (-188) * parseInt(span_count[this.index].innerHTML) + "px)";
    }
}
var qijiandian_logos_prev = document.getElementsByClassName("qijiandian_logos_prev")[0];
var qijiandian_logos_next = document.getElementsByClassName("qijiandian_logos_next")[0];
var qijiandian_logoss_span_count = document.getElementsByClassName("qijiandian_logoss_span_count")[0];
var qijiandian_logoss = document.getElementsByClassName("qijiandian_logoss")[0];
qijiandian_logos_next.onclick = function() {
    qijiandian_logoss_span_count.innerHTML++;
    if(qijiandian_logoss_span_count.innerHTML > 2) {
        qijiandian_logoss_span_count.innerHTML = 0;
    }

    qijiandian_logoss.style.transition = "1s";
    qijiandian_logoss.style.transform = "translateX(" + (-550) * parseInt(qijiandian_logoss_span_count.innerHTML) + "px)";
}

qijiandian_logos_prev.onclick = function() {
    qijiandian_logoss_span_count.innerHTML--;
    if(qijiandian_logoss_span_count.innerHTML < 0) {
        qijiandian_logoss_span_count.innerHTML = 2;
    }
    qijiandian_logoss.style.transition = "1s";
    qijiandian_logoss.style.transform = "translateX(" + (-550) * parseInt(qijiandian_logoss_span_count.innerHTML) + "px)";
}
var help_pa = document.getElementsByClassName("help_pa");
var help_aa = document.getElementsByClassName("help_aa");

var Help_pa = help_pa[0].parentNode.children[1];
for(var k = 0; k < help_aa.length; k++) {
    help_aa[k].index = k;
    help_pa[k].style.display = "none";
    help_aa[help_aa[k].index].addEventListener("mouseover", function() {
        this.parentNode.children[1].style.display = "block";
        Help_pa.style.display = "none";
        Help_pa = this.parentNode.children[1];
    }, false)

}
//	四种样式 beer hot pu white
var xuanjiuqu_hot = document.getElementsByClassName('xuanjiuqu_hot');
var xuanjiuqu_white = document.getElementsByClassName('xuanjiuqu_white');
var xuanjiuqu_pu = document.getElementsByClassName('xuanjiuqu_pu');
var xuanjiuqu_beer = document.getElementsByClassName('xuanjiuqu_beer');

var help_a_hot = document.getElementsByClassName("help_a_hot");
var help_a_white = document.getElementsByClassName("help_a_white");
var help_a_pu = document.getElementsByClassName("help_a_pu");
var help_a_beer = document.getElementsByClassName("help_a_beer");

//1楼
for(var i = 0; i < help_a_hot.length; i++) {
    xuanjiuqu_hot[i].index = i;
    help_a_hot[i].index = i;
    var Xuanjiuqu1 = xuanjiuqu_hot[0];
    help_a_hot[i].onmouseenter = function() {
        Xuanjiuqu1.style.display = "none";
        xuanjiuqu_hot[this.index].style.display = "block";
        Xuanjiuqu1 = xuanjiuqu_hot[this.index];
    }
}
//2楼
for(var i = 0; i < help_a_white.length; i++) {
    xuanjiuqu_white[i].index = i;
    help_a_white[i].index = i;
    var Xuanjiuqu2 = xuanjiuqu_white[0];
    help_a_white[i].onmouseenter = function() {
        Xuanjiuqu2.style.display = "none";
        xuanjiuqu_white[this.index].style.display = "block";
        Xuanjiuqu2 = xuanjiuqu_white[this.index];
    }
}
//3楼
for(var i = 0; i < help_a_pu.length; i++) {
    xuanjiuqu_pu[i].index = i;
    help_a_pu[i].index = i;
    var Xuanjiuqu3 = xuanjiuqu_pu[0];
    help_a_pu[i].onmouseenter = function() {
        Xuanjiuqu3.style.display = "none";
        xuanjiuqu_pu[this.index].style.display = "block";
        Xuanjiuqu3 = xuanjiuqu_pu[this.index];
    }
}
//4楼
for(var i = 0; i < help_a_beer.length; i++) {
    xuanjiuqu_beer[i].index = i;
    help_a_beer[i].index = i;
    var Xuanjiuqu4 = xuanjiuqu_beer[0];
    help_a_beer[i].onclick = function() {
        Xuanjiuqu4.style.display = "none";
        xuanjiuqu_beer[this.index].style.display = "block";
        Xuanjiuqu4 = xuanjiuqu_beer[this.index];
    }
}

//又侧边栏设置

var gouwuche_left_content_first_click = document.getElementsByClassName(" gouwuche_left_content_first_click");
var gouwuche = document.getElementsByClassName(" gouwuche")[0];
var gouwuche_right = document.getElementsByClassName(" gouwuche_right")[0];
for(var i = 0; i < gouwuche_left_content_first_click.length; i++) {
    gouwuche_left_content_first_click[i].index = i;
    gouwuche_left_content_first_click[i].onclick = function() {
        gouwuche.style.width = "260px";
        gouwuche_right.innerHTML = "";
        gouwuche_right.style.width = "220px";
        $(".gouwuche_right").css("transition", ".1s");

        switch(this.index) {
            case 0:
                $(".gouwuche_right").css("background", "lightgray");
                $("<div style='white-space:nowrap;padding:0 15px;'><input type='checkbox' id='inp1'/><label for='inp1' style='white-space:nowrap'>&nbsp;全选</label></div><a class='chakan' style='white-space:nowrap;position:absolute;margin-left:150px;color:black;top:0;' href='lkl_index.html'>查看全部</a>").appendTo($(".gouwuche_right"));
                $("#inp1").click(function() {
                    $(".inpcounts").prop("checked", this.checked);
                    $(".inpcount").prop("checked", this.checked);
                    change();
                })
                $(".chakan").mouseover(function() {
                    $(".chakan").css("color", "red");
                })
                $(".chakan").mouseout(function() {
                    $(".chakan").css("color", "black");
                })
                $("<div  style='background:white;padding:0 15px;width:190px'><div><input type='checkbox' class='inpcounts'/><span>中酒自营</span><span class='prices' style='float:right'>0</span></div><ol class='ols'></ol></div>").appendTo($(".gouwuche_right"));
                $("<li style='position:relative;margin-bottom:5px;'><input type='checkbox' class='inpcount'/><img style='vertical-align:middle;width:40px;' src='../img/0.jpg'/><div class='s_sum' style='width:20px;height:20px;background:red;color:white;text-align:center;line-height:20px;font-size:12px;white-space:nowrap;position:absolute;left:100px;top:8px;'>15</div><span class='titalprice' style='float:right; margin-top:8px;'>100</span></li><li style='position:relative'><input type='checkbox' class='inpcount'/><img style='vertical-align:middle;width:40px;' src='../img/0.jpg'/><div  class='s_sum' style='width:20px;height:20px;background:red;color:white;text-align:center;line-height:20px;font-size:12px;white-space:nowrap;position:absolute;left:100px;top:8px;'>15</div><span class='titalprice' style='float:right; margin-top:8px;'>100</span>").appendTo($(".ols"));
                $(".inpcounts").click(function() {
                    $("#inp1").prop("checked", this.checked);
                    $(".inpcount").prop("checked", this.checked);
                    change();
                })

                $(".inpcount").click(function() {
                    $(".inpcounts").prop("checked", $('.inpcount:checked').length == $('.inpcount').length);
                    $("#inp1").prop("checked", $('.inpcount:checked').length == $('.inpcount').length);
                    change();
                })
//获取后台数据
//				$.ajax({
//					type: "get",
//					url: "",
//					async: true,
//					data: {},
//					dataType: "json",
//					success: function(data) {
//						for(i in data) {
//
//						}
//					}
//				});
                $("<div style='position: absolute;bottom:0;padding:10px 15px;width:190px'><div style='float:left'><span>已选</span><span class='counts'>0</span><span>件<span></div><div style='float:right ;color:red;'><span>￥</span><span class='prices'>0</span></div><div style='margin-top:30px;height:40px;background:red;color:white;text-align:center;line-height:40px;'>购物车结算</div></div>").appendTo($(".gouwuche_right"));
//				prices总价 titalprice单个商品的总价 s_sum 每个商品的数量
            function change(){
                $(".counts").html(function(){
                    var counts=0;
                    $(".inpcount:checked").siblings(".s_sum").each(function(index,el){
                        counts+=parseInt(el.innerHTML);
                    })
                    return counts;
                })
                $(".prices").html(function(){
                    var countss=0;
                    $(".inpcount:checked").siblings(".titalprice").each(function(index,el){
                        countss+=parseInt(el.innerHTML);
                    })
                    return countss;
                })



            }
                break;
            case 1:
                gouwuche_right.innerHTML = "";

                $(".gouwuche_right").css("background", "#091623");
                $("<ol style='padding:0 15px'><li><div class='chexiao' style='position:absolute; color:white;'>&gt;&gt;</div><div style='margin-left:65px;white-space:nowrap; color:white;'>资产中心</div></li><li><div style='width:190px;height:50px;background:white;padding:10px 0;'><ol><li style='float:left;width:95px;height:50px;border-right:1px dotted gray;text-align:center'><div>0</div><div style='white-space:nowrap;'>我的积分</div></li><li style='float:right;width:84px;height:50px;text-align:center'><div>0</div><div style='white-space:nowrap;'>优惠劵</div></li><ol></div></li><li style='white-space:nowrap; color:white;'>已领取的优惠劵</li></ol> <img class='lanonloads' src='../img/21.gif' style='display:none;position:absolute; width:60px; left:calc(50% - 30px)'/>").appendTo($(".gouwuche_right"));
                $(".lanonloads").fadeIn(200);
                $(".lanonloads").fadeOut(500);

                $(".chexiao").click(function() {
                    gouwuche.style.width = "40px";
                    gouwuche_right.style.width = "0px";
                })

                break;
            case 2:
                gouwuche_right.innerHTML = "";
                $(".gouwuche_right").css("background", "#091623");
                $("<div style='padding:5px 15px;'><div class='chexiao' style='position:absolute; color:white;cursor:pointer;'>&gt;&gt;</div><div style='margin-left:65px;white-space:nowrap; color:white;'>关注商品</div></div><img class='lanonloads' src='../img/21.gif' style='display:none;position:absolute; width:60px; left:calc(50% - 30px)'/>").appendTo($(".gouwuche_right"));
                $(".lanonloads").fadeIn(200);
                $(".lanonloads").fadeOut(500);
                $(".chexiao").click(function() {
                    gouwuche.style.width = "40px";
                    gouwuche_right.style.width = "0px";
                })

                break;
            case 3:
                gouwuche_right.innerHTML = "";
                $(".gouwuche_right").css("background", "#091623");
                $("<div style='padding:5px 15px;'><div class='chexiao' style='position:absolute; color:white;'>&gt;&gt;</div><div style='margin-left:65px;white-space:nowrap; color:white;'>浏览历史</div></div><img class='lanonloads' src='../img/21.gif' style='display:none;position:absolute; width:60px; left:calc(50% - 30px)'/>").appendTo($(".gouwuche_right"));
                $(".lanonloads").fadeIn(200);
                $(".lanonloads").fadeOut(500);
                $(".chexiao").click(function() {
                    gouwuche.style.width = "40px";
                    gouwuche_right.style.width = "0px";
                })

                break;
        }
    }
}
//    ******************************************************************

document.getElementsByClassName("content")[0].onclick=function(){
    gouwuche_right.style.width="0px";
    gouwuche.style.width="40px";

}
//**************************************************************************
//左侧边楼层处理
var floor_setting = document.getElementsByClassName("floor_setting")[0];
var floor = document.getElementsByClassName("floor");
var arr = []; //存放楼层数
var arr1 = ["帮你", "白酒", "葡萄", "洋酒"]; //存放楼层类型
var arrBg = ["red", "white"];
var arrColor = ["white", "black"]
for(var i = 0; i < floor.length; i++) {
    var divs = document.createElement("a");
    divs.style.width = "40px";
    divs.style.height = "35px";
    divs.innerHTML = i + 1 + "F";
    divs.style.display = "block";
    arr.push(divs.innerHTML);
    divs.style.borderBottom = "1px dotted gray";
    if(i == floor.length - 1) {
        divs.style.borderBottom = "";
    }
    divs.className = "floor_setting_listss";
    divs.style.textAlign = "center";
    divs.style.lineHeight = "35px";
    floor_setting.appendChild(divs);
    var floor_setting_listss = document.getElementsByClassName("floor_setting_listss");
    floor_setting_listss[i].index = i;

    floor_setting_listss[i].onmousemove = function() {
        floor_setting_listss[this.index].style.color = arrColor[0];
        floor_setting_listss[this.index].style.background = arrBg[0];
        floor_setting_listss[this.index].innerHTML = arr1[this.index];

    }
    floor_setting_listss[i].onmouseout = function() {
        floor_setting_listss[this.index].style.color = arrColor[1];
        floor_setting_listss[this.index].innerHTML = arr[this.index];
        floor_setting_listss[this.index].style.background = arrBg[1];
    }
}

var rexiaobaokuan = document.getElementsByClassName("rexiaobaokuan")[0];
var hot_sell_list = document.getElementsByClassName("hot_sell_list")[0];
var qijiandian = document.getElementsByClassName("qijiandian")[0];


$(function() {
    var istop = true
    $('.floor_setting_listss').click(function() {
        istop = false
        var index = $(this).index()
        var target = $(".floor").eq(index).offset().top //当前点击的对象相对于页面的高度就是滚动条的高度
        //滚动条动画 达到目标值
        $('body,html').stop().animate({
            'scrollTop': target
        }, 300, function() {
            istop = true
        })
    })
    $(window).scroll(function() {
        var scrollTop = $(this).scrollTop();
        var scrollHeight = $(document).height();
        var windowHeight = $(this).height();
        floor_setting.style.display = "none";
        if(scrollTop >= rexiaobaokuan.offsetTop && scrollTop <= qijiandian.offsetTop) {
            floor_setting.style.display = "block";
        } else {
            floor_setting.style.display = "none";
        }
        for(var m = 0; m < floor.length; m++) {
            floor_setting_listss[m].style.color = arrColor[1];
            floor_setting_listss[m].style.background = "white";
            floor_setting_listss[m].innerHTML = arr[m];
            if(scrollTop < floor[1].offsetTop) {
                floor_setting_listss[0].style.color = arrColor[0];
                floor_setting_listss[0].innerHTML = arr1[0];
                floor_setting_listss[0].style.background = arrBg[0];
            }
            if(scrollTop >= floor[1].offsetTop && scrollTop < floor[2].offsetTop) {
                floor_setting_listss[1].style.color = arrColor[0];
                floor_setting_listss[1].innerHTML = arr1[1];
                floor_setting_listss[1].style.background = arrBg[0];
            }
            if(scrollTop >= floor[2].offsetTop && scrollTop < floor[3].offsetTop) {
                floor_setting_listss[2].style.color = arrColor[0];
                floor_setting_listss[2].innerHTML = arr1[2];
                floor_setting_listss[2].style.background = arrBg[0];
            }
            if(scrollTop >= floor[3].offsetTop) {
                floor_setting_listss[3].style.color = arrColor[0];
                floor_setting_listss[3].innerHTML = arr1[3];
                floor_setting_listss[3].style.background = arrBg[0];
            }
        }
        if (istop) {
            var top = $(window).scrollTop()

            var index = 0
            //利用每次循环作比较  用一个变量来接收当前的下标值
            $(".floor").each(function(ind, obj) {
                if (top >= $(obj).offset().top - 100) {
                    index = ind
                }
            })
        }
    })
})

var Floor_setting_list = floor_setting_listss[0];
for(var i = 0; i < floor.length; i++) {
    floor[i].index = i;
    floor_setting_listss[i] = i;

    floor_setting_listss[i].onmousedown = function() {
        var _this = this;
        for(var j = 0; j < floor.length; j++) {
            floor_setting_listss[j].style.color = arrColor[1];
            floor_setting_listss[j].innerHTML = arr[j];
            floor_setting_listss[j].style.background = arrBg[1];
        }
        this.style.color = arrColor[0];
        this.innerHTML = arr1[this.index];
        this.style.background = arrBg[0];
        Floor_setting_list = this;
        this.onmouseout = null;
    }
}
//$.ajax({
//	type:"get",
//	url:"",
//	async:true,
//	data:{},
//	dataType:"json",
//	success:function(data){
//		
//	}
//});