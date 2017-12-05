<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/01.Ljp_Personal_Index.css"/>
		<link rel="stylesheet" type="text/css" href="../css/02.Ljp_Personal_Index.css"/>
		<title>162.Ljp_Personal_Index-修改密码</title>
	</head>

	<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"	+request.getServerPort()+path;
	%>


	<body>
		<!--红色的横杠-->
		<div class="per_line"></div>
		<!--个人中心-->
		<div id="per_container">
			<!--左边部分-->
			<div id="per_left"></div>
			
			
			<!--右边部分-->
			<div id="rig_order">
				<div class="g_word">
					<span>-</span>&nbsp;&nbsp;&nbsp;
					<span>提现支付密码设置</span>
				</div>
				
				<div class="set_up1">
					<form action="<%=basePath%>/user/updatePassword.do" method="post">
												<input type="hidden" name="userPhone" value="${user1.userPhone}"/>
						&nbsp;&nbsp;&nbsp;旧密码：<input type="password" name="password"/><span>6-20位字符，可使用字母、数字或符号的组合</span>
						<br />
						&nbsp;&nbsp;&nbsp;新密码：<input type="password" name="newPassword"/>
						<br />
						重复密码：<input type="password" />
						<br />
						<button>提交</button>
					</form>
				</div>
				
				
				
				<br /><br /><hr />
				
				
				
				
				
			</div>
		</div>
	</body>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="../js/01.Ljp_Personal_Index.js"></script>
</html>
