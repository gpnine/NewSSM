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
    <title>精品推荐 , “酒”要抢先享</title>
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>/resource/views/zhongjiu-huichang/css/szz_jingpintuijian.css"/>
    <link rel="shortcut icon" href="<%=basePath%>/resource/views/zhongjiu-huichang/img/logo.png" type="image/x-icon">
</head>
<body>
<header></header>
<div class="pl_nav_slider"></div>
<div style="background-color: #f20a64">
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
                <div class="baokuan2">

                </div>
                <div class="baokuan3">

                </div>

            </div>
        </div>
        <div class="content_bottom">
            <div class="content_bottom_box">
                <h1>更多活动推荐</h1>
                <div class="more"></div>
            </div>
        </div>
    </div>
</div>
<!-- 底部 -->
<footer>
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
    var baokuan1 = document.getElementsByClassName("baokuan1")[0];
    var baokuan2 = document.getElementsByClassName("baokuan2")[0];
    var baokuan3 = document.getElementsByClassName("baokuan3")[0];
    var more = document.getElementsByClassName("more")[0];
    var maolianjie = document.querySelectorAll(".side_right a");
    /****************************************************/
    for (var j = 0; j < arr2.length; j++) {
        var a3 = document.createElement("a");
        a3.href = "###";
        var img55 = document.createElement("img");
        img55.src = arr2[j];
        a3.appendChild(img55);
        more.appendChild(a3);
    }

    /****************************************************************/
    var content_top = document.getElementById("content_top");
    var quan = document.getElementById("quan");
    var baokuan = document.getElementsByClassName("baokuan");
    maolianjie[4].onclick = function () {
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
    document.documentElement.onmousewheel = function () {
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
        url: "<%=basePath%>/huichang/jingping.do",
        type: "get",
        data: {},
        dataType: "json",
        success: function (data) {
            console.log(data);
            //大标题的部分，例如金秋爆款
            var baokuan = document.createElement("div");
            baokuan.id = "baokuan0";
            baokuan.className = "baokuan";
            var img = document.createElement("img");
            img.src = "<%=basePath%>/resource/views/img/huichang/" + data.jingpingloucen[0].huichangimg;
            baokuan.appendChild(img);
            baokuan1.appendChild(baokuan);

            var jingqiubaokuan_bigPic = document.createElement("div");
            jingqiubaokuan_bigPic.className = "jingqiubaokuan_bigPic";
            baokuan1.appendChild(jingqiubaokuan_bigPic);

            var jingqiubaokuan_midPic = document.createElement("div");
            jingqiubaokuan_midPic.className = "jingqiubaokuan_midPic";
            baokuan1.appendChild(jingqiubaokuan_midPic);

            //大标题下的一张图占一列的部分
            for (var j = 0; j < data.jingpingdaT1.length; j++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.jingpingdaT1[j].huichangname;
                var img1 = document.createElement("img");
                img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.jingpingdaT1[j].huichangimg;
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_bigPic.appendChild(a);
            }
            //俩图一列的部分
            for (var k = 0; k < data.jingpingShangping1.length; k++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.jingpingShangping1[k].huichangname;
                var img1 = document.createElement("img");
                img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.jingpingShangping1[k].huichangimg;
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_midPic.appendChild(a);
            }

            //第二部分
            //大标题的部分，例如金秋爆款
            var baokuans = document.createElement("div");
            baokuans.id = "baokuan1";
            baokuans.className = "baokuan";
            var img1 = document.createElement("img");
            img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.jingpingloucen[1].huichangimg;
            baokuans.appendChild(img1);
            baokuan1.appendChild(baokuans);

            var jingqiubaokuan_bigPic1 = document.createElement("div");
            jingqiubaokuan_bigPic1.className = "jingqiubaokuan_bigPic";
            baokuan1.appendChild(jingqiubaokuan_bigPic1);

            var jingqiubaokuan_midPic1 = document.createElement("div");
            jingqiubaokuan_midPic1.className = "jingqiubaokuan_midPic";
            baokuan1.appendChild(jingqiubaokuan_midPic1);

            //大标题下的一张图占一列的部分
            for (var j = 0; j < data.jingpingdaT2.length; j++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.jingpingdaT2[j].huichangname;
                var img1 = document.createElement("img");
                img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.jingpingdaT2[j].huichangimg;
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_bigPic1.appendChild(a);
            }
            //俩图一列的部分
            for (var k = 0; k < data.jingpingShangping2.length; k++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.jingpingShangping2[k].huichangname;
                var img1 = document.createElement("img");
                img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.jingpingShangping2[k].huichangimg;
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_midPic1.appendChild(a);
            }

            //第三部分
            //大标题的部分，例如金秋爆款
            var baokuanss = document.createElement("div");
            baokuanss.id = "baokuan2";
            baokuanss.className = "baokuan";
            var img1 = document.createElement("img");
            img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.jingpingloucen[2].huichangimg;
            baokuanss.appendChild(img1);
            baokuan1.appendChild(baokuanss);

            var jingqiubaokuan_bigPic2 = document.createElement("div");
            jingqiubaokuan_bigPic2.className = "jingqiubaokuan_bigPic";
            baokuan1.appendChild(jingqiubaokuan_bigPic2);

            var jingqiubaokuan_midPic2 = document.createElement("div");
            jingqiubaokuan_midPic2.className = "jingqiubaokuan_midPic";
            baokuan1.appendChild(jingqiubaokuan_midPic2);

            //大标题下的一张图占一列的部分
            for (var j = 0; j < data.jingpingdaT3.length; j++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.jingpingdaT3[j].huichangname;
                var img1 = document.createElement("img");
                img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.jingpingdaT3[j].huichangimg;
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_bigPic2.appendChild(a);
            }
            //俩图一列的部分
            for (var k = 0; k < data.jingpingShangping3.length; k++) {
                var a = document.createElement("a");
                a.href = "###";
                var span = document.createElement("span");
                span.className = "price";
                span.innerHTML = data.jingpingShangping3[k].huichangname;
                var img1 = document.createElement("img");
                img1.src = "<%=basePath%>/resource/views/img/huichang/" + data.jingpingShangping3[k].huichangimg;
                a.appendChild(span);
                a.appendChild(img1);
                jingqiubaokuan_midPic2.appendChild(a);
            }

        }
    });
</script>

</html>