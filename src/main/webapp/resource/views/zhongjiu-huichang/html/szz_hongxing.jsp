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
    <title>中酒网-红星品牌专场</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/zhongjiu-huichang/css/szz_hongxing.css"/>
    <link rel="shortcut icon" href="<%=basePath%>/resource/views/zhongjiu-huichang/img/logo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/zhongjiu-huichang/css/szz_headAndFoot.css"/>
</head>
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
        <a href="###" style="margin-top: 15px;"><img src="<%=basePath%>/resource/views/zhongjiu-huichang/img/bj_side.png" alt=""/></a>
        <span style="color: white;">扫描下载App</span>
        <a href="#content_top" style="font-size: 18px;">TOP</a>
    </div>
    <!--<div class="side_right">
        <a href="###"></a>
        <a href="###"></a>
        <a href="###"></a>
        <a href="###"></a>
        <a href="###"></a>
    </div>-->
    <div class="wrap1">
        <div class="content_top" id="content_top"></div>
        <div class="content_middle">
            <div class="lingquan" id="quan"></div>
            <div class="quan"></div>
            <div class="baokuan1">

            </div>
            <div class="baokuan2">

            </div>
            <div class="baokuan3">

            </div>

        </div>
        <div class="jiuchangwenhua">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_16.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_17.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_18.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_19.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_20.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_21.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_22.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_23.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_24.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_25.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_26.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_27.jpg">
            <img src="http://img5.zhongjiu.cn/pro/hongx16/hongx_28.jpg">
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
<footer style="margin-top: 6130px;">
</footer>
</body>

