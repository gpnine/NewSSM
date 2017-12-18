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
    <title>订单支付</title>
    <link rel="shortcut icon" href="<%=basePath%>/resource/views/zhifu/img/logo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/zhifu/css/lkl_zhifu.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/zhifu/css/lkl_base.css"/>
    <title></title>
</head>
<body>
<div id="tops">

</div>
<div class="content">
    <div class="jindu pr">
        <a class="pa jindu_pa_a" href="<%=basePath%>/resource/views/html/lkl_index.jsp"><img
                src="<%=basePath%>/resource/views/zhifu/img/download.png"/></a>
        <div class="pa jindu_pa_img">
            <img class="" src="<%=basePath%>/resource/views/zhifu/img/step1.png"/>
            <div class="progress_zhifu">
                <span class="step_1">选择支付方式</span>
                <span class="step_2">确认支付</span>
                <span class="step_3">支付结果信息</span>
            </div>
        </div>
    </div>
    <div class="dingdanhao">
        <p style="color: #8E9DA5;">订单提交成功，请您尽快付款！</p>
        <p>
            <span class="dingdanhaos">订单号：2017120818648052</span><span
                style="display: inline-block;height:20px;border-left:1px solid gray;"></span>
            <span>应付金额:</span>
            <span class="totalprice" style="color:red;"></span>
            <span>元</span>
        </p>
        <p style="color:#D2E6F5">请您在提交订单后24小时内完成支付，否则订单会自动取消。</p>
    </div>
    <div class="zhanghuyue">
        <div style="color:#688EB4;padding: 0 0 10px 0">使用预付款支付</div>
        <div class="clearfix">
            <input type="radio" name="fangshi" id="a" value=""/><label for="a">当前账户可用余额 <span>0</span>元</label>
            <button class="chongzhizx">去充值</button>
        </div>
    </div>
    <div class="zhifufangshi">
        <div style="color:#688EB4;">请选择支付方式</div>
        <div>
            <input style="vertical-align: middle;" type="radio" name="fangshi" id="b" value=""/>
            <label for="b">
                <img style="vertical-align: middle;" src="<%=basePath%>/resource/views/zhifu/img/zf_logo.gif"/>
            </label>
            <input style="vertical-align: middle;" type="radio" name="fangshi" id="c" value=""/>
            <label for="c">
                <img style="vertical-align: middle;" src="<%=basePath%>/resource/views/zhifu/img/wx_logo.png"/>
            </label>

        </div>
    </div>
    <div style="top:10px;position: relative;">
        <a href="<%=basePath%>/resource/views/zhifu/html/querenzhifu.jsp">
            <button class="xiayibu">下一步</button>
        </a>
    </div>
</div>
<div id="ss">
    <div class="ss_box">
        <div class="ss_box_top">
            <div class="ss_box_top_left">登录平台支付</div>
            <div class="ss_box_top_right">×</div>
        </div>
        <div class="ss_box_bottom">
            <div class="ss_po">已支付</div>
            <div class="ss_box_bottom_left">
                <button class="ss_box_bottom_left_btn">支付</button>
            </div>
            <div class="ss_box_bottom_right">
                <button class="ss_box_bottom_right_btn">取消</button>
            </div>
        </div>
    </div>
</div>
</body>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
    $.ajax({
        url: "<%=basePath%>/orders/findAllMoney.do",
        type: "get",
        async: true,
        data: {
            orderId:${orderId1}
        },
        success: function (data) {
            $(".totalprice").html(data)
        }
    });
    //		$("#tops").load("header.html");
    var data = new Date();
    console.log(data);
    var getyear = data.getFullYear();
    console.log(getyear);
    var mon = data.getMonth() + 1;
    var getUTCDate = data.getUTCDate();

    var ran = parseInt(Math.random() * 80000000 + 10000000);
    console.log(ran);
    var hao = getyear + "" + mon + getUTCDate + ran
    console.log(hao);
    $(".dingdanhaos").html("订单号：" + hao);
</script>
</html>
