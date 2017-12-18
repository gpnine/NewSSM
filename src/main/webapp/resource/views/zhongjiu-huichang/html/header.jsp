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
                <img src="<%=basePath%>/resource/views/zhongjiu-huichang/img/weixinCode.png"/>
            </div>
            <div class="app">
                <span>App</span>
                <img src="<%=basePath%>/resource/views/zhongjiu-huichang/img/app.png"/>
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
    <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_qingkejiu.jsp" class="qingke_"></a>
</div>
<!--搜索块-->
<div class="below_head">
    <a href="<%=basePath%>/resource/views/html/lkl_index.jsp"><img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/logo.jpg" alt="logo" height="60"/></a>
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
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=西凤">西凤</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=今良造">今良造</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=茅台">茅台</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=古井">古井</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=南福">南福</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=国窖">国窖</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=杰卡斯">杰卡斯</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=拉菲">拉菲</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=董酒">董酒</a>
            <a href="<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=华夏长城">华夏长城</a>
        </div>
    </div>
    <a href="<%=basePath%>/resource/views/html/lkl_index.jsp" class="present">
        <img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/201610211352319102520.png" height="80"/>
    </a>
</div>
</body>
<script src="<%=basePath%>/resource/views/Ljp_FirstPage_All2/jquery-3.2.1.min.js"></script>
<script>

    //用户登录
    if (${user1.userPhone!=null}) {
        $(".login_in").html(${user1.userPhone});
        $(".register_in").html($("<a style='color: grey;height: 12px;margin:0' href='<%=basePath%>/user/exitUser.do' class='register_in'>[退出]</a>"));
    }

</script>
</html>
