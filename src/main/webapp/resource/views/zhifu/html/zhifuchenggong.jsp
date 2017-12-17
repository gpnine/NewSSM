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
    <title>支付成功</title>
    <link rel="shortcut icon" href="<%=basePath%>/resource/views/zhifu/img/logo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/zhifu/css/zhifuchenggong.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/zhifu/css/lkl_base.css"/>
    <title></title>
</head>
<body>
<div id="tops">

</div>
<div class="content">
    <div class="jindu pr">
        <a class="pa jindu_pa_a" href="<%=basePath%>/resource/views/html/lkl_index.jsp"><img src="<%=basePath%>/resource/views/zhifu/img/download.png"/></a>
        <div class="pa jindu_pa_img">
            <img class="" src="<%=basePath%>/resource/views/zhifu/img/step3.png"/>
            <div class="progress_zhifu">
                <span class="step_1">选择支付方式</span>
                <span class="step_2">确认支付</span>
                <span class="step_3">支付结果信息</span>
            </div>
        </div>
    </div>
</div>
<div class="weixin">
    <div class="weixin_box">
        <div class="zhifu">支付成功 你还可以选购以下商品</div>
        <ol class="tuijian clearfix">

        </ol>
    </div>

</div>
</body>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
    $("#tops").load("<%=basePath%>/resource/views/zhifu/html/header.jsp");
    $.ajax({
        type: "get",
        url: "<%=basePath%>/wine/rexiao.do",
        async: true,
        success: function (data) {
//		43°红星蓝瓶八年陈酿 500ml （12瓶装）
            for (i in data) {
                $("<li class='fl shangpintuijian_list'><a class=' pr shangpintuijian_list_a' href='<%=basePath%>/wine/goods.do?wid="
                    + data[i].wid + "'>"
                    + "<img class='mypic' src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "' style='height:182px;margin:0 auto' />"
                    + "<div class='pa shangpintuijian_list_a_hover'>去购买&gt;</div></a><div class=''><a href=''>"
                    + "<p class='shangpintuijian_list_p'>" + data[i].wineDegree + "°" + data[i].wineName
                    + " " + data[i].wineLiter + data[i].winePrice + "一件" + "</p></a></div></li>").appendTo($(".tuijian"))
            }

        }
    });
</script>
</html>
