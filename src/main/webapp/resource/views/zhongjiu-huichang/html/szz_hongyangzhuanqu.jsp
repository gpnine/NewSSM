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
    <title>红洋分会场-中酒网</title>
    <link rel="shortcut icon" href="<%=basePath%>/resource/views/zhongjiu-huichang/img/logo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>/resource/views/zhongjiu-huichang/css/szz_hongyangzhuanqu.css"/>
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
    <div class="side_right">
        <a href="###"></a>
        <a href="###"></a>
        <a href="###"></a>
        <a href="###"></a>
        <a href="###"></a>
        <a href="###"></a>
    </div>
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
            <div class="baokuan4">

            </div>

        </div>
    </div>
    <div class="content_bottom">
        <div class="content_bottom_box">
            <h1>更多活动推荐</h1>
            <div class="more">

            </div>
        </div>
    </div>
</div>
<!-- 底部 -->
<footer style="margin-top: 8570px;">
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
    console.log(arr2.length);
    var baokuan1 = document.getElementsByClassName("baokuan1")[0];
    var baokuan2 = document.getElementsByClassName("baokuan2")[0];
    var baokuan3 = document.getElementsByClassName("baokuan3")[0];
    var baokuan4 = document.getElementsByClassName("baokuan4")[0];
    var more = document.getElementsByClassName("more")[0];
    var maolianjie = document.querySelectorAll(".side_right a");
    var content_top = document.getElementById("content_top");
    console.log(content_top.id);
    var quan = document.getElementById("quan");
    var baokuan = document.getElementsByClassName("baokuan");
    console.log(baokuan);
    maolianjie[5].onclick = function () {
        this.href = "#" + content_top.id;
    }
    maolianjie[0].onclick = function () {
        this.href = "#" + quan.id;
    }
    for (var g = 1; g < maolianjie.length - 1; g++) {
        maolianjie[g].index = g;
        maolianjie[g].onclick = function () {
            console.log(this.index);
            //	 	baokuan[this.index-1].style.transition = "1s";
            this.href = "#baokuan" + [this.index - 1];
        }
    }
    var content = document.getElementsByClassName("content")[0];
    var side_left = document.getElementsByClassName("side_left")[0];
    var side_right = document.getElementsByClassName("side_right")[0];
    console.log(content.scrollTop);
    document.documentElement.onmousewheel = function () {
        console.log(this.scrollTop);
        if (this.scrollTop > 200) {
            side_left.style.display = "block";
            side_right.style.display = "block";
        } else {
            side_left.style.display = "none";
            side_right.style.display = "none";
        }
    }

    //请求发送，上述的“/************/”包裹着的部分是要后台传数据进行渲染的！！！！
    $.ajax({
        url: "<%=basePath%>/huichang/hongyang.do",
        type: "get",
        data: {},
        async: true,
        dataType: "json",
        success: function (data) {
            //大标题的部分，例如金秋爆款
            var baokuan = document.createElement("div");
            baokuan.id = "baokuan0";
            console.log(baokuan);
            baokuan.className = "baokuan";
            var img = document.createElement("img");
            img.src = "<%=basePath%>/resource/views/img/huichang/hy_9_7.jpg";
            console.log(img.src);
            baokuan.appendChild(img);
            baokuan1.appendChild(baokuan);

            var jingqiubaokuan_bigPic1 = document.createElement("div");
            jingqiubaokuan_bigPic1.className = "jingqiubaokuan_bigPic";
            baokuan1.appendChild(jingqiubaokuan_bigPic1);

            var jingqiubaokuan_midPic1 = document.createElement("div");
            jingqiubaokuan_midPic1.className = "jingqiubaokuan_midPic";
            baokuan1.appendChild(jingqiubaokuan_midPic1);

            var jingqiubaokuan_ssPic1 = document.createElement("div");
            jingqiubaokuan_ssPic1.className = "jingqiubaokuan_ssPic";
            baokuan1.appendChild(jingqiubaokuan_ssPic1);
            //大标题下的一张图占一列的部分
            for (var j = 0; j < data.hongyangdaT1.length; j++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.hongyangdaT1[j].huichangname;
                var img1 = document.createElement("img");
                img1.src = "http://img5.zhongjiu.cn/pro/hy_9/hy_9_8.jpg";
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_bigPic1.appendChild(a);
            }
            //俩图一列的部分
            for (var k = 0; k < data.hongyangShangping1.length; k++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.hongyangShangping1[k].huichangname;
                var img1 = document.createElement("img");
                img1.src = "http://img5.zhongjiu.cn/pro/hy_9/hy_9_9.jpg";
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_midPic1.appendChild(a);
            }

            //四图一列的部分
            for (var n = 0; n < data.hongyangWines.length; n++) {
                var a2 = document.createElement("a");
                a2.href = "###";
                var span2 = document.createElement("span");
                span2.className = "jieshao";
                span2.innerHTML = data.hongyangWines[n].wineDegree + "°" + data.hongyangWines[n].wineName + data.hongyangWines[n].wineLiter;
                var span3 = document.createElement("span");
                span3.className = "adText";
                span3.innerHTML = data.hongyangWines[n].wineEvalution;
                var span4 = document.createElement("span");
                span4.className = "price";
                span4.innerHTML = "<b style='font-size:12px'>￥</b>" + data.hongyangWines[n].winePrice;

                var span5 = document.createElement("span");
                span5.className = "goumaiPic";
                var img3 = document.createElement("img");
                img3.src = "<%=basePath%>/resource/views/img/huichang/" + data.hongyangWines[n].wineImg1;
                a2.appendChild(span2);
                a2.appendChild(span3);
                a2.appendChild(span4);
                a2.appendChild(span5);
                a2.appendChild(img3);
                jingqiubaokuan_ssPic1.appendChild(a2);
            }

            //dier
            var baokuans = document.createElement("div");
            baokuans.id = "baokuan1";
            console.log(baokuans);
            baokuans.className = "baokuan";
            var img = document.createElement("img");
            img.src = "<%=basePath%>/resource/views/img/huichang/hy_9_13.jpg";
            console.log(img.src);
            baokuans.appendChild(img);
            baokuan2.appendChild(baokuans);

            var jingqiubaokuan_bigPic2 = document.createElement("div");
            jingqiubaokuan_bigPic2.className = "jingqiubaokuan_bigPic";
            baokuan2.appendChild(jingqiubaokuan_bigPic2);

            var jingqiubaokuan_midPic2 = document.createElement("div");
            jingqiubaokuan_midPic2.className = "jingqiubaokuan_midPic";
            baokuan2.appendChild(jingqiubaokuan_midPic2);

            var jingqiubaokuan_ssPic2 = document.createElement("div");
            jingqiubaokuan_ssPic2.className = "jingqiubaokuan_ssPic";
            baokuan2.appendChild(jingqiubaokuan_ssPic2);
            //大标题下的一张图占一列的部分
            for (var j = 0; j < data.hongyangdaT2.length; j++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.hongyangdaT2[j].huichangname;
                var img1 = document.createElement("img");
                img1.src = "http://img5.zhongjiu.cn/pro/hy_9/hy_9_14.jpg";
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_bigPic2.appendChild(a);
            }
            //俩图一列的部分
            for (var k = 0; k < data.hongyangShangping2.length; k++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.hongyangShangping2[k].huichangname;
                var img1 = document.createElement("img");
                img1.src = "http://img5.zhongjiu.cn/pro/hy_9/hy_9_17.jpg";
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_midPic2.appendChild(a);
            }

            //四图一列的部分
            for (var n = 0; n < data.hongyangWines2.length; n++) {
                var a2 = document.createElement("a");
                a2.href = "###";
                var span2 = document.createElement("span");
                span2.className = "jieshao";
                span2.innerHTML = data.hongyangWines2[n].wineDegree + "°" + data.hongyangWines2[n].wineName + data.hongyangWines2[n].wineLiter;
                var span3 = document.createElement("span");
                span3.className = "adText";
                span3.innerHTML = data.hongyangWines2[n].wineEvalution;
                var span4 = document.createElement("span");
                span4.className = "price";
                span4.innerHTML = "<b style='font-size:12px'>￥</b>" + data.hongyangWines2[n].winePrice;

                var span5 = document.createElement("span");
                span5.className = "goumaiPic";
                var img3 = document.createElement("img");
                img3.src = "<%=basePath%>/resource/views/img/huichang/" + data.hongyangWines2[n].wineImg1;
                a2.appendChild(span2);
                a2.appendChild(span3);
                a2.appendChild(span4);
                a2.appendChild(span5);
                a2.appendChild(img3);
                jingqiubaokuan_ssPic2.appendChild(a2);
            }

            //disan
            var baokuanss = document.createElement("div");
            baokuanss.id = "baokuan2";
            console.log(baokuanss);
            baokuanss.className = "baokuan";
            var img = document.createElement("img");
            img.src = "<%=basePath%>/resource/views/img/huichang/hy_9_19.jpg";
            console.log(img.src);
            baokuanss.appendChild(img);
            baokuan3.appendChild(baokuanss);

            var jingqiubaokuan_bigPic3 = document.createElement("div");
            jingqiubaokuan_bigPic3.className = "jingqiubaokuan_bigPic";
            baokuan3.appendChild(jingqiubaokuan_bigPic3);

            var jingqiubaokuan_midPic3 = document.createElement("div");
            jingqiubaokuan_midPic3.className = "jingqiubaokuan_midPic";
            baokuan3.appendChild(jingqiubaokuan_midPic3);

            var jingqiubaokuan_ssPic3 = document.createElement("div");
            jingqiubaokuan_ssPic3.className = "jingqiubaokuan_ssPic";
            baokuan3.appendChild(jingqiubaokuan_ssPic3);
            //大标题下的一张图占一列的部分
            for (var j = 0; j < data.hongyangdaT3.length; j++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.hongyangdaT3[j].huichangname;
                var img1 = document.createElement("img");
                img1.src = "http://img5.zhongjiu.cn/pro/hy_9/hy_9_20.jpg";
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_bigPic3.appendChild(a);
            }
            //俩图一列的部分
            for (var k = 0; k < data.hongyangShangping3.length; k++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.hongyangShangping3[k].huichangname;
                var img1 = document.createElement("img");
                img1.src = "http://img5.zhongjiu.cn/pro/hy_9/hy_9_21.jpg";
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_midPic3.appendChild(a);
            }

            //四图一列的部分
            for (var n = 0; n < data.hongyangWines3.length; n++) {
                var a2 = document.createElement("a");
                a2.href = "###";
                var span2 = document.createElement("span");
                span2.className = "jieshao";
                span2.innerHTML = data.hongyangWines3[n].wineDegree + "°" + data.hongyangWines3[n].wineName + data.hongyangWines3[n].wineLiter;
                var span3 = document.createElement("span");
                span3.className = "adText";
                span3.innerHTML = data.hongyangWines3[n].wineEvalution;
                var span4 = document.createElement("span");
                span4.className = "price";
                span4.innerHTML = "<b style='font-size:12px'>￥</b>" + data.hongyangWines3[n].winePrice;

                var span5 = document.createElement("span");
                span5.className = "goumaiPic";
                var img3 = document.createElement("img");
                img3.src = "<%=basePath%>/resource/views/img/huichang/" + data.hongyangWines3[n].wineImg1;
                a2.appendChild(span2);
                a2.appendChild(span3);
                a2.appendChild(span4);
                a2.appendChild(span5);
                a2.appendChild(img3);
                jingqiubaokuan_ssPic3.appendChild(a2);
            }

            //第四部分

            var baokuansss = document.createElement("div");
            baokuansss.id = "baokuan3";
            console.log(baokuansss);
            baokuansss.className = "baokuan";
            var img = document.createElement("img");
            img.src = "<%=basePath%>/resource/views/img/huichang/hy_9_23.jpg";
            console.log(img.src);
            baokuansss.appendChild(img);
            baokuan3.appendChild(baokuansss);

            var jingqiubaokuan_bigPic4 = document.createElement("div");
            jingqiubaokuan_bigPic4.className = "jingqiubaokuan_bigPic";
            baokuan3.appendChild(jingqiubaokuan_bigPic4);

            var jingqiubaokuan_midPic4 = document.createElement("div");
            jingqiubaokuan_midPic4.className = "jingqiubaokuan_midPic";
            baokuan3.appendChild(jingqiubaokuan_midPic4);

            var jingqiubaokuan_ssPic4 = document.createElement("div");
            jingqiubaokuan_ssPic4.className = "jingqiubaokuan_ssPic";
            baokuan3.appendChild(jingqiubaokuan_ssPic4);
            //大标题下的一张图占一列的部分
            for (var j = 0; j < data.hongyangdaT4.length; j++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.hongyangdaT4[j].huichangname;
                var img1 = document.createElement("img");
                img1.src = "http://img5.zhongjiu.cn/pro/hy_9/hy_9_20.jpg";
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_bigPic4.appendChild(a);
            }
            //俩图一列的部分
            for (var k = 0; k < data.hongyangShangping4.length; k++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.hongyangShangping4[k].huichangname;
                var img1 = document.createElement("img");
                img1.src = "http://img5.zhongjiu.cn/pro/hy_9/hy_9_21.jpg";
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_midPic4.appendChild(a);
            }

            //四图一列的部分
            for (var n = 0; n < data.hongyangWines4.length; n++) {
                var a2 = document.createElement("a");
                a2.href = "###";
                var span2 = document.createElement("span");
                span2.className = "jieshao";
                span2.innerHTML = data.hongyangWines4[n].wineDegree + "°" + data.hongyangWines4[n].wineName + data.hongyangWines4[n].wineLiter;
                var span3 = document.createElement("span");
                span3.className = "adText";
                span3.innerHTML = data.hongyangWines4[n].wineEvalution;
                var span4 = document.createElement("span");
                span4.className = "price";
                span4.innerHTML = "<b style='font-size:12px'>￥</b>" + data.hongyangWines4[n].winePrice;

                var span5 = document.createElement("span");
                span5.className = "goumaiPic";
                var img3 = document.createElement("img");
                img3.src = "<%=basePath%>/resource/views/img/huichang/" + data.hongyangWines4[n].wineImg1;
                a2.appendChild(span2);
                a2.appendChild(span3);
                a2.appendChild(span4);
                a2.appendChild(span5);
                a2.appendChild(img3);
                jingqiubaokuan_ssPic4.appendChild(a2);
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
