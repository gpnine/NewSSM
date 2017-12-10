<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    %>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>/resource/views/Ljp_FirstPage_All2/pu_css/04.Ljp_FirstPage_All.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>/resource/views/Ljp_FirstPage_All2/pu_css/jquery.pagination.css"/>
    <title>葡萄酒的更多</title>
</head>
<body>
<div class="header"></div>
<!--上方的红线-->
<div class="red_line"></div>
<!--头部-->
<div class="head_name">
    <span class="first_page"><a href="<%=basePath%>/resource/views/html/lkl_index.jsp">首页 ></a></span>&nbsp;&nbsp;&nbsp;
    <span class="sele_kind"><a href="<%=basePath%>/resource/views/Ljp_FirstPage_All2/all_html/04.Ljp_FirstPage_All.jsp">全部 ></a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="sele_kind1"><a href="<%=basePath%>/resource/views/Ljp_FirstPage_All2/pu_html/04.Ljp_FirstPage_All.jsp">葡萄酒</a>&nbsp;&nbsp;&nbsp;<span><a href="<%=basePath%>/resource/views/Ljp_FirstPage_All2/all_html/04.Ljp_FirstPage_All.jsp">X</a></span></span>
    <span class="goods_amount">共 <span>532</span> 个商品</span>
</div>

<!--第一部分：侧边栏和选项框-->
<div class="part_one">
    <div class="left_part">
        <!--侧边栏-->
        <div class="all_kind">
            <div class="all_name">所有类名</div>
            <div class="jiu_kind">
                <span class="san_jiao"><img
                        src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/ljp_52.png"/></span>&nbsp;&nbsp;&nbsp;
                <span class=""><a>酒类</a></span>
            </div>
            <div class="white_jiu"><a>葡萄酒</a></div>
        </div>


        <!--热卖单品-->
        <div class="hot_sell">
            <div class="hot_name">热卖单品</div>
            <ul class="hot_good_a">
                <!--生成-->
            </ul>
        </div>


        <!--用户还浏览了-->
        <div class="look_recode">
            <div class="recode_name">
                购买了此类商品的用户还浏览
            </div>
            <ul class="recode_goods">
                <!--生成-->
            </ul>
        </div>


    </div>


    <div class="right_part">
        <!--选项框-->
        <div class="sele_all">
            <div class="pin_pai">
                <div class="pin field">品牌：</div>
                <div class="lis liS">
                    <!--<li class="pai_img"><img src="" alt="" class="imga" /></li>-->
                    <div class="display display_one"></div>
                </div>
                <div class="btn btn_one"><img src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/ljp_53.png"/>
                </div>
            </div>


            <div class="cd_one">
                <div class="place_one field">产地：</div>
                <div class="lis lis1 lis_one">
                    <!--生成-->
                </div>
            </div>


            <div class="xx">
                <div class="xiang field">种类：</div>
                <div class="lis lis1 lis_xx">
                    <!--生成-->
                </div>
            </div>


            <div class="sy">
                <div class="suit field">适用：</div>
                <div class="lis lis1 lis_sy">
                    <!--生成-->
                </div>
            </div>

        </div>


        <!--筛选条目-->
        <div class="sxtm">
            <div class="part_two">
                <div class="sele_field">
                    <a href=""><span>默认</span></a>
                    <a href=""><span>成交量</span></a>
                    <a href=""><span>价格</span></a>
                    <a href=""><span>评论数</span></a>
                    <a href=""><span>上架时间</span></a>
                    <a href=""><input type="checkbox"/><span>中酒自营</span></a>
                    <div class="page_num">
                        <span class="last_page"><</span>
                        <span class="page">
									<span class="cur_page">1</span>/
									<span class="amount_page">3</span>
								</span>
                        <span class="next_page">></span>
                    </div>
                </div>
            </div>
        </div>


        <!--商品展示部分-->
        <div class="show">
            <div class="part_three">
                <ul class="goods_list">
                    <!--下面单个的商品-->
                    <!--生成-->


                </ul>
            </div>
        </div>

        <!--分页部分-->
        <div class="box">
            <div class="change_page">
                <div id="pagination1" class="page fl"></div>
            </div>
        </div>

    </div>
    </div>
    <div class="footer"></div>
