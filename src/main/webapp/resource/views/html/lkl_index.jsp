<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html lang="en">
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    %>
    <meta charset="UTF-8"/>
    <title>中酒网-白酒,红酒,葡萄酒,洋酒,保健酒,黄酒专业酒水零售平台</title>
    <link rel="shortcut icon" href="<%=basePath%>/resource/views/img/logo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/lkl_headandfoot.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/lkl_base.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/lkl_index.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/lkl_iconfont.css">
</head>
<body>
<div class="topBox">
    <div class="top">
        <div class="top_left">
            <span>您好 , 欢迎来到<span style="color: black;">&nbsp;&nbsp;中酒网!</span></span>
            <a href="" class="goShop">去买家中心</a>
            <a href="<%=basePath%>/resource/views/html/szz_login.jsp" class="login_in">请登录</a>
            <a href="<%=basePath%>/resource/views/html/szz_register.jsp" class="register_in">免费注册</a>
        </div>
        <div class="top_right">
            <div class="myZhongjiu">
                <span>我的中酒网</span>
                <div class="trangel"></div>
                <div class="trangel_href">
                    <a href="">已买到的商品</a><br/>
                    <a href="">我关注的商品</a><br/>
                    <a href="">我关注的店铺</a>
                </div>
            </div>
            <div class="cars">购物车
                <a href="" class="car" style="color: red;">0</a>件
            </div>
            <div class="weixinInter">
                <span>微信端</span>
                <img src="<%=basePath%>/resource/views/img/weixinCode.png"/>
            </div>
            <div class="app">
                <span>App</span>
                <img src="<%=basePath%>/resource/views/img/app.png"/>
            </div>
            <div class="SellCenter">
                <span>卖家中心</span>
                <div class="trangel"></div>
                <div class="SellCenter_href">
                    <a href="">商家入驻</a><br/>
                    <a href="">已卖出商品</a><br/>
                    <a href="">管理商品</a>
                </div>
            </div>
            <div class="navStation">
                <span>网站导航</span>
                <div class="trangel"></div>
                <div class="navStation_href">
                    <div>
                        <p>买酒</p>
                        <div class="nav_a">
                            <a href="">白酒</a>
                            <a href="">葡萄酒</a>
                            <a href="">洋酒</a>
                            <a href="">黄酒</a>
                            <a href="">整箱</a>
                            <a href="">婚庆 </a>
                        </div>
                    </div>
                    <div style="background: #f5f4f4;">
                        <p>品牌</p>
                        <div class="nav_a others_top">
                            <a href="">茅台</a>
                            <a href="">五粮液</a>
                            <a href="">洋河</a>
                            <a href="">天佑德</a>
                            <a href="">红星</a>
                            <a href="">牛栏山</a>
                            <a href="">泸州老窖</a>
                            <a href="">拉菲</a>
                            <a href="">张裕</a>
                        </div>
                    </div>
                    <div>
                        <p>其他</p>
                        <div class="nav_a others">
                            <a href="">帮助中心</a>
                            <a href="">品牌资讯</a>
                            <a href="">品牌导航</a>
                            <a href="">新品推荐</a>
                            <a href="">积分商城</a>
                            <a href="">App下载</a>
                        </div>
                    </div>
                    <p style="background: #f5f4f4;margin-top: 0px;margin-bottom: -5px;">订购热线:40-798-9999</p>
                </div>
            </div>
            <div class="hotline">订购热线:400-798-999</div>
        </div>
    </div>
</div>

<!--头部下的图片-->
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
            <form action="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp">
                <input type="text" name="likeName" id="search" value="" placeholder="西凤"/>
                <button>搜索</button>
            </form>
        </div>
        <div class="list">
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=西凤" target="_blank">西凤</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=今良造" target="_blank">今良造</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=茅台" target="_blank">茅台</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=古井" target="_blank">古井</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=南福" target="_blank">南福</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=国窖" target="_blank">国窖</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=杰卡斯" target="_blank">杰卡斯</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=拉菲" target="_blank">拉菲</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=董酒" target="_blank">董酒</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=华夏长城" target="_blank">华夏长城</a>
        </div>
    </div>
    <a href="" class="present">
        <img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/201610211352319102520.png" height="80"/>
    </a>
</div>


<!--轮播图区域-->
<div id="" style="position: relative;width:1190px;margin:0 auto;">
    <div class="side_nav_slider_left"></div>
    <div class="small_banner">
        <a href="http://pro.zhongjiu.cn/20151210/2wly.html" target="_blank"><img class="lazyload1"
                                                                                 src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/201709121117114935610.jpg"/></a>
        <a href="http://pro.zhongjiu.cn//20170814/augustmeet.html" target="_blank"><img class="lazyload2"
                                                                                        src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/201708221047305409910.jpg"/></a>
    </div>
    <div class="side-nav">
        <ul class="sidenav-list">
        </ul>
    </div>
</div>
<div class="side_nav_slider_top">
    <span class="cate-all"><img src="http://www.zhongjiu.cn/Areas/Web/Images/HIMALL_admin11_04_03.png" alt=""><a
            href="###">全部商品分类</a></span>
    <span class="item"><a class="item_one" href="###">首页</a></span>
    <span class="item"><a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp">白酒专区</a></span>
    <span class="item"><a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp">红洋酒专区</a></span>
    <span class="item"><a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp">天佑德青稞酒</a></span>
    <span class="item"><a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp">精品推荐</a></span>
</div>
<div class="slider">
    <ul class="fade">
        <li>
            <a class="lunbotu0" href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp">
            </a>
        </li>
        <li>
            <a class="lunbotu1" href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp">
            </a>
        </li>
        <li>
            <a class="lunbotu2" href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp">
            </a>
        </li>
        <li>
            <a class="lunbotu3"
               href="<%=basePath%>/resource/views/zhongjiu-Shopping-maotai/html/zhongjiu-Shopping-maotai.html">
            </a>
        </li>
        <li>
            <a class="lunbotu4"
               href="<%=basePath%>/resource/views/zhongjiu-Shopping-wuliangye/html/zhongjiu-Shopping-wuliangye.html">
            </a>
        </li>
        <li>
            <a class="lunbotu5" href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp">
            </a>
        </li>
    </ul>
    <div class="pagination">
        <ul>
            <li class="active"></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <div class="arrow-right"></div>
    <div class="arrow-left"></div>

</div>


<!--热销爆款-->
<!--<div class="wrap">

</div>-->

