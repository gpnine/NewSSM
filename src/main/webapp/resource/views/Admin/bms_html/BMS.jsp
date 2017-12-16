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
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/Admin/bms_css/02.Ljp_Personal_Index.css"/>
		<style>
			ul.pagination {
				display: inline-block;
				padding: 0;
				margin: 0;
			}

			ul.pagination li {display: inline;border: 1px}

			ul.pagination li a {
				color: black;
				float: left;
				padding: 8px 16px;
				text-decoration: none;
				border: 1px solid black;
			}
			 li>a:hover{
				 background-color: gray;
			 }

		</style>
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
						<li class="bms"><a href="<%=basePath%>/resource/views/Admin/bms_html/bms_login.jsp">退出</a></li>
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
								<form action="<%=basePath%>/admin/delBanner.do" method="post" >
									<td><%=i++%></td>
									<td class="pic"><img src="<%=basePath%>/${item.bannerSrc}" alt="" /></td>
									<td><button class="del">删除</button></td>
									<input type="hidden" value="${item.bannerSrc}" name="bannerSrc">
								</form>
							</tr>
						</c:forEach>
						<tr>
							<form action="<%=basePath%>/admin/addBanner.do" method="post" enctype="multipart/form-data">
								<td>添加图片</td>
								<td style="text-align: center">
									<img id="preview" style="width:388px;height: 100px"/><br>
									<input type="file" name="myFile" onchange="imgPreview(this)"/><br>
									图片名称<input type="text" name="bannerSrc">
								</td>
								<td><button>确认添加</button></td>
							</form>
						</tr>
					</table>
				</div>




				<!--添加新商品-->
				<div class="ppgl display">
					<p class="spgl_name">
						<span class="span1">添加新商品</span>
						<span class="span2">
							<span class="ad hah">+  商品列表</span>
						</span>
					</p>

					<div class="tyxx">
						<ul>
							<li>通用信息</li>
							<li>详细描述</li>
							<li>其他信息</li>
							<li>商品属性</li>
							<li>商品相册</li>
							<li>关联商品</li>
							<li>配件</li>
							<li>关联文章</li>
						</ul>

						<div class="content_info">
							<form action="insertGoods.do" method="post" enctype="multipart/form-data">

								<table border="0" cellspacing="" cellpadding="">
									<tr>
										<td>商品名称：</td>
										<td><input type="text" name="WineName"/></td>
									</tr>
									<tr>
										<td>商品货号：</td>
										<td><input type="text" name="WineBianhao"/></td>
									</tr>
									<tr>
										<td>商品库存：</td>
										<td><input type="text" name="WineSales"/></td>
									</tr>
									<tr>
										<td>商品分类：</td>
										<td>
											<select name="">
												<option value="">请选择…</option>
												<option value="">电器</option>
												<option value="">酒品</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>商品品牌：</td>
										<td>
											<select name="">
												<option value="">请选择…</option>
												<option value="">vdsfcx</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>本店售价：</td>
										<td><input type="text" value="0" name="WinePrice"/></td>
									</tr>
									<tr>
										<td>会员价格：</td>
										<td><input type="text" /></td>
									</tr>
									<tr>
										<td>市场售价：</td>
										<td><input type="text" /></td>
									</tr>
									<tr>
										<td>商品图片：</td>
										<td style="text-align: center">
											<input type="file" name="imgFile"/><br>
										</td>
									</tr>
								</table>

								<div class="btnn">
									<input class="sure" type="submit" value="确定"/>
									<input class="resize" type="button" value="重置"/>
								</div>
							</form>

						</div>
					</div>
				</div>




				
				<!--订单查询-->
				<div class="order display">
					<div class="table_box1 table_box">
						<table width="1018" border="0" cellspacing="0" cellpadding="10">
							<tr class="table_name1 table_name">
								<th class="ddxx" style="    width: 440px;">订单信息</th>
								<th class="djsl" style="    width: 180px;">单价 数量</th>
								<th class="czsp" style="    width: 147px;">操作商品</th>
								<th class="ddsf" style="width: 123px;">订单实付</th>
								<th class="cz" style="width: 123px;">操作</th>
							</tr>
						</table>
					</div>
					<table class="table2 table_1" width="1018" border="0" cellspacing="0" cellpadding="10">
						<tbody>
						<c:forEach items="${orders}" var="item">
								<tr class="ding_name ding_name_1">
									<td style="width: 120px;text-indent:50px;" colspan="2" class="date_ding">${item.getUserPhone()}</td>
									<td style="width: 320px;text-indent:60px;" colspan="5" class="ding_from">
										<a href="">中酒自营</a>
									</td>
								</tr>
								<tr class="display_show">
									<td style="width: 371px;height: 152px;" colspan="2">
										<div class="ding_pic">
											<a href="<%=basePath%>/wine/goods.do?wid=${item.wine.getWId()}">
												<img src="<%=basePath%>/resource/views/img/${item.wine.getWineImg1()}">
											</a><br>
											<img src="<%=basePath%>/resource/views/Admin/bms_img/shan.png">
										</div>
										<p><a>${item.wine.getWineName()}</a></p>
									</td>
									<td class="size">
										<span class="ding_pri">￥${item.wine.getWinePrice()}</span>&nbsp;&nbsp;&nbsp;*&nbsp;&nbsp;&nbsp;<span class="ding_amount">1</span>
									</td>
									<td class="size" colspan="2">条形码：${item.wine.getWineBianhao()}</td>
									<td class="size amount_money">￥${item.wine.getWinePrice()}<span></span></td>
									<td class="size look_info">
										<span><a href="<%=basePath%>/wine/goods.do?wid=${item.wine.getWId()}">商品详情</a></span>
									</td>
								</tr>
						</c:forEach>

						</tbody>
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
					<p class="spgl_name">
						<span class="span1">商品管理</span>
						<span class="span2">
							<span class="kk">快速录入商品</span>
							<span class="ad">添加新商品</span>
						</span>
					</p>
					<div class="sear">
						<select name="">
							<option value="">所有分类</option>
							<option value="">电器</option>
							<option value="">酒品</option>
						</select>

						<select name="">
							<option value="">所有品牌</option>
							<option value="">fgsgds</option>
						</select>

						<select name="">
							<option value="">全部</option>
							<option value="">全部推荐</option>
						</select>

						<select name="">
							<option value="">全部</option>
							<option value="">上架</option>
							<option value="">下架</option>
						</select>
						关键字：<input type="text" />
						<button>搜索</button>
					</div>
					<table width="1000" border="1" cellspacing="0" cellpadding="1">
						<tr>
							<td><input class="sele_All" type="checkbox" /> 编号</td>
							<td>商品名称</td>
							<td>货号</td>
							<td>价格</td>
							<td>库存</td>
							<td>操作</td>
						</tr>
					</table>

						<c:forEach items="${wines}" var="item">
					<div class="kao1">
					<table width="1000" border="1" cellspacing="0" cellpadding="1">

							<tr>
								<td width="202px"><input class="sele_one" type="checkbox" />${item.getWId()}</td>
								<td style="width: 257px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">${item.getWineName()}</td>
								<td style="width:131px;">${item.getWineBianhao()}</td>
								<td style="width:132px;">${item.getWinePrice()}</td>
								<td style="width:132px;">${item.getWineEvaCount()}</td>
								<td class="xgsc" style="width:132px;">
									<span>
										<a href="goodsDetile.do?&id=${item.getWId()}"><img src="<%=basePath%>/resource/views/Admin/bms_img/icon_view.gif"></a>
									</span>|
									<span>
										<a href="#"><img src="<%=basePath%>/resource/views/Admin/bms_img/icon_edit.gif"></a>
									</span>|
									<span>
										<a href="goodsAdd.do?&id=${item.getWId()}"><img src="<%=basePath%>/resource/views/Admin/bms_img/icon_copy.gif"></a>
									</span>|
									<span>
										<a href="goodsDelete.do?&id=${item.getWId()}"><img src="<%=basePath%>/resource/views/Admin/bms_img/icon_trash.gif"></a>
									</span>
								</td>
							</tr>
					</table>
					</div>
						</c:forEach>

					<ul class="pagination" style="margin-left: 220px;">
						<li><a  onclick="fun11()">«</a></li>
						<li><a class="active" onclick="fun22()">1</a></li>
						<li><a class="active" onclick="fun22()">2</a></li>
						<li><a class="active" onclick="fun22()">3</a></li>
						<li><a class="active" onclick="fun22()">4</a></li>
						<li><a class="active" onclick="fun22()">5</a></li>
						<li><a class="active" onclick="fun22()">6</a></li>
						<li><a class="active" onclick="fun22()">7</a></li>
						<li><a class="active" onclick="fun22()">8</a></li>
						<li><a class="active" onclick="fun22()">9</a></li>
						<li><a onclick="fun22()">»</a></li>
					</ul>
				</div>





				
				<!--品牌管理-->
				<div class="ppgl display">
					<table width="800" border="1" cellspacing="0" cellpadding="1">
						<tr style="height: 30px;">
							<td>品牌编号</td>
							<td>品牌名称</td>
							<td>品牌logo</td>
							<td>删除</td>
						</tr>
					</table>
					<c:forEach items="${shops}" var="item">
						<div class="kao">
							<table width="800" border="1" cellspacing="0" cellpadding="1">
								<tr>
									<td style="width: 225px">${item.shopId}</td>
									<td style="width: 225px">${item.shopName}</td>
									<td class="pic" style="width: 225px"><img src="<%=basePath%>/resource/views/img/${item.shopImg}" alt="" style="width: 225px"/></td>

									<td><button class="del"><a href="deleteLogo.do?logoId=${item.shopId}">删除</a></button></td>
								</tr>
							</table>
						</div>
					</c:forEach>


						<ul class="pagination" style="margin-left: 220px;">
							<li><a href="#" onclick="fun1()">«</a></li>
							<li><a href="#" onclick="fun2()">1</a></li>
							<li><a class="active" href="#" onclick="fun2()">2</a></li>
							<li><a href="#" onclick="fun2()">3</a></li>
							<li><a href="#" onclick="fun2()">4</a></li>
							<li><a href="#" onclick="fun2()">5</a></li>
							<li><a href="#" onclick="fun2()">6</a></li>
							<li><a href="#" onclick="fun2()">7</a></li>
							<li><a href="#" onclick="fun2()">»</a></li>
						</ul>

	</body>
	<script src="<%=basePath%>/resource/views/Admin/bms_html/jquery-3.2.1.min.js"></script>
	<script src="<%=basePath%>/resource/views/Admin/bms_js/bms_login.js"></script>
	<script>
        var kao =document.getElementsByClassName("kao");
        for(var i=3;i<kao.length;i++){
            kao[i].style.display="none";
        }
        var m=0;


        function fun1(){
            for(var i=0;i<kao.length;i++){
                kao[i].style.display="none";
            }
			m=m-3;
			if(m-3<0){
			    m=0;
			}
                kao[m].style.display="block";
                kao[m+1].style.display="block";
                kao[m+2].style.display="block";
                console.log(m);
        }
        function fun2(){
            for(var i=0;i<kao.length;i++){
                kao[i].style.display="none";
            }
            if(m+3>kao.length){
                m=kao.length-3;
            }
            m=m+3;
            kao[m+2].style.display="block";
            kao[m+1].style.display="block";
            kao[m].style.display="block";
            console.log(m);
        }






        var kao1 =document.getElementsByClassName("kao1");
        for(var i=8;i<kao1.length;i++){
            kao1[i].style.display="none";
        }
        var k=0;


        function fun11(){
            for(var i=0;i<kao1.length;i++){
                kao1[i].style.display="none";
            }
            m=m-8;
            if(m-8<0){
                m=0;
            }
            kao1[m].style.display="block";
            kao1[m+1].style.display="block";
            kao1[m+2].style.display="block";
            kao1[m+3].style.display="block";
            kao1[m+4].style.display="block";
            kao1[m+5].style.display="block";
            kao1[m+6].style.display="block";
            kao1[m+7].style.display="block";
            console.log(m);
        }
        function fun22(){
            for(var i=0;i<kao1.length;i++){
                kao1[i].style.display="none";
            }
            if(m+8>kao1.length){
                m=kao1.length-8;
            }
            m=m+8;
            kao1[m].style.display="block";
            kao1[m+1].style.display="block";
            kao1[m+2].style.display="block";
            kao1[m+3].style.display="block";
            kao1[m+4].style.display="block";
            kao1[m+5].style.display="block";
            kao1[m+6].style.display="block";
            kao1[m+7].style.display="block";
            console.log(m);
        }






        function imgPreview(fileDom){
            //判断是否支持FileReader
            if (window.FileReader) {
                var reader = new FileReader();
            } else {
                alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
            }

            //获取文件
            var file = fileDom.files[0];
            var imageType = /^image\//;
            //是否是图片
            if (!imageType.test(file.type)) {
                alert("请选择图片！");
                return;
            }
            //读取完成
            reader.onload = function(e) {
                //获取图片dom
                var img = document.getElementById("preview");
                //图片路径设置为读取的图片
                img.src = e.target.result;
            };
            reader.readAsDataURL(file);
        }

	</script>
</html>
