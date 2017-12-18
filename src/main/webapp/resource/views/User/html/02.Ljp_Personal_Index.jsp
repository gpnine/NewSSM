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
    <link rel="stylesheet" type="text/css" href="../css/01.Ljp_Personal_Index.css"/>
    <link rel="stylesheet" type="text/css" href="../css/02.Ljp_Personal_Index.css"/>
    <title>02.Ljp_Personal_Index-我的订单</title>
</head>
<body>
<header></header>
<!--个人中心-->
<div id="per_container">
    <!--左边部分-->
    <div id="per_left"></div>
    <!--右边部分-->
    <div id="rig_order">
        <div class="g_word">
            <span>-</span>&nbsp;&nbsp;&nbsp;
            <span>我的订单</span>
        </div>

        <!--发送查询订单请求-->
        <form action="regAll.php" method="post">
            <div id="thr_input">
                关键字：<input name="keyword" type="text" placeholder="商品名称、订单编号"/>

                <!-- 用于输入不含时区的日期 -->
                开始日期：<input name="begin_date" type="date">
                结束日期：<input name="end_date" type="date"/>
                <!--<button>搜索</button>-->
                <input type="submit" name="btn" class="button" value="搜索"/>
            </div>

        </form>
        <div class="table_box1 table_box">
            <table width="1018" border="0" cellspacing="0" cellpadding="10">
                <tr class="table_name1 table_name">
                    <th class="ddxx" style="    width: 440px;">订单信息</th>
                    <th class="djsl" style="    width: 180px;">单价 数量</th>
                    <th class="czsp" style="    width: 147px;">操作商品</th>
                    <th class="ddsf" style="width: 123px;">订单实付</th>
                    <th class="cz" style="width: 123px;">操作</th>
                </tr>
                <!--<tr>
                    <td class="no_have1 no_have" colspan="6">暂时没有任何订单信息！</td>
                </tr>-->
            </table>
        </div>
    </div>
</div>
<!-- 底部 -->
<footer styke="margin-top: 150px;">
</footer>
</body>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="../js/01.Ljp_Personal_Index.js"></script>
<script>
    //加载头部
    $("header").load("<%=basePath%>/resource/views/zhongjiu-huichang/html/header.jsp");
    // 加载尾部
    $("footer").load("<%=basePath%>/resource/views/zhongjiu-huichang/html/footer.jsp");
    //我的订单
    $.ajax({
        type: "get",
        url: "<%=basePath%>/orders/findOrders.do?userPhone=18395592587",
        data: {},
        dataType: "json",
        async: true,
        success: function (data) {
            console.log(data);
            var countss = 0;
            for (var i = 0; i < data.length; i++) {
                var data1 = new Date();
                var getyear = data1.getFullYear();
                var mon = data1.getMonth() + 1;
                var getUTCDate = data1.getUTCDate();
                var ran = parseInt(Math.random() * 80000000 + 10000000);
                var hao = getyear + "" + mon + getUTCDate + ran
//			$(".date_ding").html("订单号：" + hao);
                //订单头尾
                console.log(data[i].orderAndWines)
                $('<table class="table2 table_' + (i + 1) + '" width="1018" border="0" cellspacing="0" cellpadding="10"><tr class="ding_name ding_name_' + (i + 1) + '"><td style="width: 120px;text-indent:50px;" colspan="2" class="date_ding">订单编号：' + hao + '</td><td style="width: 320px;text-indent:60px;" colspan="5" class="ding_from"><a href="">中酒自营</a></td></tr><tr style="width: 1018px;height: 30px;background-color: #EFF2F5;text-align: right;" class="bottom_part"><td colspan="7"><span class="amount_goods_num' + i + '" style="color: red;"></span>件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />总计(不含运费)：￥<span class="amount_money_a">' + data[i].orderAllMoney + '</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table>').appendTo($(".table_box1"));
                //订单详情
                var data1 = data[i].orderAndWines;
                console.log(data1);
                for (var j = 0; j < data1.length; j++) {
//				console.log(data1[j].wine.wineName);
                    var jiu_true = data1[j].wine;
                    console.log(jiu_true.wineName);
                    console.log("酒的id：" + jiu_true.wid);
                    countss += data1[j].wine_count;
                    $(".ding_name_" + (i + 1) + "").after($('<tr class="display_show"><td style="width: 371px;height: 152px;" colspan="2"><div class="ding_pic"><a href="<%=basePath%>/wine/goods.do?wid=' + jiu_true.wid + '"><img src="<%=basePath%>/resource/views/img/' + jiu_true.wineImg1 + '"/></a><br /><img src="<%=basePath%>/resource/views/img/ljp_52.jpg"/></div><p><a href="<%=basePath%>/wine/goods.do?wid=' + jiu_true.wid + '">' + jiu_true.wineDegree + '°' + jiu_true.wineName + ' ' + jiu_true.wineLiter + '（两瓶装）</a></p></td><td class="size"><span class="ding_pri">￥' + jiu_true.winePrice + '</span>&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;<span class="ding_amount">' + data1[j].wine_count + '</span></td><td class="size" colspan="2">条形码：' + jiu_true.wineBianhao + '</td><td class="size amount_money">￥<span>' + (jiu_true.winePrice * data1[j].wine_count) + '</span></td><td class="size look_info"><span>已完成</span><br /><span><a href="">查看详情</a></span></td></tr>'));
                }
                console.log(countss)
                $(".amount_goods_num" + i).html(countss)
                countss = 0;
            }
        }
    })
</script>
</html>