<ol class="content">
    <li>
        <div class="clearfix" style="width:1190px;">
            <div class="fl rexiaobaokuan"><a href="">热销爆款</a></div>
            <div class="fr" style="padding:10px 0px 10px;"><a class="gengduo" href="">更多&gt;&gt;</a></div>
        </div>
        <div style="width:1190px;border-top:1px solid gray;margin-top:-2px;">
            <ol class="hot_sell_list clearfix">
            </ol>
        </div>

    </li>
    <!--楼层结构开始-->
    <li>
        <ol>
            <!--一楼 帮你选酒-->
            <li id="f1" class="floor">
                <!--头部-->
                <div class="floor-hd clearfix">
                    <div class="fl"><span class="shuxian fl "></span>帮你选酒</div>
                    <div class="fr">
                        <div class="pr  help">
                            <a class="help_a  help_aa help_a_hot" href="">Hot!热卖</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="help_a  help_aa help_a_hot" href="">必备口粮</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="help_a  help_aa help_a_hot" href="">送礼佳品</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="help_a  help_aa help_a_hot" href="">大型宴请</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="gengduo help_aa"
                               href="<%=basePath%>/resource/views/Ljp_FirstPage_All2/all_html/04.Ljp_FirstPage_All.jsp">更多&gt;&gt;</a>
                            <div class="pa help_pa"></div>
                        </div>
                    </div>
                </div>
                <!--酒品-->
                <div class="jiupin">
                    <div class="jiupin_first ">
                        <ol class="clearfix">
                            <li class="fl mr mt pr">
                                <%--青稞酒专区--%>
                                <a href="" class="a">
                                    <img src="<%=basePath%>/resource/views/img/z0.jpg"/>
                                </a>
                                <div class="pa jiupin_first_table">
                                    <table class="jiupin_first_table_pinpai clearfix">
                                        <tr>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">贵州</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">四川</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">北京</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">青海</a></td>
                                        </tr>
                                        <tr>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">酱香型</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">浓香型</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">清香型</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">绵柔型</a></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="pa jiupin_first_swiper">
                                    <div class="jiupin_first_swiper_prev"><i class="iconfont icon-arrowleft"></i></div>
                                    <div class="jiupin_first_swiper_next"><i class="iconfont icon-arrowright"></i></div>
                                    <div class="jiupin_first_swiper_box">
                                        <div class="jiupin_first_swiper_box_imgs clearfix">
                                            <span class="span_count">0</span>
                                            <div class="jiupin_first_swiper_box_imgs_four zuobran1">
                                            </div>
                                            <div class="jiupin_first_swiper_box_imgs_four zuobran2">
                                            </div>
                                            <div class="jiupin_first_swiper_box_imgs_four zuobran3">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="fl mr pr" style="width:950px;">
                                <ol class="fl pa xuanjiuqu  xuanjiuqu_hot li1_0"
                                    style="width:960px;left:0;display: block;">
                                    <li class="fl mr mt">
                                        <a href="" class="a">
                                            <img src="<%=basePath%>/resource/views/img/dd.jpg"/>
                                        </a>
                                    </li>
                                </ol>
                                <ol class="fl pa xuanjiuqu xuanjiuqu_hot ol1_0" style="width:960px;left:0">
                                </ol>
                                <ol class="fl pa xuanjiuqu xuanjiuqu_hot ol1_1" style="width:960px;left:0">
                                </ol>
                                <ol class="fl pa xuanjiuqu xuanjiuqu_hot ol1_2" style="width:960px;left:0">
                                </ol>
                            </li>
                        </ol>
                    </div>
                    <div class="jiupin_first clearfix">
                        <ol class="clearfix bj_bottom1">
                            <li style="border: 1px solid #0000002b;box-sizing: border-box"
                                class="fl mr mt bj_bottom1_1">
                                <a href="" class="a">
                                    <img src="<%=basePath%>/resource/views/img/b0.jpg"/>
                                </a>
                            </li>
                        </ol>
                    </div>
                </div>
            </li>
            <!--白酒区-->
            <li id="f2" class="floor">
                <!--头部 Hot！热卖洋河天佑德-->
                <div class="floor-hd clearfix">
                    <div class="fl"><span class="shuxian fl"></span>白酒馆</div>
                    <div class="fr">
                        <div class="pr  help">
                            <a class="help_a  help_aa help_a_white" href="">Hot!热卖</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="help_a  help_aa help_a_white bj_yh" href="">南福</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="help_a  help_aa help_a_white" href="">茅台</a>
                            <div class="pa help_pa"></div>
                        </div>

                        <div class="pr help">
                            <a class="gengduo  help_aa"
                               href="<%=basePath%>/resource/views/Ljp_FirstPage_All2/bai_html/04.Ljp_FirstPage_All.jsp">更多&gt;&gt;</a>
                            <div class="pa help_pa"></div>
                        </div>
                    </div>
                </div>
                <!--酒品-->
                <div class="jiupin">
                    <div class="jiupin_first ">
                        <ol class="clearfix">
                            <li class="fl mr mt pr">
                                <a href="" class="a">
                                    <img src="<%=basePath%>/resource/views/img/z1.jpg"/>
                                </a>
                                <div class="pa jiupin_first_table">
                                    <table class="jiupin_first_table_pinpai clearfix">
                                        <tr>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">五粮液五星级</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">贵州茅台醇</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">高原青稞酒</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">洋河梦之蓝</a></td>
                                        </tr>
                                        <tr>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">贵州董酒</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">泸州老窖</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">牛栏山二锅头</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">红星二锅头</a></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="pa jiupin_first_swiper">
                                    <div class="jiupin_first_swiper_prev"><i class="iconfont icon-arrowleft"></i></div>
                                    <div class="jiupin_first_swiper_next"><i class="iconfont icon-arrowright"></i></div>
                                    <div class="jiupin_first_swiper_box">
                                        <div class="jiupin_first_swiper_box_imgs clearfix">
                                            <span class="span_count">0</span>
                                            <div class="jiupin_first_swiper_box_imgs_four zuo1bran1">
                                            </div>
                                            <div class="jiupin_first_swiper_box_imgs_four zuo1bran2">
                                            </div>
                                            <div class="jiupin_first_swiper_box_imgs_four zuo1bran3">
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="fl mr pr" style="width:950px;">
                                <ol class="fl pa xuanjiuqu xuanjiuqu_white li1_1"
                                    style="width:960px;left:0;display: block;">
                                    <li class="fl mr mt">
                                        <a href="" class="a">
                                            <img src="<%=basePath%>/resource/views/img/d0.jpg"/>
                                        </a>
                                    </li>
                                </ol>
                                <ol class="fl pa xuanjiuqu xuanjiuqu_white ol2_0" style="width:960px;left:0">
                                </ol>
                                <ol class="fl pa xuanjiuqu xuanjiuqu_white ol2_1" style="width:960px;left:0">
                                </ol>
                            </li>
                        </ol>
                    </div>
                    <div class="jiupin_first clearfix">
                        <ol class="clearfix bj_bottom2">
                            <li class="fl mr mt bj_bottom2_1">
                                <a href="" class="a">
                                    <img src="<%=basePath%>/resource/views/img/b1.jpg"/>
                                </a>
                            </li>
                        </ol>
                    </div>
                </div>
            </li>
            <!--葡萄酒区 马克斯威干红葡萄酒起泡酒拉菲-->
            <li id="f3" class="floor">
                <!--头部-->
                <div class="floor-hd clearfix">
                    <div class="fl"><span class="shuxian fl"></span>葡萄酒馆</div>
                    <div class="fr">
                        <div class="pr  help">
                            <a class="help_a  help_aa help_a_pu" href="">Hot!热卖</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="help_a  help_aa help_a_pu" href="">杰卡斯</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="help_a  help_aa help_a_pu" href="">奔富</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="gengduo  help_aa"
                               href="<%=basePath%>/resource/views/Ljp_FirstPage_All2/pu_html/04.Ljp_FirstPage_All.jsp">更多&gt;&gt;</a>
                            <div class="pa help_pa"></div>
                        </div>
                    </div>
                </div>
                <!--酒品-->
                <div class="jiupin">
                    <div class="jiupin_first ">
                        <ol class="clearfix">
                            <li class="fl mr mt pr">
                                <a href="" class="a">
                                    <img src="<%=basePath%>/resource/views/img/z2.jpg"/>
                                </a>
                                <div class="pa jiupin_first_table">
                                    <table class="jiupin_first_table_pinpai clearfix">
                                        <tr>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">法国拉菲</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">华夏长城</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">中国张裕</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">澳洲黄尾袋鼠</a></td>
                                        </tr>
                                        <tr>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">南非库玛拉</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">法国小龙船</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">法国圣迪斯</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">澳洲奔富</a></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="pa jiupin_first_swiper">
                                    <div class="jiupin_first_swiper_prev"><i class="iconfont icon-arrowleft"></i></div>
                                    <div class="jiupin_first_swiper_next"><i class="iconfont icon-arrowright"></i></div>
                                    <div class="jiupin_first_swiper_box">
                                        <div class="jiupin_first_swiper_box_imgs clearfix">
                                            <span class="span_count">0</span>
                                            <div class="jiupin_first_swiper_box_imgs_four zuo2bran1">
                                            </div>
                                            <div class="jiupin_first_swiper_box_imgs_four zuo2bran2">
                                            </div>
                                            <div class="jiupin_first_swiper_box_imgs_four zuo2bran3">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="fl mr pr" style="width:950px;">
                                <ol class="fl pa xuanjiuqu xuanjiuqu_pu li1_2"
                                    style="width:960px;left:0;display: block;">
                                    <li class="fl mr mt">
                                        <a href="" class="a">
                                            <img src="<%=basePath%>/resource/views/img/d1.jpg"/>
                                        </a>
                                    </li>
                                </ol>
                                <ol class="fl pa xuanjiuqu xuanjiuqu_pu ol3_0" style="width:960px;left:0">
                                </ol>
                                <ol class="fl pa xuanjiuqu xuanjiuqu_pu ol3_1" style="width:960px;left:0">
                                </ol>
                            </li>
                        </ol>
                    </div>
                    <div class="jiupin_first clearfix">
                        <ol class="clearfix bj_bottom3">
                            <li class="fl mr mt bj_bottom3_1">
                                <a href="" class="a">
                                    <img src="<%=basePath%>/resource/views/img/b2.jpg"/>
                                </a>

                            </li>
                        </ol>
                    </div>
                </div>
            </li>
            <!--洋酒区  Hot！热卖伏特加伏特加-->
            <li id="f4" class="floor">
                <!--头部-->
                <div class="floor-hd clearfix">
                    <div class="fl"><span class="shuxian fl"></span>洋酒&啤酒馆</div>
                    <div class="fr">
                        <div class="pr  help">
                            <a class="help_a  help_aa help_a_beer" href="">Hot!热卖</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="help_a help_aa  help_a_beer" href="">伏特加</a>
                            <div class="pa help_pa"></div>
                        </div>
                        <div class="pr help">
                            <a class="help_a help_aa  help_a_beer" href="">威士忌</a>
                            <div class="pa help_pa"></div>
                        </div>

                        <div class="pr help">
                            <a class="gengduo help_aa"
                               href="<%=basePath%>/resource/views/Ljp_FirstPage_All2/yang_html/04.Ljp_FirstPage_All.jsp">更多&gt;&gt;</a>
                            <div class="pa help_pa"></div>
                        </div>
                    </div>
                </div>
                <!--酒品-->
                <div class="jiupin">
                    <div class="jiupin_first ">
                        <ol class="clearfix">
                            <li class="fl mr mt pr">
                                <a href="" class="a">
                                    <img src="<%=basePath%>/resource/views/img/z3.jpg"/>
                                </a>
                                <div class="pa jiupin_first_table">
                                    <table class="jiupin_first_table_pinpai clearfix">
                                        <tr>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">人头马</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">马爹利</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">轩尼诗</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">绝对伏特加</a></td>
                                        </tr>
                                        <tr>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">百加得</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">翰格蓝爵</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">皇家礼炮</a></td>
                                            <td><a class="jiupin_first_table_pinpai_hover" href="">深蓝</a></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="pa jiupin_first_swiper">
                                    <div class="jiupin_first_swiper_prev"><i class="iconfont icon-arrowleft"></i></div>
                                    <div class="jiupin_first_swiper_next"><i class="iconfont icon-arrowright"></i></div>
                                    <div class="jiupin_first_swiper_box">
                                        <div class="jiupin_first_swiper_box_imgs clearfix">
                                            <span class="span_count">0</span>
                                            <div class="jiupin_first_swiper_box_imgs_four zuo3bran1">
                                            </div>
                                            <div class="jiupin_first_swiper_box_imgs_four zuo3bran2">
                                            </div>
                                            <div class="jiupin_first_swiper_box_imgs_four zuo3bran3">
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="fl mr pr" style="width:950px;">
                                <ol class="fl pa xuanjiuqu xuanjiuqu_beer li1_3"
                                    style="width:960px;left:0;display: block;">
                                    <li class="fl mr mt">
                                        <a href="" class="a">
                                            <img src="<%=basePath%>/resource/views/img/d2.jpg"/>
                                        </a>
                                    </li>
                                </ol>
                                <ol class="fl pa xuanjiuqu xuanjiuqu_beer ol4_0" style="width:960px;left:0">
                                </ol>
                                <ol class="fl pa xuanjiuqu xuanjiuqu_beer ol4_1" style="width:960px;left:0">
                                </ol>
                            </li>
                        </ol>
                    </div>
                    <div class="jiupin_first clearfix">
                        <ol class="clearfix bj_bottom4">
                            <li class="fl mr mt bj_bottom4_1">
                                <a href="" class="a">
                                    <img src="<%=basePath%>/resource/views/img/b3.jpg"/>
                                </a>
                            </li>
                        </ol>
                    </div>
                </div>
            </li>
        </ol>
    </li>

    <!--楼层结构结束-->
    <li class="qijiandian">
        <div style="font-weight:700">品牌旗舰店</div>
        <div>
            <ol class="clearfix">
                <li class="fl"><img src="<%=basePath%>/resource/views/img/9.jpg"/></li>
                <li class="fl qijiandian_logo">
                    <span class="qijiandian_logoss_span_count">0</span>
                    <div class="qijiandian_logos_prev"><i class="iconfont iconfonts icon-arrowleft"></i></div>
                    <div class="qijiandian_logos_next"><i class="iconfont iconfonts icon-arrowright"></i></div>
                    <div class="qijiandian_logos">
                        <ol class="clearfix qijiandian_logoss">

                            <li class="fl qijiandian_logos_logo brand1">
                            </li>
                            <li class="fl qijiandian_logos_logo brand2">
                            </li>
                            <li class="fl qijiandian_logos_logo brand3">
                            </li>
                        </ol>
                    </div>

                </li>
                <li class="fr"><img src="<%=basePath%>/resource/views/img/8.jpg"/></li>

            </ol>
        </div>
    </li>
