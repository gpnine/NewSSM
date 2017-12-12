<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../bms_css/bms_login.css"/>
		<title>bms_login</title>
		
	</head>
	<body>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
	%>
		<div class="login_wrap">
			<div class="part_one">
				<div class="dl">
					<div class="write">
						<div class="head">登录</div>
						<form class="submit" action="<%=basePath%>/admin/adminLogin.do" method="post">
							用户民：<input class="user" type="text" placeholder="请输入用户名" name="userPhone"/><br />
							密&nbsp;&nbsp;&nbsp;码：<input type="password" class="pwd" placeholder="请输入密码" name="password"/><br />
							<input type="submit" class="sub" value="登 录"/>
						</form>
					</div>
				</div>
				<div class="yqzh">
					<div class="mid">
						<div class="info">其他登录方式</div>
						<div class="img">yunqi</div>
						<div class="yq">云起账户</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script src="jquery-3.2.1.min.js"></script>
	<script src="../bms_js/bms_login.js"></script>
</html>