</body>
<script src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/pu_html/jquery.pagination.min.js"></script>
<script>
    $(".footer").load("<%=basePath%>/resource/views/Ljp_FirstPage_All2/headAndfoot_html/footer.jsp")
    $(".header").load("<%=basePath%>/resource/views/Ljp_FirstPage_All2/headAndfoot_html/header.jsp")
    //点击侧边栏的三角形，打开关闭
    $(".san_jiao").on("click", function () {
        $(".white_jiu").toggle("normal");
    })
    //点击右侧按钮，让其移除部分隐藏显示
    $(".btn_one").on("click", function () {
        $(".display_one").toggle("fast");
    })
    $(".btn_two").on("click", function () {
        $(".display_two").toggle("fast");
    })
    $(".btn_three").on("click", function () {
        $(".display_three").toggle("fast");
    })


    //获取后台数据，渲染页面
    //上边选项卡里面的东西
    var b_imgArr = [];//小logo的图片
    var b_nameArr = [];//hover效果上的文字
    var b_adressArr0 = [];//葡萄酒的产地
    var b_shiyong1Arr = [];//葡萄酒的适用
    var b_yangjiuArr = [];//葡萄酒类型
    $.ajax({
        url: "<%=basePath%>/shop/goods_more.do",
        method: "get",
        async: true,
        dataType: "json",
        success: function (data) {
//  		console.log(data);
            //葡萄酒的品牌
            var data1 = data.brand1;//object
            for (i in data1) {
                //葡萄酒的品牌
                var b_logo_img = data1[i].shopImg;
                var b_logo_name = data1[i].shopName;
                b_imgArr.push(b_logo_img);
                b_nameArr.push(b_logo_name);
            }
//动态生成选项卡数据
            //葡萄酒的品牌
            //生成品牌logo，及其鼠标输入移除的效果
            for (var i = 0; i < b_imgArr.length; i++) {
                if (i < 7) {
                    $("<li class=\"pai_img\"><img src='<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/logo/" + b_imgArr[i] + "' /></li>").prependTo($(".liS"));
                } else {
                    $("<li class=\"pai_img\"><img src='<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/logo/" + b_imgArr[i] + "' /></li>").prependTo($(".display_one"));
                }
            }
            //hover的文字
            var pai_img = $(".pai_img");
            var last_hover = pai_img[0];
            for (var i = 0; i < pai_img.length; i++) {
                pai_img[i].index = i;
                pai_img[i].onmouseover = function () {
                    this.style.border = "1px solid red";
                    this.style.textAlign = "center";
                    this.style.lineHeight = "38px";
                    this.style.color = "red";
                    this.style.fontSize = "14px";
                    this.innerHTML = b_nameArr[this.index];
                    last_hover = pai_img[this.index];
                }
                pai_img[i].onmouseout = function () {
                    this.innerHTML = "<img src='<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/logo/" + b_imgArr[this.index] + "'/>";
                    this.style.border = "";
                    this.style.textAlign = "";
                    this.style.lineHeight = "";
                    this.style.color = "";
                }
            }


            //葡萄酒的产地
            var data2 = data.adress1;
            for (i in data2) {
                var b_adress = data2[i].shopName;
                b_adressArr0.push(b_adress);
            }
            //生成产地1
            for (var i = 0; i < b_adressArr0.length; i++) {
                $("<li class=\"chandi1\"><a class=\"li_a3\" href=\"\">" + b_adressArr0[i] + "</a></li>").prependTo($(".lis_one"));
            }


            //葡萄酒种类
            var data3 = data.zhonglei;
//		console.log(data3);
            for (i in data3) {
                var b_scent = data3[i].shopName;
                b_yangjiuArr.push(b_scent);
            }
            for (var i = 0; i < b_yangjiuArr.length; i++) {
                $("<li class=\"chandi1\"><a class=\"li_a3\" href=\"\">" + b_yangjiuArr[i] + "</a></li>").appendTo($(".lis_xx"));
            }


            //葡萄酒的适用
            var data4 = data.shiyong1;
//		console.log(data4);
            for (i in data4) {
                var b_shiyong = data4[i].shopName;
                b_shiyong1Arr.push(b_shiyong);
            }
            for (var i = 0; i < b_shiyong1Arr.length; i++) {
                $("<li class=\"chandi1\"><a class=\"li_a3\" href=\"\">" + b_shiyong1Arr[i] + "</a></li>").appendTo($(".lis_sy"));
            }


            //文字的鼠标移入移出事件
            $("li_a3").css("color", "#6A6B89");
            $(".li_a3").on("mouseover", function () {
                $(this).css("color", "red");
            })
            $(".li_a3").on("mouseout", function () {
                $(this).css("color", "#6A6B89");
            })


        }
    })


    //分页插件
    //商品列表渲染

    $(function () {
        var current = 1;

        function renderList(current) {
            //热卖的数据
            var hot_ImgArr = [];
            var hot_NameArr = [];
            var hot_PriceArr = [];
            var hot_DegreeArr = [];
            var hot_MLArr = [];
            var hot_WEArr = [];
            var hot_SLArr = [];
//		var len;
            //热卖的数据
            $.ajax({
                url: "<%=basePath%>/index/findScope.do?a=2001&b=3000",
                type: "get",
                dataType: "json",
                async: true,
                success: function (data) {
//				console.log(data);
//				len = data.length;
                    var length = data.length;
                    var html = "";
                    for (var i = 0; i < length; i++) {
                        var winePrice = data[i].winePrice;//商品的价格
                        var wineEvaCount = data[i].wineEvaCount;//商品的成交量
                        var wineDegree = data[i].wineDegree;//商品的度数
                        var wineName = data[i].wineName;//商品的名称
                        var wineLiter = data[i].wineLiter;//商品的量
                        var wineCity = data[i].wineCity;//商品的商家
                        var wineBig = data[i].wineImg1;
                        var wineSmall1 = data[i].wineImg1;
                        var wineSmall2 = data[i].wineImg2;
                        var wineSmall3 = data[i].wineImg3;
                        var wineSmall4 = data[i].wineImg4;
                        var wineSales = data[i].wineSales;
                        html += '<li class="goods"><a class="aa" href="<%=basePath%>/wine/goods.do?wid=' + data[i].wid + '"><img src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/wine/' + wineBig + '" alt="' + i + '" class="wineBig"/></a><div class="bottom"><div class="pri_deal"><span class="price">￥<span>' + winePrice + '</span></span><span class="deal">成交<span> ' + wineSales + ' </span>笔</span></div><p class="jiu_name"><a href="<%=basePath%>/wine/goods.do?wid=' + data[i].wid + '"><span>' + wineDegree + '°</span><span class="w_N">' + wineName + '</span> <span>' + wineLiter + '</span></a></p><p class="zjzy"><a href="">' + wineCity + '</a></p></div><div class="small_pic"><img class="w_s1" src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/wine/' + wineSmall1 + '" alt="" /><img class="w_s2" src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/wine/' + wineSmall2 + '" alt="" /><img class="w_s3" src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/wine/' + wineSmall3 + '" alt="" /><img class="w_s4" src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/wine/' + wineSmall4 + '" alt="" /></div></li>';

                        //左边热卖单品的渲染
                        if (hot_DegreeArr.length < 5) {
                            hot_ImgArr.push(wineSmall1);
                            hot_NameArr.push(wineName);
                            hot_PriceArr.push(winePrice);
                            hot_DegreeArr.push(wineDegree);
                            hot_MLArr.push(wineLiter);
                            hot_WEArr.push(wineEvaCount);
                            hot_SLArr.push(wineSales);
                        }

                        //左边热卖单品的渲染
                    }
//				console.log(hot_ImgArr);
                    var cont = "";
                    for (i in hot_ImgArr) {
                        cont += '<li><a href="<%=basePath%>/wine/goods.do?wid=' + data[i].wid + '"><div class="hot_img"><img src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/wine/' + hot_ImgArr[i] + '" alt="" /></div><div class="hot_info"><span class="info_name"><span>' + hot_DegreeArr[i] + '</span>°<span>' + hot_NameArr[i] + '</span><span>' + hot_MLArr[i] + '</span></span><span class="info_price">￥<span>' + hot_PriceArr[i] + '</span></span></div></a></li>';
                    }
                    $(".hot_good_a").html(cont);

                    //除此还浏览了
                    var content = "";
                    for (i in hot_ImgArr) {
                        content += '<li><a href="<%=basePath%>/wine/goods.do?wid=' + data[i].wid + '"><div class="recode_goods_img"><img src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/img/wine/' + hot_ImgArr[i] + '" alt="" /></div><p class="recode_goods_name"><span>' + hot_DegreeArr[i] + '</span>°' + hot_NameArr[i] + ' <span>' + hot_MLArr[i] + '</span></p><p class="recode_goods_price">￥<span>' + hot_PriceArr[i] + '</span></p><p class="recode_goods_pls">评论数：<span>'+hot_WEArr[i]+'</span></p></a></li>';
                    }
                    $(".recode_goods").html(content);

                    //商品列表
                    $(".goods_list").html(html);
                    //鼠标移入移出的时候，小图的显示隐藏
                    var goods = $(".goods");
                    var lastGoods = goods[0];
                    for (var i = 0; i < goods.length; i++) {
                        goods[i].index = i;
                        goods[i].onmouseover = function () {
                            this.style.border = "";
                            $(".small_pic")[this.index].style.display = "block";
                            lastGoods = goods[this.index];
                            $(".zjzy a").css("textDecoration", "underline");
                            this.style.border = "1px solid red";
                            this.style.borderBottomColor = "transparent";
                        }
                        goods[i].onmouseout = function () {
                            this.style.border = "1px dotted #DCDDDC";
                            $(".small_pic")[this.index].style.display = "none";
                            $(".zjzy a").css("textDecoration", "none");
                        }
                    }
                    //鼠标移入小图的时候，对应的大图的路径切换成小图
                    var sm_img = $(".small_pic img");
                    var lastLi = sm_img[0];
                    for (var i = 0; i < sm_img.length; i++) {
                        sm_img[i].index = i;
                        sm_img[i].onmouseover = function () {
                            var con = $(sm_img[this.index]).attr("src");
                            $(this).parents(".small_pic").siblings(".aa").children(".wineBig").prop("src", con);
                            lastLi = sm_img[this.index];
                        }
                    }
                }
            })
        }

        renderList();
        $("#pagination1").pagination({
            currentPage: current,
            totalPage: 3,
            callback: function (current) {
                renderList();
            }
        });
    });


    //筛选栏的上一页和下一页
    $(".last_page").on("click", function () {
        var cur_num = $(".cur_page").html();
        cur_num--;
        if (cur_num < 1) {
            cur_num = 1;
        }
        $(".cur_page").html(cur_num);
    })
    $(".next_page").on("click", function () {
        var cur_num = $(".cur_page").html();
        cur_num++;
        if (cur_num > $(".amount_page").html()) {
            cur_num = $(".amount_page").html();
        }
        $(".cur_page").html(cur_num);
    })
</script>
</html>
