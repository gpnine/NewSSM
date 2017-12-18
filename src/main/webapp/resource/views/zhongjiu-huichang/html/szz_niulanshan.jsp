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
    <title>中酒网-牛栏山品牌专场</title>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>/resource/views/zhongjiu-huichang/css/szz_niulanshan.css"/>
    <link rel="shortcut icon" href="<%=basePath%>/resource/views/zhongjiu-huichang/img/logo.png" type="image/x-icon">
</head>

<body>
<header></header>
<div class="pl_nav_slider"></div>
<div class="content">
    <div class="side_left">
        <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_baijiuzhuanqu.jsp">白酒分会场</a>
        <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_hongyangzhuanqu.jsp">红洋分会场</a>
        <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/zhongjiu-Shopping-maotai.jsp">茅台会场</a>
        <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/zhongjiu-Shopping-wuliangye.jsp">五粮液分会场</a>
        <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/zhongjiu-Shopping-yanghe.jsp">洋河会场</a>
        <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_qingkejiu.jsp">天佑德会场</a>
        <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_niulanshan.jsp">牛栏山会场</a>
        <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_luzhoulaojiao.jsp">泸州老窖会场</a>
        <a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_hongxing.jsp">红星会场</a>
        <a href="###" style="margin-top: 15px;"><img
                src="<%=basePath%>/resource/views/zhongjiu-huichang/img/bj_side.png" alt=""/></a>
        <span style="color: white;">扫描下载App</span>
        <a href="#content_top" style="font-size: 18px;">TOP</a>
    </div>

    <div class="wrap1">
        <div class="content_top" id="content_top"></div>
        <div class="content_middle">
            <div class="lingquan" id="quan"></div>
            <div class="quan">
                <img src="" alt=""/>
                <img src="" alt=""/>
                <img src="" alt=""/>
                <img src="" alt=""/>
            </div>
            <div class="baokuan1">

            </div>

        </div>
        <div class="jiuchangwenhua">

        </div>
    </div>

    <div class="content_bottom">
        <div class="content_bottom_box">
            <h1>更多活动推荐</h1>
            <div class="more"></div>
        </div>
    </div>

</div>
<!-- 底部 -->
<footer style="margin-top: 3820px;">
</footer>
</body>
<script type="text/javascript" src="<%=basePath%>/resource/views/zhongjiu-huichang/js/jquery-3.2.1.min.js"></script>
<script>
    //加载头部
    $("header").load("<%=basePath%>/resource/views/zhongjiu-huichang/html/header.jsp");
    // 加载尾部
    $("footer").load("<%=basePath%>/resource/views/zhongjiu-huichang/html/footer.jsp");
    //加载导航栏
    $(".pl_nav_slider").load("<%=basePath%>/resource/views/zhongjiu-huichang/html/nav_slider.jsp");
    //
    var arr2 = ['http://img5.zhongjiu.cn/guan/ac_1.jpg',
        'http://img5.zhongjiu.cn/guan/ac_2.jpg',
        'http://img5.zhongjiu.cn/guan/ac_3.jpg',
        'http://img5.zhongjiu.cn/guan/ac_4.jpg?123',
        'http://img5.zhongjiu.cn/guan/ac_5.jpg?123',
        'http://img5.zhongjiu.cn/guan/ac_6.jpg?123',
        'http://img5.zhongjiu.cn/guan/ac_7.jpg',
        'http://img5.zhongjiu.cn/guan/ac_8.jpg'
    ];
    //主体部分用来存放$.ajax里面生成的所有元素
    var baokuan1 = document.getElementsByClassName("baokuan1")[0];
    var more = document.getElementsByClassName("more")[0];
    /****************************************************/
    //底部八张图
    for (var j = 0; j < arr2.length; j++) {
        var a3 = document.createElement("a");
        a3.href = "###";
        var img55 = document.createElement("img");
        img55.src = arr2[j];
        a3.appendChild(img55);
        more.appendChild(a3);
    }

    /****************************************************************/
    var content = document.getElementsByClassName("content")[0];
    var side_left = document.getElementsByClassName("side_left")[0];
    document.documentElement.onmousewheel = function () {
        if (this.scrollTop > 200) {
            side_left.style.display = "block";
        } else {
            side_left.style.display = "none";
        }
    }

    //请求发送，上述的“/************/”包裹着的部分是要后台传数据进行渲染的！！！！
    $.ajax({
        url: "<%=basePath%>/huichang/niulanshan.do",
        type: "get",
        data: {},
        dataType: "json",
        success: function (data) {
            console.log(data);
            //一图一列的部分
            var jingqiubaokuan_bigPic = document.createElement("div");
            jingqiubaokuan_bigPic.className = "jingqiubaokuan_bigPic";
            baokuan1.appendChild(jingqiubaokuan_bigPic);
            //大标题下的一张图占一列的部分元素的生成
            for (var j = 0; j < data.niulanshandaT1.length; j++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.niulanshandaT1[j].huichangname;
                var img1 = document.createElement("img");
                img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.niulanshandaT1[j].huichangimg;
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_bigPic.appendChild(a);
            }
            //大标题的部分，例如金秋爆款
            var baokuans = document.createElement("div");
            baokuans.className = "baokuan";
            var pp = document.createElement("p");
            pp.innerHTML = "正宗佳酿 地道好酒";
            pp.style.fontSize = "52px";
            pp.style.color = "white";
            pp.style.position = "relative";
            pp.style.top = "-20px";
            baokuans.appendChild(pp);
            baokuan1.appendChild(baokuans);

            //四图一列的部分
            var jingqiubaokuan_ssPic = document.createElement("div");
            jingqiubaokuan_ssPic.className = "jingqiubaokuan_ssPic";
            baokuan1.appendChild(jingqiubaokuan_ssPic);
            for (var n = 0; n < data.niulanshanWines1.length; n++) {
                var a2 = document.createElement("a");
                a2.href = "###";
                var span2 = document.createElement("span");
                span2.className = "jieshao";
                span2.innerHTML = data.niulanshanWines1[n].wineDegree + "°" + data.niulanshanWines1[n].wineName + data.niulanshanWines1[n].wineLiter;
                var span3 = document.createElement("span");
                span3.className = "adText";
                span3.innerHTML = data.niulanshanWines1[n].wineEvalution;
                var span4 = document.createElement("span");
                span4.className = "price";
                span4.innerHTML = "<b style='font-size:12px'>￥</b>" + data.niulanshanWines1[n].winePrice;

                var span5 = document.createElement("span");
                span5.className = "goumaiPic";
                var img3 = document.createElement("img");
                img3.src = "<%=basePath%>/resource/views/img/huichang/" + data.niulanshanWines1[n].wineImg1;
                a2.appendChild(span2);
                a2.appendChild(span3);
                a2.appendChild(span4);
                a2.appendChild(span5);
                a2.appendChild(img3);
                jingqiubaokuan_ssPic.appendChild(a2);
            }
        }
    });
</script>

</html>