</ol>

<!--底部-->
<footer>
    <div class="zhengpin_box">
        <div class="zhengpin">
            <div class="zhengpin_list">
                <span>正品保障</span>
                <span>厂家直接&nbsp;正品防伪</span>
            </div>
            <div class="zhengpin_list">
                <span>领军 o2o</span>
                <span>中国酒类&nbsp;o2o第一家</span>
            </div>
            <div class="zhengpin_list">
                <span>无理由退货</span>
                <span>拆封无条件退货</span>
            </div>
            <div class="zhengpin_list">
                <span>闪电配送</span>
                <span>专业配送&nbsp;安全送达</span>
            </div>
            <div class="zhengpin_list">
                <span>百万口碑</span>
                <span>400万用户的认可</span>
            </div>
            <div class="zhengpin_list">
                <span>金牌服务</span>
                <span>7*12小时贴心服务</span>
            </div>
        </div>
    </div>
    <div class="href_table">
        <table border="" cellspacing="0" cellpadding="0">
            <tr>
                <td rowspan="2" style="text-align: start;"><a href=""><img
                        src="<%=basePath%>/resource/views/img/bottom_1.png"/></a></td>
                <th>购物指南</th>
                <th>配送说明</th>
                <th>支付方式</th>
                <th>售后服务</th>
                <th>服务保障</th>
            </tr>
            <tr>
                <td><a href="">购物流程</a></td>
                <td><a href="">关于运费</a></td>
                <td><a href="">支付宝支付</a></td>
                <td><a href=""></a>热门常见问题</td>
                <td><a href=""></a>30分钟快速响应</td>
            </tr>
            <tr>
                <td rowspan="2" style="text-align: start;"><a href=""><img
                        src="<%=basePath%>/resource/views/img/bottom_2.png"/></a></td>
                <td><a href="">用户注册协议</a></td>
                <td><a href="">快递查询</a></td>
                <td><a href="">微信支付</a></td>
                <td><a href="">服务承诺</a></td>
                <td><a href=""></a>7*12小时贴心服务</td>
            </tr>
            <tr>
                <td><a href="">会员积分</a></td>
                <td><a href="">发货与签收</a></td>
                <td><a href="">账户余额支付</a></td>
                <td><a href=""></a>退款说明</td>
                <td><a href=""></a></td>
            </tr>
            <tr>
                <td rowspan="3" style="text-align: start;"><a href=""><img
                        src="<%=basePath%>/resource/views/img/bottom_3.png"/></a></td>
                <td><a href="">关于发票</a></td>
                <td><a href=""></a></td>
                <td><a href=""></a></td>
                <td><a href="">退换货政策</a></td>
                <td><a href=""></a></td>
            </tr>
            <tr>
                <td><a href="">关于优惠券</a></td>
                <td><a href=""></a></td>
                <td><a href=""></a></td>
                <td><a href="">退换货流程</a></td>
                <td><a href=""></a></td>
            </tr>
            <tr>
                <td><a href="">开票说明</a></td>
                <td><a href=""></a></td>
                <td><a href=""></a></td>
                <td><a href=""></a></td>
                <td><a href=""></a></td>
            </tr>
        </table>
        <div class="href_table_right">
            <div>
                <span>手机中酒</span>
                <img src="<%=basePath%>/resource/views/img/phone_zj.png"/>
                <span>下载移动客户端</span>
            </div>
            <div>
                <span>中酒微信</span>
                <img src="<%=basePath%>/resource/views/img/weixin_zj.png"/>
                <span>中酒官方微信</span>
            </div>
        </div>
    </div>
    <div class="guanyu">
        <a href="">关于中酒</a>
        <a href="">媒体报道</a>
        <a href="">加入中酒</a>
        <a href="">品牌导航</a>
        <a href="">品牌资讯</a>
        <a href="">联系我们</a>
    </div>
    <div class="bottom_last">
				<span>Copyright © 2016 中酒网(www.zhongjiu.cn) 版权所有 京ICP备12022216号-2 | 京公网安备 11010502026701 | 购买前请确认达到法定饮酒年龄！中酒网不销售任何含酒精产品给18岁以下人士！
