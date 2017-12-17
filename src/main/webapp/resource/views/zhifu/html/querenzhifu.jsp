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
		<title>确定支付</title>
		<link rel="shortcut icon" href="<%=basePath%>/resource/views/zhifu/img/logo.png" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/zhifu/css/querenzhifu.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/zhifu/css/lkl_base.css" />
		<title></title>
	</head>
	<body>
		<div id="tops">
			
		</div>
		<div class="content">
			<div class="jindu pr">
				<a class="pa jindu_pa_a" href="<%=basePath%>/resource/views/html/lkl_index.jsp"><img src="<%=basePath%>/resource/views/zhifu/img/download.png" /></a>
				<div class="pa jindu_pa_img">
					<img class="" src="<%=basePath%>/resource/views/zhifu/img/step2.jpg" />
					<div class="progress_zhifu">
						<span class="step_1">选择支付方式</span>
						<span class="step_2">确认支付</span>
						<span class="step_3" >支付结果信息</span>
					</div>					
				</div>			
			</div>		
		</div>
		<div class="weixin">
			<div class="weixin_box">
				<div class="zhifu">微信扫码支付</div>
				<div class="weixin_box_float">
					<div class="weixin_box_erweima">
						<img class="weixin_box_erweima_img" src="<%=basePath%>/resource/views/zhifu/img/171215093744253127.jpg"/>
						<div class="weixin_box_erweima_red">
							<img src="<%=basePath%>/resource/views/zhifu/img/icon-red.png"/>
							<div class="weixin_box_erweima_red_text">
								<p>请使用微信扫码支付扫一扫</p>
								<p>扫描二维码支付</p>
							</div>
						</div>
					</div>
					<div class="weixin_box_ipone">
						<img class="" src="<%=basePath%>/resource/views/zhifu/img/phone-bg.png"/>
					</div>
					
				</div>
			</div>
			<div class="divs">
				<a href="<%=basePath%>/resource/views/zhifu/html/zhifuchenggong.jsp"><div class="xiayibus">下一步</div></a>
			</div>
		</div>
	</body>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript">	
		$("#tops").load("<%=basePath%>/resource/views/zhifu/html/header.jsp");
        $(".xiayibus").click(function () {
            $.ajax({
                url: "<%=basePath%>/orders/ShifouZhifu.do",
                type: "get",
                async: true,
                data: {
                    userPhone: ${user1.userPhone}
                },
                success: function (data) {
                }
            });
            $.ajax({
                url: "<%=basePath%>/orders/clearCar.do",
                type: "get",
                async: true,
                data: {
                    userPhone: ${user1.userPhone}
                },
                success: function (data) {
                    <%--if (data) {--%>
                        <%--window.location.href = '<%=basePath%>/resource/views/zhifu/html/lkl_zhifu.jsp';--%>
                    <%--}--%>
                }
            });
        })
	</script>
</html>
