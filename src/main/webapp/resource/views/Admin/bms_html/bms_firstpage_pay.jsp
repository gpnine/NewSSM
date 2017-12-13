<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
			int i=1;
		%>
		<meta charset="UTF-8">
		<title>BMS首页的立即购买</title>
		<link rel="stylesheet" href="<%=basePath%>/resource/views/Admin/bms_css/bms_firstpage_pay.css" />
	</head>
	<body>
		<div class="one">
			<div class="text">BMS</div>
			<div class="head">
				<ul>
					<li>首页</li>
					<li>电器</li>
					<li>酒品</li>
				</ul>
			</div>
			<div class="search">
				<input type="text" /><button>搜索</button>
			</div>
		</div>
		
		<div class="body">
			<div class="nav">
				当前位置：
				<span>首页</span> >
				<span>商品</span> >
				<span>${goods.getWineName()}</span>
			</div>
			<div class="cont">
				<div class="wrap">
					<div style="float: left;width: 150px;height: 150px"><img style="width: 150px;height: 150px" src="<%=basePath%>/resource/views/img/${goods.getWineImg1()}" ></div>
					<p class="name">${goods.getWineBianhao()}</p>
					<ul class="ul1">
						<li style="display: inline-block">商品货号：<span>${goods.getWineName()}</span></li>
						<li style="display: inline-block">商品库存：<span>${goods.getWineCount()}</span></li>
						<li style="display: inline-block">商品品牌：<span><a href="" style="color: #1B6ACE;text-decoration: underline;">${goods.getWineCompany()}</a></span></li>
						<li style="display: inline-block">商品重量：<span>${goods.getWineLiter()}</span></li>
						<li style="display: inline-block">上架时间：<span>2017-12-08</span></li>
						<li style="display: inline-block">商品参数：<span>${goods.getWineDegree()}</span>％°</li>
						<li style="display: inline-block">累计销量：<span>${goods.getWineSales()}</span></li>
						<li style="display: inline-block">市场价格：<span style="text-decoration: line-through;color: #989998;">￥${goods.getWinePrice()}元</span></li>
						<li style="display: inline-block">本店售价：<span style="color: #A42053;font-weight: bolder;">￥${goods.getWinePrice()-20}元</span></li>
						<li style="display: inline-block">商品描述：<span style="color: #A42053;font-weight: bolder;">${goods.getWineShiyong()}元</span></li>
						<li style="display: inline-block">购买数量：<input style="width: 50px;" type="text" /></li>
						<li style="display: inline-block">购买此商品可使用：<span style="color: #A42053;font-size: 12px;">0积分</span></li>
					</ul>
				</div>
				
				<div class="bom">
					<div class="btn">立即购买</div>
					<div class="cz">
						<span>收藏</span>
						<span>分享</span>
					</div>
				</div>
			</div>
			
		</div>
	</body>
	<script src="<%=basePath%>/resource/views/Admin/bms_html/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		
	</script>
</html>
