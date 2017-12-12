<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
			int i=1;
		%>
		<meta charset="UTF-8">
		<title>BMS页面</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/Admin/bms_css/BMS.css"/>
	</head>
	<body>
		<div class="head">
			<div class="logo">BMS</div>
			<ul>
				<li>开店向导&nbsp;&nbsp;&nbsp;<span>|</span></li>
				<li>记事本&nbsp;&nbsp;&nbsp;<span>|</span></li>
				<li>刷新&nbsp;&nbsp;&nbsp;<span>|</span></li>
				<li>个人设置&nbsp;&nbsp;&nbsp;<span>|</span></li>
				<li>管理员留言&nbsp;&nbsp;&nbsp;<span>|</span></li>
				<li>查看网店&nbsp;&nbsp;&nbsp;<span>|</span></li>
				<li>帮助&nbsp;&nbsp;&nbsp;<span>|</span></li>
				<li>关于BMS</li>
			</ul>
		</div>
		<div class="head_nav">
			<ul>
				<li>起始页</li>
				<li>设置导航栏</li>
				<li>商品列表</li>
				<li>订单列表</li>
				<li>用户评论</li>
				<li>会员列表</li>
				<li>商店设置</li>
				<li>移动版</li>
				<li>服务市场</li>
			</ul>
		</div>
		<div class="menu">
			<div class="menu_nav">
				<p class="p">功能</p>
				<div class="man">
					<ul>
						<c:forEach items="${Afun}" var="item">
							<li class="bms">${item.funName}</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		
			<div class="menu_page">
				<!--轮播图-->
				<div class="swiper display">
					<table width="800" border="1" cellspacing="0" cellpadding="1">
						<tr style="height: 30px;">
							<td>编号</td>
							<td>图片列表</td>
							<td>删除</td>
						</tr>
						<c:forEach items="${Banner}" var="item" >
							<tr>
								<form action="<%=basePath%>/admin/delBanner.do" method="post">
									<td><%=i++%></td>
									<td class="pic"><img src="<%=basePath%>/${item.bannerSrc}" alt="" /></td>
									<td><button class="del">删除</button></td>
									<input type="hidden" value="${item.bannerSrc}" name="bannerSrc">
								</form>
							</tr>
						</c:forEach>
						<tr>
							<form action="<%=basePath%>/admin/addBanner.do" method="post">
								<td>添加图片</td>
								<td>图片路径<input type="text" name="bannerSrc"></td>
								<td><button>确认添加</button></td>
							</form>
						</tr>
					</table>
				</div>
				
				<!--楼层管理-->
				<div class="floor display">
					<table width="800" border="1" cellspacing="0" cellpadding="1">
						<tr style="height: 30px;">
							<td>楼层编号</td>
							<td>楼层描述</td>
							<td>增加</td>
							<td>删除</td>
							<td>修改</td>
						</tr>


						<tr>
							<td>1F</td>
							<td><input type="text" value="帮您选酒" /></td>
							<td><button class="add">增加</button></td>
							<td><button class="del">删除</button></td>
							<td><button class="change">修改</button></td>
						</tr>




					</table>
				</div>
				
				
				<!--订单查询-->
				<div class="order display">
					<table width="800" border="1" cellspacing="0" cellpadding="1">
						<tr style="height: 30px;">
							<td>订单编号</td>
							<td>用户名</td>
							<td>增加</td>
							<td>删除</td>
						</tr>
						<tr>
							<td>01</td>
							<td>未来可期</td>
							<td><button class="add">增加</button></td>
							<td><button class="del">删除</button></td>
						</tr>
					</table>
				</div>
				
				
				<!--评论管理-->
				<div class="pl display">
					<table width="800" border="1" cellspacing="0" cellpadding="1">
						<tr style="height: 30px;">
							<td>评论编号</td>
							<td>用户名</td>
							<td>评论内容</td>
							<td>增加</td>
							<td>删除</td>
							<td>修改</td>
						</tr>
						<tr>
							<td>01</td>
							<td>未来可期</td>
							<td><input type="text" value="白茶清欢无别事。" /></td>
							<td><button class="add">增加</button></td>
							<td><button class="del">删除</button></td>
							<td><button class="change">修改</button></td>
						</tr>
					</table>
				</div>
				
				
				<!--商品管理-->
				<div class="spgl display">
					<table width="800" border="1" cellspacing="0" cellpadding="1">
						<tr style="height: 30px;">
							<td>商品编号</td>
							<td>商品名</td>
							<td>商品价格</td>
							<td>商品图片</td>
							<td>商品分类</td>
							<td>商品品牌</td>
							<td>增加</td>
						</tr>
						<tr>
							<td>01</td>
							<td>未来可期</td>
							<td>88.00</td>
							<td><input type="text" placeholder="图片地址"/></td>
							<td><input type="text" /></td>
							<td><input type="text" /></td>
							<td><button class="add">增加</button></td>
						</tr>
					</table>
				</div>
				
				
				<!--品牌管理-->
				<div class="ppgl display">
					<table width="800" border="1" cellspacing="0" cellpadding="1">
						<tr style="height: 30px;">
							<td>品牌编号</td>
							<td>品牌logo</td>
							<td>增加</td>
							<td>删除</td>
						</tr>
						<tr>
							<td>01</td>
							<td class="pic"><img src="<%=basePath%>/resource/views/Admin/bms_img/9.jpg" alt="" /></td>
							<td><button class="add">增加</button></td>
							<td><button class="del">删除</button></td>
						</tr>
					</table>
				</div>
				
				
				
			</div>
		</div>
	</body>
	<script src="<%=basePath%>/resource/views/Admin/bms_html/jquery-3.2.1.min.js"></script>
	<script src="<%=basePath%>/resource/views/Admin/bms_js/bms_login.js"></script>
	<script>
		var addBanner = document.getElementsByClassName("add");
		for (var i=0;i<addBanner.length;i++){
		    addBanner[i].click(function () {
				$.ajax({
					method:"post",
					url:"addBanner.do",
					data:{
					    bannerSrc:
					},
					success:function (data) {

                    }
				})
            })
		}
	</script>
</html>
