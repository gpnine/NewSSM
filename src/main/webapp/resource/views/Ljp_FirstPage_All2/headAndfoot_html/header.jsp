<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    %>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/lkl_headandfoot.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/lkl_index.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/lkl_base.css"/>
</head>
<body>
<div class="topBox">
    <div class="top">
        <div class="top_left">
            <span>您好 , 欢迎来到<span style="color: black;">&nbsp;&nbsp;中酒网!</span></span>
            <a href="###" class="goShop">去买家中心</a>
            <a href="<%=basePath%>/resource/views/html/szz_login.jsp" class="login_in">请登录</a>
            <a href="<%=basePath%>/resource/views/html/szz_register.jsp" class="register_in">免费注册</a>
        </div>
        <div class="top_right">
            <div class="myZhongjiu">
                <span>我的中酒网</span>
                <div class="trangel"></div>
                <div class="trangel_href">
                    <a href="###">已买到的商品</a><br/>
                    <a href="###">我关注的商品</a><br/>
                    <a href="###">我关注的店铺</a>
                </div>
            </div>
            <div class="cars">购物车
                <a href="###" class="car" style="color: red;">0</a>件
            </div>
            <div class="weixinInter">
                <span>微信端</span>
                <img src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/headAndfoot_img/weixinCode.png"/>
            </div>
            <div class="app">
                <span>App</span>
                <img src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/headAndfoot_img/app.png"/>
            </div>
            <div class="SellCenter">
                <span>卖家中心</span>
                <div class="trangel"></div>
                <div class="SellCenter_href">
                    <a href="###">商家入驻</a><br/>
                    <a href="###">已卖出商品</a><br/>
                    <a href="###">管理商品</a>
                </div>
            </div>
            <div class="navStation">
                <span>网站导航</span>
                <div class="trangel"></div>
                <div class="navStation_href">
                    <div>
                        <p>买酒</p>
                        <div class="nav_a">
                            <a href="###">白酒</a>
                            <a href="###">葡萄酒</a>
                            <a href="###">洋酒</a>
                            <a href="###">黄酒</a>
                            <a href="###">整箱</a>
                            <a href="###">婚庆 </a>
                        </div>
                    </div>
                    <div style="background: #f5f4f4;">
                        <p>品牌</p>
                        <div class="nav_a others_top">
                            <a href="###">茅台</a>
                            <a href="###">五粮液</a>
                            <a href="###">洋河</a>
                            <a href="###">天佑德</a>
                            <a href="###">红星</a>
                            <a href="###">牛栏山</a>
                            <a href="###">泸州老窖</a>
                            <a href="###">拉菲</a>
                            <a href="###">张裕</a>
                        </div>
                    </div>
                    <div>
                        <p>其他</p>
                        <div class="nav_a others">
                            <a href="###">帮助中心</a>
                            <a href="###">品牌资讯</a>
                            <a href="###">品牌导航</a>
                            <a href="###">新品推荐</a>
                            <a href="###">积分商城</a>
                            <a href="###">App下载</a>
                        </div>
                    </div>
                    <p style="background: #f5f4f4;margin-top: 0px;margin-bottom: -5px;">订购热线:40-798-9999</p>
                </div>
            </div>
            <div class="hotline">订购热线:400-798-999</div>
        </div>
    </div>
</div>
<div class="qingke">
    <a href="" class="qingke_"></a>
</div>
<!--搜索块-->
<div class="below_head">
    <img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/logo.jpg" alt="logo" height="60"/>
    <img src="<%=basePath%>/resource/views/img/app.gif" alt="动图"/>
    <div class="gif_right">
        <div class="sousuo">
            <select name="change" class="change">
                <option value="商品">商品</option>
                <option value="店铺">店铺</option>
            </select>
            <form action="<%=basePath%>/resource/views/html/111.jsp">
                <input type="text" name="name" id="search" value="" placeholder="西风"/>
                <button>搜索</button>
            </form>
        </div>
        <div class="list">
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=西风">西风</a>
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=青稞酒">青稞酒</a>
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=洋酒">洋酒</a>
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=习酒">习酒</a>
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=小糊涂仙">小糊涂仙</a>
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=酒鬼酒">酒鬼酒</a>
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=张裕">张裕</a>
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=拉菲">拉菲</a>
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=董酒">董酒</a>
            <a href="<%=basePath%>/resource/views/html/111.jsp?name=华夏长城">华夏长城</a>
        </div>
    </div>
    <a href="<%=basePath%>/resource/views/html/lkl_index.jsp" class="present">
        <img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/201610211352319102520.png" height="80"/>
    </a>