</span>
        <span>公司名称：中酒时代酒业（北京）有限公司 公司地址：北京市朝阳区高碑店乡半壁店村惠河南街1111号国投尚科大厦2层E202单元办公室 联系人：刘铮 联系方式：400-798-9999 社会信用代码证：911101055938071245 食品经营许可证
</span>

        <div>
            <a href="">
                <img src="http://www.zhongjiu.cn/Images/authentication_01.png"/>
            </a>
            <a href="">
                <img src="http://v.trustutn.org/images/cert/brand_bottom_large.jpg"/>
            </a>
            <a href="">
                <img src="<%=basePath%>/resource/views/img/kexin.png"/>
            </a>
            <a href="">
                <img src="http://www.zhongjiu.cn/Images/authentication_05.png"/>
            </a>
            <a href="">
                <img src="http://www.zhongjiu.cn/Images/authentication_07.png"/>
            </a>
            <a href="">
                <img src="http://www.zhongjiu.cn/Images/authentication_09.png"/>
            </a>
        </div>
    </div>
</footer>
<!--左侧边栏楼层结构-->
<div class="floor_setting">

</div>


<!--右侧边栏购物详情-->
<div class="gouwuche">
    <div class="gouwuche_left">
        <ol class="gouwuche_left_content">
            <li class="gouwuche_left_content_first pr">
                <a class="a" href="<%=basePath%>/resource/views/User/html/01.Ljp_Personal_Index.jsp"><i
                        class="iconfont icon-gerentouxiang "></i></a>
                <div class="pa kefu_shuoming">
                    <span>个人中心</span>
                    <div class="sanjiaoxing pa"></div>
                </div>
            </li>
            <li class="gouwuche_left_content_first pr gouwuche_left_content_first_click">
                <a class="a" href="###"><i id="end"></i><i class="iconfont icon-gouwuche paowuxian"></i></a>
                <span style="width:22px;display: block;margin-left:9px;">购物车</span>
                <span class="gouwushuliang">0</span>
            </li>
            <li class="gouwuche_left_content_first pr gouwuche_left_content_first_click">
                <a class="a" href="###"><i class="iconfont icon-hongbao "></i></a>
                <div class="pa kefu_shuoming">
                    <span>资产中心</span>
                    <div class="sanjiaoxing pa"></div>
                </div>
            </li>
            <li class="gouwuche_left_content_first pr gouwuche_left_content_first_click">
                <a class="a" href="###"><i class="iconfont icon-xiangqu "></i></a>
                <div class="pa kefu_shuoming">
                    <span>收藏商品</span>
                    <div class="sanjiaoxing pa"></div>
                </div>
            </li>
            <li class="gouwuche_left_content_first pr gouwuche_left_content_first_click">
                <div class="pa kefu_shuoming">
                    <span>浏览历史</span>
                    <div class="sanjiaoxing pa"></div>
                </div>
                <a class="a" href="###"><i class="iconfont icon-shizhong "></i></a>
            </li>
            <li>
                <div class="kefu pr">
                    <span>客服</span>
                    <div class="kefu_shuoming pa">
                        <span>妮妮</span>
                        <span>佳佳</span>
                        <div class="sanjiaoxing pa"></div>
                    </div>
                </div>
            </li>
        </ol>
    </div>
    <div class="gouwuche_right">
        <div class='gouwuche_right1 gouwuche_right_right'>
            <div style='white-space:nowrap;padding:0 15px;'>
                <input type='checkbox' checked='checked' id='inp1'/><label for='inp1' style='white-space:nowrap'>&nbsp;全选</label>
            </div>
            <!--查看全部-->
            <a class='chakan' href='<%=basePath%>/resource/views/gouwuche/html/lkl_gouwuchejiesuan.jsp'>查看全部</a>
            <div class='zhongjiu_goods' style="padding:0 15px;">
                <div>
                    <input type='checkbox' checked='checked' class='inpcounts'/>
                    <span>中酒自营</span>
                    <span class='prices' style='float:right'>0</span>
                </div>

                <!--改动区域***********************************************************-->

                <ol class='ols'>
                    <!--购物车内添加物品-->
                    <c:forEach items="${cars}" var="item">
                        <li style='position:relative;margin-bottom:5px;'>
                            <input type='checkbox' checked='checked' class='inpcount'/>
                            <!--添加tup路径-->
                            <img style='vertical-align:middle;width:40px;'
                                 src="<%=basePath%>/resource/views/img/${item.getWines().getWineImg1()}"/>
                            <!--添加物品数量-->
                            <div class='s_sum'
                                 style="width:20px;height:20px;background:red;color:white;text-align:center;line-height:20px;font-size:12px;white-space:nowrap;position:absolute;left:100px;top:8px;">${item.getCounts()}</div>
                            <!--添加价格-->
                            <span class='titalprice'
                                  style="float:right; margin-top:8px;font-size: 13px;color: gray">${item.getWines().getWinePrice()}</span>
                        </li>
                    </c:forEach>
                </ol>

                <!--改动区域***********************************************************-->
            </div>
            <div style='position: absolute;bottom:0;padding:10px 15px;width:190px'>
                <div style='float:left'>
                    <span>已选</span>
                    <span class='counts'>0</span>
                    <span>件</span>
                </div>
                <div style='float:right ;color:red;'>
                    <span>￥</span>
                    <span class='prices'>0</span>
                </div>
                <div class="jiesuan">购物车结算</div>
            </div>
        </div>
        <div class='gouwuche_right2  gouwuche_right_right'>
            <ol style='padding:0 15px'>
                <li>
                    <div class='chexiao'>&gt;&gt;</div>
                    <div style='margin-left:65px;white-space:nowrap; color:white;'>资产中心</div>
                </li>
                <li>
                    <div style='width:190px;height:50px;background:white;padding:10px 0;'>
                        <ol>
                            <li style='float:left;width:95px;height:50px;border-right:1px dotted gray;text-align:center'>
                                <div>0</div>
                                <div style='white-space:nowrap;'>我的积分</div>
                            </li>
                            <li style='float:right;width:84px;height:50px;text-align:center'>
                                <div>0</div>
                                <div style='white-space:nowrap;'>优惠劵</div>
                            </li>
                        </ol>
                    </div>
                </li>
                <li style='white-space:nowrap; color:white;'>已领取的优惠劵</li>
            </ol>
            <img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif'/>
        </div>
        <div class='gouwuche_right3  gouwuche_right_right'>
            <div style='padding:5px 15px;'>
                <div class='chexiao'>&gt;&gt;</div>
                <div style='margin-left:65px;white-space:nowrap; color:white;'>关注商品</div>
            </div>
            <img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif'/>
        </div>
        <div class='gouwuche_right4  gouwuche_right_right'>
            <div style='padding:5px 15px;'>
                <div class='chexiao'>&gt;&gt;</div>
                <div style='margin-left:65px;white-space:nowrap; color:white;'>浏览历史</div>
            </div>
            <img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif'/>
        </div>
    </div>