<!--<script "></script>-->
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
    console.log(arr2.length);
    var baokuan1 = document.getElementsByClassName("baokuan1")[0];
    var baokuan2 = document.getElementsByClassName("baokuan2")[0];
    var baokuan3 = document.getElementsByClassName("baokuan3")[0];
    var more = document.getElementsByClassName("more")[0];

    var content_top = document.getElementById("content_top");
    console.log(content_top.id);
    var quan = document.getElementById("quan");
    var baokuan = document.getElementsByClassName("baokuan");
    console.log(baokuan);
    var content = document.getElementsByClassName("content")[0];
    var side_left = document.getElementsByClassName("side_left")[0];

    document.documentElement.onmousewheel = function () {
        console.log(this.scrollTop);
        if (this.scrollTop > 200) {
            side_left.style.display = "block";
        } else {
            side_left.style.display = "none";
        }
    }

    //请求发送，上述的“/************/”包裹着的部分是要后台传数据进行渲染的！！！！
    $.ajax({
        url: "<%=basePath%>/huichang/hongxing.do",
        type: "get",
        data: {},
        async: true,
        dataType: "json",
        success: function (data) {
            console.log(data);

            var jingqiubaokuan_bigPic1 = document.createElement("div");
            jingqiubaokuan_bigPic1.className = "jingqiubaokuan_bigPic";
            baokuan1.appendChild(jingqiubaokuan_bigPic1);
            //大标题下的一张图占一列的部分
            for (var j = 0; j < data.hongxingdaT1.length; j++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.hongxingdaT1[j].huichangname;
                var img1 = document.createElement("img");
                img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.hongxingdaT1[j].huichangimg;
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_bigPic1.appendChild(a);
            }

            //dier
            var baokuans = document.createElement("div");
            baokuans.id = "baokuan0";
            baokuans.className = "baokuan";
            console.log(baokuans);
            var img = document.createElement("img");
            img.src = "http://img5.zhongjiu.cn/pro/hongx16/hongx_8.jpg";
            console.log(img.src);
            baokuans.appendChild(img);
            baokuan2.appendChild(baokuans);

            var jingqiubaokuan_smallPic2 = document.createElement("div");
            jingqiubaokuan_smallPic2.className = "jingqiubaokuan_smallPic";
            baokuan2.appendChild(jingqiubaokuan_smallPic2);

            //仨图一列的部分
            for (var n = 0; n < data.hongShangping1.length; n++) {
                var a2 = document.createElement("a");
                a2.href = "###";
                var span4 = document.createElement("span");
                span4.className = "price";
                span4.innerHTML = data.hongShangping1[n].huichangname;
                var img3 = document.createElement("img");
                img3.src = "<%=basePath%>/resource/views/img/huichang/" + data.hongShangping1[n].huichangimg;
                a2.appendChild(span4);
                a2.appendChild(img3);
                jingqiubaokuan_smallPic2.appendChild(a2);
            }

            //disan
            var baokuanss = document.createElement("div");
            baokuanss.id = "baokuan2";
            console.log(baokuanss);
            baokuanss.className = "baokuan";
            var img222 = document.createElement("img");
            img222.src = "http://img5.zhongjiu.cn/pro/hongx16/hongx_15.jpg";
            console.log(img222.src);
            baokuanss.appendChild(img222);
            baokuan3.appendChild(baokuanss);

            var jingqiubaokuan_smallPic3 = document.createElement("div");
            jingqiubaokuan_smallPic3.className = "jingqiubaokuan_smallPic";
            baokuan3.appendChild(jingqiubaokuan_smallPic3);

            var jingqiubaokuan_ssPic3 = document.createElement("div");
            jingqiubaokuan_ssPic3.className = "jingqiubaokuan_ssPic";
            baokuan3.appendChild(jingqiubaokuan_ssPic3);


            //三图占一列的部分
            for (var m = 0; m < data.hongxingWines1.length - 4; m++) {

                var a1 = document.createElement("a");
                a1.href = "###";
                var span11 = document.createElement("span");
                span11.className = "price";
                span11.innerHTML = "<b style='font-size:12px'>￥</b>" + data.hongxingWines1[m].winePrice;
                var span22 = document.createElement("span");
                span22.className = "jieshao";
                span22.innerHTML = data.hongxingWines1[m].wineDegree + "°" + data.hongxingWines1[m].wineName + data.hongxingWines1[m].wineLiter;
                console.log(span22.innerHTML);
                var span33 = document.createElement("span");
                span33.className = "adText";
                span33.innerHTML = data.hongxingWines1[m].wineEvalution;
                var span44 = document.createElement("span");
                span44.className = "goumaiPic";
                var img2 = document.createElement("img");
                img2.src = "<%=basePath%>/resource/views/img/huichang/" + data.hongxingWines1[m].wineImg1;
                a1.appendChild(span11);
                a1.appendChild(span22);
                a1.appendChild(span33);
                a1.appendChild(span44);
                a1.appendChild(img2);
                jingqiubaokuan_smallPic3.appendChild(a1);
            }

            //四图一列的部分
            for (var n = data.hongxingWines1.length - 4; n < data.hongxingWines1.length; n++) {
                var a2 = document.createElement("a");
                a2.href = "###";
                var span2 = document.createElement("span");
                span2.className = "jieshao";
                span2.innerHTML = data.hongxingWines1[n].wineDegree + "°" + data.hongxingWines1[n].wineName + data.hongxingWines1[n].wineLiter;
                var span3 = document.createElement("span");
                span3.className = "adText";
                span3.innerHTML = data.hongxingWines1[n].wineEvalution;
                var span4 = document.createElement("span");
                span4.className = "price";
                span4.innerHTML = "<b style='font-size:12px'>￥</b>" + data.hongxingWines1[n].winePrice;

                var span5 = document.createElement("span");
                span5.className = "goumaiPic";
                var img3 = document.createElement("img");
                img3.src = "<%=basePath%>/resource/views/img/huichang/" + data.hongxingWines1[n].wineImg1;
                a2.appendChild(span2);
                a2.appendChild(span3);
                a2.appendChild(span4);
                a2.appendChild(span5);
                a2.appendChild(img3);
                jingqiubaokuan_ssPic3.appendChild(a2);
            }

            for (var j = 0; j < arr2.length; j++) {
                var a3 = document.createElement("a");
                a3.href = "###";
                var img55 = document.createElement("img");
                img55.src = arr2[j];
                a3.appendChild(img55);
                more.appendChild(a3);
            }
        }
    });
</script>
</html>