</div>
<!--轮播图区域-->
<div id="" style="position: relative;width:1190px;margin:0 auto;">
    <div class="side_nav_slider_left"></div>
    <div class="side-nav">
        <ul class="sidenav-list">
        </ul>
    </div>
</div>
<div class="side_nav_slider_top">
    <span class="cate-all"><img src="http://www.zhongjiu.cn/Areas/Web/Images/HIMALL_admin11_04_03.png"
                                alt=""><a>全部商品分类</a></span>
    <span class="item"><a href="<%=basePath%>/resource/views/html/lkl_index.jsp" class="item_one">首页</a></span>
    <span class="item"><a
            href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_baijiuzhuanqu.jsp">白酒专区</a></span>
    <span class="item"><a
            href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_hongyangzhuanqu.jsp">红洋酒专区</a></span>
    <span class="item"><a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_qingkejiu.jsp">天佑德青稞酒</a></span>
    <span class="item"><a
            href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_jingpintuijian.jsp">精品推荐</a></span>
</div>
</body>
<script src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/jquery-3.2.1.min.js"></script>
<script>

    //用户登录
    if (${user1.userPhone!=null}) {
        $(".login_in").html(${user1.userPhone});
        $(".register_in").html($("<a style='color: grey;height: 12px;margin:0' href='<%=basePath%>/user/exitUser.do' class='register_in'>[退出]</a>"));
    }

    $.ajax({
        url: "<%=basePath%>/index/fenlei.do",
        method: "get",
        async: true,
        success: function (data) {
            for (j in data) {
                $("<li class='side-item'><a class='sidenav-list_one' href='http://www.zhongjiu.cn/list/2-0-0-1-1-1.htm'>"
                    + "<img style='width=12px;height=20px' class='iconTu' src='<%=basePath%>/resource/views/img/bzimg/xiao"
                    + j + ".png' alt=''>"
                    + data[j].shopName + "</a><a class='sidenav-list_two sange"
                    + j + "' style='display:block;' href='#'></a><div class='children-nav'>"
                    + "<div class='children-nav-left children-nav-left_"
                    + j + "'></div><div class='children-right pa'><h5>推荐品牌</h5><a>"
                    + "<img class='tuijianTu' src='<%=basePath%>/resource/views/img/bzimg/bz"
                    + j + ".jpg'/></a></div></div></li>").appendTo($(".sidenav-list"));
                switch (data[j].shopId) {
                    case 1:
                        $("<span>" + data[j].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_10'></ul>").appendTo($(".children-nav-left_0"));
                        for (var k = 0; k < 18; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[0].shopList[l].shopName + "'>" + data[j].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_10"));
                        }
                        $("<li><a class='link' href='<%=basePath%>/resource/views/Ljp_FirstPage_All2/bai_html/04.Ljp_FirstPage_All.jsp'>更多</a></li>").appendTo($(".children-list_10"));
                        $("<span>" + data[j].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_12'></ul>").appendTo($(".children-nav-left_0"));
                        for (var k = 0; k < 5; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[2].shopList[l].shopName + "'>" + data[j].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_12"));
                        }
                        $("<span>" + data[j].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_11'></ul>").appendTo($(".children-nav-left_0"));
                        for (var k = 0; k < 7; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[1].shopList.length);
                            $("<li><a  class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[1].shopList[l].shopName + "'>" + data[j].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_11"));
                        }
                    case 2:
                        $("<span>" + data[j].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_20'></ul>").appendTo($(".children-nav-left_1"));
                        for (var k = 0; k < 8; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[0].shopList[l].shopName + "'>" + data[j].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_20"));
                        }
                        $("<span>" + data[j].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_22'></ul>").appendTo($(".children-nav-left_1"));
                        for (var k = 0; k < 7; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[2].shopList[l].shopName + "'>" + data[j].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_22"));
                        }
                        $("<span>" + data[j].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_21'></ul>").appendTo($(".children-nav-left_1"));
                        for (var k = 0; k < 7; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[1].shopList[l].shopName + "'>" + data[j].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_21"));
                        }
                    case 3:
                        $("<span>" + data[j].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_30'></ul>").appendTo($(".children-nav-left_2"));
                        for (var k = 0; k < 11; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[0].shopList[l].shopName + "'>" + data[j].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_30"));
                        }
                        $("<span>" + data[j].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_32'></ul>").appendTo($(".children-nav-left_2"));
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[2].shopList[l].shopName + "'>" + data[j].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_32"));
                        }
                        $("<span>" + data[j].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_31'></ul>").appendTo($(".children-nav-left_2"));
                        for (var k = 0; k < 4; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[1].shopList[l].shopName + "'>" + data[j].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_31"));
                        }

                    case 4:
                        for (i in data[j].shopList) {
                            $("<span>" + data[j].shopList[i].shopName + "</span><ul class='children-list clearfix children-list_4" + i + "'></ul>").appendTo($(".children-nav-left_3"));
                            for (k in data[j].shopList[i].shopList) {
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[i].shopList[k].shopName + "'>" + data[j].shopList[i].shopList[k].shopName + "</a></li>").appendTo($(".children-list_4" + i));
                            }
                        }
                    case 5:
                        $("<span>" + data[0].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_50'></ul>").appendTo($(".children-nav-left_4"));
                        for (var k = 0; k < 5; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[0].shopList[l].shopName + "'>" + data[0].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_50"));
                        }
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[0].shopList[l].shopName + "'>" + data[1].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_50"));
                        }
                        $("<span>" + data[0].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_51'></ul>").appendTo($(".children-nav-left_4"));
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[2].shopList[l].shopName + "'>" + data[0].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_51"));
                        }
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[2].shopList[l].shopName + "'>" + data[1].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_51"));
                        }
                        $("<span>" + data[0].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_52'></ul>").appendTo($(".children-nav-left_4"));
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[1].shopList[l].shopName + "'>" + data[0].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_52"));
                        }
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[1].shopList[l].shopName + "'>" + data[1].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_52"));
                        }
                    case 6:
                        $("<span>" + data[0].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_60'></ul>").appendTo($(".children-nav-left_5"));
                        for (var k = 0; k < 4; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[0].shopList[l].shopName + "'>" + data[0].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_60"));
                        }
                        for (var k = 0; k < 3; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[0].shopList[l].shopName + "'>" + data[1].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_60"));
                        }
                        $("<span>" + data[1].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_61'></ul>").appendTo($(".children-nav-left_5"));
                        for (var k = 0; k < 3; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[2].shopList[l].shopName + "'>" + data[0].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_61"));
                        }
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[2].shopList[l].shopName + "'>" + data[1].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_61"));
                        }
                        $("<span>" + data[0].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_62'></ul>").appendTo($(".children-nav-left_5"));
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[1].shopList[l].shopName + "'>" + data[0].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_62"));
                        }
                        for (var k = 0; k < 3; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[1].shopList[l].shopName + "'>" + data[1].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_62"));
                        }
                        break;
                    default:
                        break;
                }
            }
            $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=茅台'>茅台</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=五粮液'>五粮液 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=天佑德' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>天佑德</a></div>").appendTo(".sange0");
            $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=拉菲'>拉菲</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=张裕'> 张裕 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=马克斯威' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>马克斯威</a></div>").appendTo(".sange1");
            $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=马爹利' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>马爹利</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=人头马'> 人头马 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=芝华士'>芝华士</a></div>").appendTo(".sange2");
            $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=尧喝货'>尧喝货</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=唐宋' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'> 唐宋 </a><a>塔牌</a></div>").appendTo(".sange3");
            $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=五粮液五星级' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>五粮液五星级</a></div>").appendTo(".sange4");
            $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=茅台' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>茅台</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=拉菲'> 拉菲 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=五粮液'> 五粮液 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=张裕'>张裕</a></div>").appendTo(".sange5");

        }
    })
    //显示导航栏列表
    $(".side-nav").css("display","none");
    $(".cate-all").mouseenter(function () {
        $(".side-nav").css("display","block");
    });
    //隐藏导航栏列表
    $(".cate-all").mouseleave(function () {
        $(".side-nav").css("display","none");
    });
</script>
</html>
