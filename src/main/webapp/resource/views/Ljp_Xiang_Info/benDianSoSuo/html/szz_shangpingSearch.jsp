<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>详情页里面的搜索</title>
		<link rel="stylesheet" type="text/css" href="../css/szz_shangpingSearch.css"/>
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
	</head>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
	%>

	<body>
		<div class="up_search clearfix">
			<div class="zjlogo">
				<img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/Site/logo.png" />
			</div>
			<div class="up_search_right">
				<div>
					<span>中酒自营</span><br/>
					<img src="http://wpa.qq.com/pa?p=2:3060023943:52" />
				</div>
				<div>
					<ul>
						<li>
							<span>描述</span><br/>
							<span>5.00</span>
						</li>
						<li>
							<span>物流</span><br/>
							<span>5.00</span>
						</li>
						<li>
							<span>服务</span><br/>
							<span>5.00</span>
						</li>
						<li class="ha">
							<span class="shouji">
								<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/benDianSoSuo/img/phone.png"/>
								<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/benDianSoSuo/img/er.png"/>
							</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="search_input">
				<select name="">
					<option value="商品">商品</option>
					<option value="店铺">店铺</option>
				</select>
				<input type="text"  placeholder="西风"/>
				<span class="sousuo">搜索</span>
			</div>
		</div>
		<a href="###"><div class="lafei"></div></a>
		<div class="nav_list">
			<div class="nav">
				<ul>
					<li><a href="">首页</a></li>
					<li><a href="">白酒专场</a></li>
					<li><a href="">红洋专场</a></li>
					<li><a href="">超值礼盒</a></li>
					<li><a href="">整箱购</a></li>
					<li><a href="">婚宴用酒</a></li>
				</ul>
				<div class="sousuo2">
					<input type="text" name="" id="" value="" placeholder="搜索" />
					<span class="glyphicon glyphicon-search"></span>
				</div>
			</div>
		</div>
		<div class="list">
			<div class="list_top">
				<span id="products">茅台</span>找到<span id="amount"> 17</span>件相关商品
			</div>
			<ul class="clearfix">
			</ul>
		</div>
	</body>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/szz_shangpingSearch.js"></script>
	<script>
        var products = document.getElementById("products");
        var amount = document.getElementById("amount");

        $.ajax({
            url: "<%=basePath%>/wine/find.do?wineName=${wineName}",
            type: "get",
            data: {},
            async: true,
            dataType: "json",
            success: function(data) {
                console.log(data);
                for(var i = 0; i < data.length; i++) {
                    $("<li><a><img src='<%=basePath%>/resource/views/img/"+data[i].wineImg1+"'/><i class='wineId'>"+data[i].wid+"</i><h5>"+data[i].wineDegree+"°"+data[i].wineName+data[i].wineLiter+"</h5><p class='price'>￥"+data[i].winePrice+"</p><p>已售<span class='shuliang'>"+data[i].wineSales+"</span>件</p></a></li>").appendTo($(".list ul"));

                }
                products.innerHTML = "${wineName}";
                amount.innerHTML = data.length;
            }
        });
	</script>
</html>