<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"	+request.getServerPort()+path;
	%>
		<meta charset="UTF-8">
		<title>登录页</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/szz_login.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/szz_base.css"/>
	</head>
	<body>
		<div id="logo">
			<a href=""><img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/logo.jpg" height="60"/></a>
			<b>欢迎登录</b>
		</div>
		<div id="login">
			<img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/Site/pcloginpic.png" height="400"/>
			<div id="login_right">
				<div class="login_right_top">
					<div>
						<a  class="sao">扫码登录</a>
						<a  class="zhanghu">账户登录</a>
					</div>
					<div class="erweima">
						<div class="ma">
							<img src="http://zhongjiu.cn/login/GetQR?t=131565072957237278"/>
						</div>
						<div class="code_bottom">
							<span>打开<a href="" style="color: red;">中酒网App</a></span><span>扫描二维码</span>
						</div>
						<img src="http://zhongjiu.cn/Areas/Web/Images/sao_2.png"/>
					</div>
					<div class="hu">
						<form action="<%=basePath%>/user/login.do" method="post">
							<div class="zhanghudenglu">公共场所不建议自动登录，以防账号丢失</div>
							<input type="text" name="userPhone" id="username" value="" placeholder="用户名"/>
							<input type="password" name="password" id="password" value="" placeholder="密码"/>
							<input type="checkbox" name="" id="checkbox" value="" width="20"/>
							<label for="checkbox">自动登录</label>
							<a href="###">忘记密码</a>
							<button class="login_in">登录</button>
						</form>
					</div>
					<div class="login_right_bottom">
						<div>
							<a href="###"><img src="<%=basePath%>/resource/views/img/qq.png" height="22px" width="20"/></a>
							<a href="###">QQ</a>
						</div>
						<div>
							<a href="###"><img src="<%=basePath%>/resource/views/img/weibo.png"/></a>
							<a href="###">微博</a>
						</div>
						<div>
							<a href="###"><img src="<%=basePath%>/resource/views/img/weixin.png"/></a>
							<a href="###">微信</a>
						</div>
						<div style="border: none;text-align: center;">
							<a href="<%=basePath%>/resource/views/html/szz_register.jsp" style="color: red;">立即注册</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="banquan">Copyright © 2017   中酒网 版权所有</div>
	</body>
	<script src="<%=basePath%>/resource/views/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/resource/views/js/szz_login.js"></script>
</html>