</div>
</body>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="<%=basePath%>/resource/views/js/02.Ljp_info.js"></script>
<script type="text/javascript" src="<%=basePath%>/resource/views/js/lkl_index.js">

</script>
<script>
    //用户登录
    if (${user1.userPhone!=null}) {
        $(".login_in").html(${user1.userPhone});
        $(".register_in").html($("<a style='color: grey;height: 12px;margin:0' href='<%=basePath%>/user/exitUser.do' class='register_in'>[退出]</a>"));
    }

    $.ajax({
        url: "<%=basePath%>/index/banner.do",
        method: "get",
        async: true,
        success: function (data) {
            for (i in data) {
                $("<img src='<%=basePath%>/" + data[i].bannerSrc + "'/>").appendTo($(".lunbotu" + i));
            }
        }
    })
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
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[0].shopList[l].shopName + "' target='_blank'>" + data[j].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_10"));
                        }
                        $("<span>" + data[j].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_12'></ul>").appendTo($(".children-nav-left_0"));
                        for (var k = 0; k < 5; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[2].shopList[l].shopName + "' target='_blank'>" + data[j].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_12"));
                        }
                        $("<span>" + data[j].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_11'></ul>").appendTo($(".children-nav-left_0"));
                        for (var k = 0; k < 7; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[1].shopList[l].shopName + "' target='_blank'>" + data[j].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_11"));
                        }
                    case 2:
                        $("<span>" + data[j].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_20'></ul>").appendTo($(".children-nav-left_1"));
                        for (var k = 0; k < 8; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[0].shopList[l].shopName + "' target='_blank'>" + data[j].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_20"));
                        }
                        $("<span>" + data[j].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_22'></ul>").appendTo($(".children-nav-left_1"));
                        for (var k = 0; k < 7; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[2].shopList[l].shopName + "' target='_blank'>" + data[j].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_22"));
                        }
                        $("<span>" + data[j].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_21'></ul>").appendTo($(".children-nav-left_1"));
                        for (var k = 0; k < 7; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[1].shopList[l].shopName + "' target='_blank'>" + data[j].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_21"));
                        }
                    case 3:
                        $("<span>" + data[j].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_30'></ul>").appendTo($(".children-nav-left_2"));
                        for (var k = 0; k < 11; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[0].shopList[l].shopName + "' target='_blank'>" + data[j].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_30"));
                        }
                        $("<span>" + data[j].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_32'></ul>").appendTo($(".children-nav-left_2"));
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[2].shopList[l].shopName + "' target='_blank'>" + data[j].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_32"));
                        }
                        $("<span>" + data[j].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_31'></ul>").appendTo($(".children-nav-left_2"));
                        for (var k = 0; k < 4; k++) {
                            var l = parseInt(Math.random() * data[j].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[1].shopList[l].shopName + "' target='_blank'>" + data[j].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_31"));
                        }

                    case 4:
                        for (i in data[j].shopList) {
                            $("<span>" + data[j].shopList[i].shopName + "</span><ul class='children-list clearfix children-list_4" + i + "'></ul>").appendTo($(".children-nav-left_3"));
                            for (k in data[j].shopList[i].shopList) {
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[i].shopList[k].shopName + "' target='_blank'>" + data[j].shopList[i].shopList[k].shopName + "</a></li>").appendTo($(".children-list_4" + i));
                            }
                        }
                    case 5:
                        $("<span>" + data[0].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_50'></ul>").appendTo($(".children-nav-left_4"));
                        for (var k = 0; k < 5; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[0].shopList[l].shopName + "' target='_blank'>" + data[0].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_50"));
                        }
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[0].shopList[l].shopName + "' target='_blank'>" + data[1].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_50"));
                        }
                        $("<span>" + data[0].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_51'></ul>").appendTo($(".children-nav-left_4"));
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[2].shopList[l].shopName + "' target='_blank'>" + data[0].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_51"));
                        }
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[2].shopList[l].shopName + "' target='_blank'>" + data[1].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_51"));
                        }
                        $("<span>" + data[0].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_52'></ul>").appendTo($(".children-nav-left_4"));
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[1].shopList[l].shopName + "' target='_blank'>" + data[0].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_52"));
                        }
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[1].shopList[l].shopName + "' target='_blank'>" + data[1].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_52"));
                        }
                    case 6:
                        $("<span>" + data[0].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_60'></ul>").appendTo($(".children-nav-left_5"));
                        for (var k = 0; k < 4; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[0].shopList[l].shopName + "' target='_blank'>" + data[0].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_60"));
                        }
                        for (var k = 0; k < 3; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[0].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[0].shopList[l].shopName + "' target='_blank'>" + data[1].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_60"));
                        }
                        $("<span>" + data[1].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_61'></ul>").appendTo($(".children-nav-left_5"));
                        for (var k = 0; k < 3; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[2].shopList[l].shopName + "' target='_blank'>" + data[0].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_61"));
                        }
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[2].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[2].shopList[l].shopName + "' target='_blank'>" + data[1].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_61"));
                        }
                        $("<span>" + data[0].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_62'></ul>").appendTo($(".children-nav-left_5"));
                        for (var k = 0; k < 2; k++) {
                            var l = parseInt(Math.random() * data[0].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[1].shopList[l].shopName + "' target='_blank'>" + data[0].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_62"));
                        }
                        for (var k = 0; k < 3; k++) {
                            var l = parseInt(Math.random() * data[1].shopList[1].shopList.length);
                            $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[1].shopList[l].shopName + "' target='_blank'>" + data[1].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_62"));
                        }
                        break;
                    default:
                        break;
                }
            }
            $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=茅台'>茅台</a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=五粮液'>五粮液 </a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=天佑德' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>天佑德</a></div>").appendTo(".sange0");
            $("<div class='Allsange'><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=拉菲'>拉菲</a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=张裕'> 张裕 </a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=马克斯威' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>马克斯威</a></div>").appendTo(".sange1");
            $("<div class='Allsange'><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=马爹利' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>马爹利</a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=人头马'> 人头马 </a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=芝华士'>芝华士</a></div>").appendTo(".sange2");
            $("<div class='Allsange'><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=尧喝货'>尧喝货</a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=唐宋' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'> 唐宋 </a><a>塔牌</a></div>").appendTo(".sange3");
            $("<div class='Allsange'><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=五粮液五星级' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>五粮液五星级</a></div>").appendTo(".sange4");
            $("<div class='Allsange'><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=茅台' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>茅台</a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=拉菲'> 拉菲 </a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=五粮液'> 五粮液 </a><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=张裕'>张裕</a></div>").appendTo(".sange5");

        }
    })
    var jinxuanArr = ["1001", "1002", "1003", "1004", "1005", "1006", "1007", "1011", "1009", "1010"];
    for (i in jinxuanArr) {
        $.ajax({
            url: "<%=basePath%>/index/findWines.do?WineId=" + jinxuanArr[i],
            method: "get",
            success: function (data) {
                $("<li class='hot_sell_list_li' style='border: 1px solid #0000002b;box-sizing: border-box;'>"
                    + "<a style='text-align: center;' class='pr hot_sell a' href='<%=basePath%>/wine/goods.do?wid="
                    + data[0].wid + "'><img style='width:170px' src='<%=basePath%>/resource/views/img/"
                    + data[0].wineImg1 + "'/><p class='chang'>" + data[0].wineName + "</p><p style='color:red'>￥"
                    + data[0].winePrice + "</p></a></li>").appendTo($(".hot_sell_list"));
            }
        })
    }

    //    楼层
    //    精选
    $.ajax({
        url: "<%=basePath%>/index/findScope.do?a=1001&b=1200",
        method: "get",
        success: function (data) {
            for (var i = 0; i < 4; i++) {
                $("<li class='fl mr mt'  style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'>"
                    + "<a  style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[i].wid + "' class='a'><img style='width:170px' src='<%=basePath%>/resource/views/img/"
                    + data[i].wineImg1 + "'/><p class='chang'>" + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".li1_0"));
            }
        }
    })
    //    精选内部
    var innerArr = ["1021", "2008", "2003", "2014", "1015", "1026", "1037", "2001", "1027", "2011"];
    for (i in innerArr) {
        $.ajax({
            url: "<%=basePath%>/index/findWines.do?WineId=" + innerArr[i],
            method: "get",
            success: function (data) {
                $("<li style='width:180px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[0].wid + "' class='a'><img style='height:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                    + data[0].wineName + "</p><p style='color:red'>￥"
                    + data[0].winePrice + "</p></a></li>").appendTo($(".ol1_0"));
            }
        })
    }
    //    精选内部
    var innerArr = ["1027", "2013", "1025", "1024", "2010", "1029", "1027", "2001", "2004", "1026"];
    for (i in innerArr) {
        $.ajax({
            url: "<%=basePath%>/index/findWines.do?WineId=" + innerArr[i],
            method: "get",
            success: function (data) {
                $("<li style='width:180px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[0].wid + "' class='a'><img style='height:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                    + data[0].wineName + "</p><p style='color:red'>￥"
                    + data[0].winePrice + "</p></a></li>").appendTo($(".ol1_1"));
            }
        })
    }
    //    精选内部
    var innerArr = ["1023", "2019", "2014", "2005", "1016", "1025", "1024", "2010", "1029", "2005"];
    for (i in innerArr) {
        $.ajax({
            url: "<%=basePath%>/index/findWines.do?WineId=" + innerArr[i],
            method: "get",
            success: function (data) {
                $("<li style='width:180px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[0].wid + "' class='a'><img style='height:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                    + data[0].wineName + "</p><p style='color:red'>￥"
                    + data[0].winePrice + "</p></a></li>").appendTo($(".ol1_2"));
            }
        })
    }
    //    精选小框的brand
    $.ajax({
        url: "<%=basePath%>/index/findNotNull.do",
        method: "get",
        success: function (data) {
            for (var i = 34; i < 38; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuobran1"));
            }
            for (var i = 95; i < 99; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuobran2"));
            }
            for (var i = 144; i < 148; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuobran3"));
            }
        }
    })
    //    精选左下角
    $.ajax({
        url: "<%=basePath%>/index/findWines.do?WineId=2021",
        method: "get",
        success: function (data) {
            $(".bj_bottom1_1").before("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                + data[0].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                + data[0].wineName + "</p><p style='color:red'>￥"
                + data[0].winePrice + "</p></a></li>")
        }
    })
    //    精选右下角
    var bottomArr = ["2020", "1031"];
    for (var i = 0; i < 2; i++) {
        $.ajax({
            url: "<%=basePath%>/index/findWines.do?WineId=" + bottomArr[i],
            method: "get",
            success: function (data) {
                $("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[0].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                    + data[0].wineName + "</p><p style='color:red'>￥"
                    + data[0].winePrice + "</p></a></li>").appendTo($(".bj_bottom1"));
            }
        })
    }
    //    *****************
    //    *****************
    //    白酒
    $.ajax({
        url: "<%=basePath%>/index/findScope.do?a=1001&b=1200",
        method: "get",
        success: function (data) {
            for (var i = 4; i < 8; i++) {
                $("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[i].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "'/><p class='chang'>"
                    + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".li1_1"));
            }
        }
    })
    $.ajax({
        url: "<%=basePath%>/wine/findLike.do",
        method: "get",
        data: {
            likeName: "南福"
        },
        success: function (data) {
            for (var i = 0; i < 10; i++) {
                $("<li style='width:180px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wineId="
                    + data[i].wid + "' class='a'><img style='height:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "'/><p class='chang'>"
                    + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".ol2_0"));
            }
        }
    })
    $.ajax({
        url: "<%=basePath%>/wine/findLike.do",
        method: "get",
        data: {
            likeName: "茅台"
        },
        success: function (data) {
            for (var i = 0; i < 10; i++) {
                $("<li style='width:180px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wineId="
                    + data[i].wid + "' class='a'><img style='height:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "'/><p class='chang'>"
                    + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".ol2_1"));
            }
        }
    })
    //    白酒小框的brand
    $.ajax({
        url: "<%=basePath%>/index/findNotNull.do",
        method: "get",
        success: function (data) {
            for (var i = 12; i < 16; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuo1bran1"));
            }
            for (var i = 18; i < 22; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuo1bran2"));
            }
            for (var i = 30; i < 33; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuo1bran3"));
            }
        }
    })
    //    白酒左下角
    $.ajax({
        url: "<%=basePath%>/index/findWines.do?WineId=1021",
        method: "get",
        success: function (data) {
            $(".bj_bottom2_1").before("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                + data[0].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                + data[0].wineName + "</p><p style='color:red'>￥"
                + data[0].winePrice + "</p></a></li>")
        }
    })
    //    白酒右下角
    var bottomArr = ["1020", "1031"];
    for (var i = 0; i < 2; i++) {
        $.ajax({
            url: "<%=basePath%>/index/findWines.do?WineId=" + bottomArr[i],
            method: "get",
            success: function (data) {
                $("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[0].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                    + data[0].wineName + "</p><p style='color:red'>￥"
                    + data[0].winePrice + "</p></a></li>").appendTo($(".bj_bottom2"));
            }
        })
    }
    //    *****************
    //    *****************
    //    葡萄酒
    $.ajax({
        url: "<%=basePath%>/index/findScope.do?a=2001&b=2200",
        method: "get",
        success: function (data) {
            for (var i = 4; i < 8; i++) {
                $("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[i].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "'/><p class='chang'>"
                    + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".li1_2"));
            }
        }
    })
    $.ajax({
        url: "<%=basePath%>/wine/findLike.do",
        method: "get",
        data: {
            likeName: "杰卡斯"
        },
        success: function (data) {
            for (var i = 0; i < 10; i++) {
                $("<li style='width:180px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[i].wid + "' class='a'><img style='height:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "'/><p class='chang'>"
                    + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".ol3_0"));
            }
        }
    })
    $.ajax({
        url: "<%=basePath%>/wine/findLike.do",
        method: "get",
        data: {
            likeName: "奔富"
        },
        success: function (data) {
            for (var i = 0; i < 10; i++) {
                $("<li style='width:180px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[i].wid + "' class='a'><img style='height:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "'/><p class='chang'>"
                    + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".ol3_1"));
            }
        }
    })
    //    葡萄酒小框的brand
    $.ajax({
        url: "<%=basePath%>/index/findNotNull.do",
        method: "get",
        success: function (data) {
            for (var i = 58; i < 62; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuo2bran1"));
            }
            for (var i = 95; i < 99; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuo2bran2"));
            }
            for (var i = 100; i < 101; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuo2bran3"));
            }
        }
    })
    //    葡萄酒左下角
    $.ajax({
        url: "<%=basePath%>/index/findWines.do?WineId=2011",
        method: "get",
        success: function (data) {
            $(".bj_bottom3_1").before("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                + data[0].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                + data[0].wineName + "</p><p style='color:red'>￥"
                + data[0].winePrice + "</p></a></li>")
        }
    })
    //    葡萄酒右下角
    var bottomArr = ["2010", "2013"];
    for (var i = 0; i < 2; i++) {
        $.ajax({
            url: "<%=basePath%>/index/findWines.do?WineId=" + bottomArr[i],
            method: "get",
            success: function (data) {
                $("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[0].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                    + data[0].wineName + "</p><p style='color:red'>￥"
                    + data[0].winePrice + "</p></a></li>").appendTo($(".bj_bottom3"));
            }
        })
    }
    //    *****************
    //    *****************
    //    洋酒
    $.ajax({
        url: "<%=basePath%>/index/findScope.do?a=2001&b=2200",
        method: "get",
        success: function (data) {
            for (var i = 4; i < 8; i++) {
                $("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[0].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "'/><p class='chang'>"
                    + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".li1_3"));
            }
        }
    })
    $.ajax({
        url: "<%=basePath%>/wine/findLike.do",
        method: "get",
        data: {
            likeName: "杰卡斯"
        },
        success: function (data) {
            for (var i = 0; i < 10; i++) {
                $("<li style='width:180px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[i].wid + "' class='a'><img style='height:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "'/><p class='chang'>"
                    + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".ol4_0"));
            }
        }
    })
    $.ajax({
        url: "<%=basePath%>/wine/findLike.do",
        method: "get",
        data: {
            likeName: "奔富"
        },
        success: function (data) {
            for (var i = 0; i < 10; i++) {
                $("<li style='width:180px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[i].wid + "' class='a'><img style='height:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "'/><p class='chang'>"
                    + data[i].wineName + "</p><p style='color:red'>￥"
                    + data[i].winePrice + "</p></a></li>").appendTo($(".ol4_1"));
            }
        }
    })
    //    洋酒小框的brand
    $.ajax({
        url: "<%=basePath%>/index/findNotNull.do",
        method: "get",
        success: function (data) {
            for (var i = 138; i < 142; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuo3bran1"));
            }
            for (var i = 142; i < 146; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuo3bran2"));
            }
            for (var i = 149; i < 152; i++) {
                $("<a class='brandimg1_1' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img class='jiupin_first_swiper_box_imgs_four_img' src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a>").appendTo($(".zuo3bran3"));
            }
        }
    })
    //    洋酒左下角
    $.ajax({
        url: "<%=basePath%>/index/findWines.do?WineId=2015",
        method: "get",
        success: function (data) {
            $(".bj_bottom4_1").before("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                + data[0].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                + data[0].wineName + "</p><p style='color:red'>￥"
                + data[0].winePrice + "</p></a></li>")
        }
    })
    //    洋酒右下角
    var bottomArr = ["2023", "2014"];
    for (var i = 0; i < 2; i++) {
        $.ajax({
            url: "<%=basePath%>/index/findWines.do?WineId=" + bottomArr[i],
            method: "get",
            success: function (data) {
                $("<li style='width:230px;height:220px;border: 1px solid #0000002b;box-sizing: border-box;'"
                    + " class='fl mr mt'><a style='text-align: center;' href='<%=basePath%>/wine/goods.do?wid="
                    + data[0].wid + "' class='a'><img style='width:170px;background-color:lightgray;'"
                    + " src='<%=basePath%>/resource/views/img/" + data[0].wineImg1 + "'/><p class='chang'>"
                    + data[0].wineName + "</p><p style='color:red'>￥"
                    + data[0].winePrice + "</p></a></li>").appendTo($(".bj_bottom4"));
            }
        })
    }

    <!--楼层结构结束-->
    //    *****************
    //品牌
    $.ajax({
        url: "<%=basePath%>/index/findNotNull.do",
        method: "get",
        success: function (data) {
            for (var i = 34; i < 49; i++) {
                $("<div class='fl qijiandian_logos_logo_box'><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a></div>").appendTo($(".brand1"));
            }
            for (var i = 95; i < 110; i++) {
                $("<div class='fl qijiandian_logos_logo_box'><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a></div>").appendTo($(".brand2"));
            }
            for (var i = 145; i < 154; i++) {
                $("<div class='fl qijiandian_logos_logo_box'><a target='_blank' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[i].shopName + "'><img src='<%=basePath%>/resource/views/img/" + data[i].shopImg + "' alt=''/></a></div>").appendTo($(".brand3"));
            }
        }
    })

</script>
<script>
    $("<ol style='padding:0 15px'><li><div class='chexiao' style='position:absolute; color:white;cursor:pointer;'>&gt;&gt;</div><div style='margin-left:65px;white-space:nowrap; color:white;'>资产中心</div></li><li><div style='width:190px;height:50px;background:white;padding:10px 0;'><ol><li style='float:left;width:95px;height:50px;border-right:1px dotted gray;text-align:center'><div>0</div><div style='white-space:nowrap;'>我的积分</div></li><li style='float:right;width:84px;height:50px;text-align:center'><div>0</div><div style='white-space:nowrap;'>优惠劵</div></li><ol></div></li><li style='white-space:nowrap; color:white;'>已领取的优惠劵</li></ol> <img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif' style='display:none;position:absolute; width:60px; left:calc(50% - 30px)'/>").appendTo($(".gouwuche_right2"));
    $("<div style='padding:5px 15px;'><div class='chexiao' style='position:absolute; color:white;cursor:pointer;'>&gt;&gt;</div><div style='margin-left:65px;white-space:nowrap; color:white;'>关注商品</div></div><img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif' style='display:none;position:absolute; width:60px; left:calc(50% - 30px)'/>").appendTo($(".gouwuche_right3"));
    $("<div style='padding:5px 15px;'><div class='chexiao' style='position:absolute; color:white;cursor:pointer;'>&gt;&gt;</div><div style='margin-left:65px;white-space:nowrap; color:white;'>浏览历史</div></div><img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif' style='display:none;position:absolute; width:60px; left:calc(50% - 30px)'/>").appendTo($(".gouwuche_right4"));

    $.ajax({
        type: "get",
        url: "<%=basePath%>/wine/findCars.do",
        async: true,
        dataType: "json",
        data: {
            userPhone:${user1.userPhone}
        },
        success: function (data) {
            if (data.shopId == "") {
//                    $("<div class='zhongjiu_goods' style='background:white;padding:0 15px;width:190px'><div><input type='checkbox'  checked='checked' class='inpcounts'/><span>中酒自营</span><span class='prices' style='float:right'>0</span></div><ol class='ols'></ol></div>").appendTo($(".gouwuche_right1"));
                $("#inp1").click(function () {
                    $(".inpcounts").prop("checked", this.checked);
                    $(".inpcount").prop("checked", this.checked);
                    change();
                })
                $(".chakan").mouseover(function () {
                    $(".chakan").css("color", "red");
                })
                $(".chakan").mouseout(function () {
                    $(".chakan").css("color", "black");
                })
            } else {
                $("#inp1").click(function () {
                    $(".inpcounts").prop("checked", this.checked);
                    $(".inpcount").prop("checked", this.checked);
                    change();
                })
                $(".chakan").mouseover(function () {
                    $(".chakan").css("color", "red");
                })
                $(".chakan").mouseout(function () {
                    $(".chakan").css("color", "black");
                })


                //获取后台数据进行创建购物车商品
                $("<div class='zhongjiu_goods' style='background:white;padding:0 15px;width:190px'><div><input type='checkbox'  checked='checked' class='inpcounts'/><span>中酒自营</span><span class='prices' style='float:right'>0</span></div><ol class='ols'></ol></div>").appendTo($(".gouwuche_right1"));
//                    for(i in data){
//                        $("<li style='position:relative;margin-bottom:5px;'><input type='checkbox' checked='checked' class='inpcount'/><img style='vertical-align:middle;width:40px;' src='"+data[i].shopImg+"'/><div class='s_sum' style='width:20px;height:20px;background:red;color:white;text-align:center;line-height:20px;font-size:12px;white-space:nowrap;position:absolute;left:100px;top:8px;'>"+data[i].parentId+"</div><span class='titalprice' style='float:right; margin-top:8px;'>"+data[i].shopId+"</span></li>").appendTo($(".ols"));
//                    }

                $(".gouwushuliang").html(function () {
                    var countss = 0;
                    $(".inpcount").siblings(".s_sum").each(function (index, el) {
                        countss += parseInt(el.innerHTML);
                    })
                    return countss;

                })
//                    $(".btn2").click(function(){
//                        //判断购物车中有没有此商品
//                        //有 查到此产品，在数量上加上新添加的数量
//                        //查询购物车数据库
//                        $("<li style='position:relative;margin-bottom:5px;'><input type='checkbox' checked='checked' class='inpcount'/><img style='vertical-align:middle;width:40px;' src='img/0.jpg'/><div class='s_sum' style='width:20px;height:20px;background:red;color:white;text-align:center;line-height:20px;font-size:12px;white-space:nowrap;position:absolute;left:100px;top:8px;'>"+$('.num').html()+"</div><span class='titalprice' style='float:right; margin-top:8px;'>"+$('.pri').html()+"</span></li>").appendTo($(".ols"));
//
//                        $(".gouwushuliang").html(function(){
//                            var countss = 0;
//                            $(".inpcount").siblings(".s_sum").each(function(index, el) {
//                                countss += parseInt(el.innerHTML);
//                            })
//                            return countss;
//
//                        })
//                        change();
//
//                    })


                $(".inpcounts").click(function () {
                    $("#inp1").prop("checked", this.checked);
                    $(".inpcount").prop("checked", this.checked);
                    change();
                })

                $(".inpcount").click(function () {
                    $(".inpcounts").prop("checked", $('.inpcount:checked').length == $('.inpcount').length);
                    $("#inp1").prop("checked", $('.inpcount:checked').length == $('.inpcount').length);
                    change();
                })
                $("<div style='position: absolute;bottom:0;padding:10px 15px;width:190px'><div style='float:left'><span>已选</span></div><div style='float:right ;color:red;'><span></span><span class='prices'>0</span></div><div style='margin-top:30px;height:40px;background:red;color:white;text-align:center;line-height:40px;'>购物车结算</div></div>").appendTo($(".gouwuche_right1"));
                //				prices总价 titalprice单个商品的总价 s_sum 每个商品的数量
                function change() {
                    $(".counts").html(function () {
                        var counts = 0;
                        $(".inpcount:checked").siblings(".s_sum").each(function (index, el) {
                            counts += parseInt(el.innerHTML);
                        })
                        return counts;
                    })
                    $(".prices").html(function () {
                        var countss = 0;
                        var arrs = [];
                        var arrss = [];

                        $(".inpcount:checked").siblings(".titalprice").each(function (index, el) {

                            arrs.push(el.innerHTML);

                        })
                        $(".inpcount:checked").siblings(".s_sum").each(function (index, el) {
                            arrss.push(el.innerHTML);

                            countss += parseInt(arrs[index]) * parseInt(arrss[index]);
                        })
                        return countss;
                    })


                }

                change();
            }
        }
    });


    $(".prices").html(function () {
        var countss = 0;
        var arrs = [];
        var arrss = [];
        var countss = 0;
        $(".inpcount:checked").siblings(".titalprice").each(function (index, el) {

            arrs.push(el.innerHTML);

        })
        $(".inpcount:checked").siblings(".s_sum").each(function (index, el) {
            arrss.push(el.innerHTML);

            countss += parseInt(arrs[index]) * parseInt(arrss[index]);
        })
        return countss;
    })


</script>
</html>