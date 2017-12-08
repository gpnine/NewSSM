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
          href="<%=basePath%>/resource/views/Ljp_FirstPage_All/css/04.Ljp_FirstPage_All.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>/resource/views/Ljp_FirstPage_All/css/jquery.pagination.css"/>
    <title>首页的更多</title>
</head>
<body>
<!--上方的红线-->
<div class="red_line"></div>

<button id="open">点击获取数据</button>
<!--头部-->
<div class="head_name">
    <span class="first_page"><a href="">首页 ></a></span>&nbsp;&nbsp;&nbsp;
    <span class="sele_kind"><a href="">全部</a></span>
    <span class="goods_amount">共 <span>1639</span> 个商品</span>
</div>

<!--第一部分：侧边栏和选项框-->
<div class="part_one">
    <!--侧边栏-->
    <div class="all_kind">
        <div class="all_name">所有类名</div>
        <div class="jiu_kind">
            <span class="san_jiao"><img src="<%=basePath%>/resource/views/Ljp_FirstPage_All/img/ljp_52.png"/></span>&nbsp;&nbsp;&nbsp;
            <span class=""><a href="">酒类</a></span>
        </div>
        <div class="white_jiu"><a href="">白酒</a></div>
    </div>


    <!--选项框-->
    <div class="sele_all">
        <div class="pin_pai">
            <div class="pin field">品牌：</div>
            <div class="lis liS">
                <c:forEach items="${brand1}" var="b1" varStatus="status">
                    <li>${b1.shopName}</li>
                </c:forEach>
                <c:forEach items="${brand2}" var="b2" varStatus="status">
                    <li>${b1.shopName}</li>
                </c:forEach>
                <c:forEach items="${brand2}" var="b3" varStatus="status">
                    <li>${b1.shopName}</li>
                </c:forEach>
                <c:forEach items="${brand4}" var="b4" varStatus="status">
                    <li>${b1.shopName}</li>
                </c:forEach>
                <!--<li class="pai_img"><img src="" alt="" /></li>-->
                <div class="display display_one"></div>
            </div>
            <div class="btn btn_one"><img src="<%=basePath%>/resource/views/Ljp_FirstPage_All/img/ljp_53.png"/></div>
        </div>


        <div class="cd_one">
            <div class="place_one field">产地：
                <c:forEach items="${adress1}" var="a1" varStatus="status">
                    <li>${a1.shopName}</li>
                </c:forEach>
            </div>
            <div class="lis lis1 lis_one">
                <!--<li class="chandi1">青海</li>
                <li class="chandi1">青大幅度海</li>-->
                <div class="display display_two"></div>
            </div>
            <div class="btn btn_two"><img src="<%=basePath%>/resource/views/Ljp_FirstPage_All/img/ljp_53.png"/></div>
        </div>


        <div class="xx">
            <div class="xiang field">香型：</div>
            <div class="lis lis1 lis_xx">scent
                <c:forEach items="${scent}" var="s1" varStatus="status">
                    <li>${s1.shopName}</li>
                </c:forEach>
            </div>
        </div>
        <div class="cd_two">
            <div class="place_two field">产地：</div>
            <div class="lis lis1 lis_two">
                <c:forEach items="${adress2}" var="a2" varStatus="status">
                    <li>${a2.shopName}</li>
                </c:forEach>
            </div>
        </div>
        <div class="zl">
            <div class="kind_pin field">种类：</div>
            <div class="lis lis1 lis_zl">zhonglei
                <c:forEach items="${zhonglei}" var="zl1" varStatus="status">
                    <li>${zl1.shopName}</li>
                </c:forEach>
            </div>
        </div>


        <div class="cd_three">
            <div class="place_three field">产地：</div>
            <div class="lis lis1 lis_three">
                <c:forEach items="${adress3}" var="a3" varStatus="status">
                    <li>${a3.shopName}</li>
                </c:forEach>
            </div>
        </div>


        <div class="sy">
            <div class="suit field">适用：</div>
            <div class="lis lis1 lis_sy">
                <c:forEach items="${shiyong1}" var="sy1" varStatus="status">
                    <li>${sy1.shopName}</li>
                </c:forEach>
                <c:forEach items="${shiyong2}" var="sy2" varStatus="status">
                    <li>${sy1.shopName}</li>
                </c:forEach>
                <c:forEach items="${shiyong3}" var="sy3" varStatus="status">
                    <li>${sy1.shopName}</li>
                </c:forEach>
                <c:forEach items="${shiyong4}" var="sy4" varStatus="status">
                    <li>${sy1.shopName}</li>
                </c:forEach>
            </div>
        </div>


        <div class="ds">
            <div class="du_num field">度数：</div>
            <div class="lis lis1 lis_du">
                <!--<li><span>46</span>%Vol.</li>
                <li><span>46</span>%Vol.</li>-->
                <c:forEach items="${degree}" var="d1" varStatus="status">
                    <li>${d1.shopName}</li>
                </c:forEach>
                <div class="display_three display"></div>

            </div>
            <div class="btn btn_three"><img src="<%=basePath%>/resource/views/Ljp_FirstPage_All/img/ljp_53.png"/></div>
        </div>


        <div class="yjlx">
            <div class="yang_kind field">洋酒类型：</div>
            <div class="lis lis1 lis_yjzl">
                <c:forEach items="${yangjiu}" var="y1" varStatus="status">
                    <li>${y1.shopName}</li>
                </c:forEach>
            </div>
        </div>
    </div>


</div>


<!--第二部分：筛选条目-->
<div class="sxtm">
    <div class="part_two">
        <div class="sele_field">
            <a href=""><span>默认</span></a>
            <a href=""><span>成交量</span></a>
            <a href=""><span>价格</span></a>
            <a href=""><span>评论数</span></a>
            <a href=""><span>上架时间</span></a>
            <a href=""><span>上架时间</span></a>
            <a href=""><input type="checkbox"/><span>上架时间</span></a>
            <div class="page_num">
                <span class="last_page"><</span>
                <span class="page"><span>1</span>/<span>28</span></span>
                <span class="next_page">></span>
            </div>
        </div>
    </div>
</div>


<!--第三部分：商品展示部分-->
<div class="show">
    <div class="part_three">
        <ul class="goods_list">
            <!--下面单个的商品-->
            <li class="goods">
                <a href=""><img src="" alt=""/></a>
                <div class="bottom">
                    <div class="pri_deal">
                        <span class="price">￥<span>39.00</span></span>
                        <span class="deal">成交<span> 18347 </span>笔</span>
                    </div>
                    <p class="jiu_name"><a href="">365爱恋桃味起泡酒 750ml</a></p>
                    <p class="zjzy"><a href="">中酒自营</a></p>
                </div>
                <div class="small_pic">
                    <img src="" alt=""/>
                    <img src="" alt=""/>
                    <img src="" alt=""/>
                    <img src="" alt=""/>
                </div>
            </li>


        </ul>
    </div>
</div>

<!--分页部分-->
<div class="box">
    <div class="change_page">
        <div id="pagination1" class="page fl"></div>
    </div>
</div>


</body>
<script src="jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>/resource/views/Ljp_FirstPage_All/js/jquery.pagination.min.js"></script>
<script src="<%=basePath%>/resource/views/Ljp_FirstPage_All/js/04.Ljp_FirstPage_All.js"></script>
</html>
