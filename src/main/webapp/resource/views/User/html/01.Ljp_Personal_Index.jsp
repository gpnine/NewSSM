<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/01.Ljp_Personal_Index.css"/>
		<title>01.Ljp_Personal_Index-个人中心</title>
	</head>
	<body>

	<%
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"	+request.getServerPort()+path;
	%>


	<!--红色的横杠-->
		<div class="per_line"></div>
	<!--个人中心主页面容器-->
		<div id="per_container">
			<!--左边部分-->
			<div id="per_left"></div>
			
			<!--右边部分-->
			<!--右头部-->
			<div id="rigHead">
				<div class="rigHead_h1">
					<div class="h1_part1">
						<img class="h1_tx" src="../img/ljp_2.png"/>
						<div class="h1_xx">
							<p class="h1_info1">${user1.userPhone}<span class="pthy">(普通会员)</span></p>
							<p class="h1_zhaq"><a href="16.Ljp_Personal_Index.html">账户安全：<span class="aqd"><span class="h1_span"></span></span>&nbsp;&nbsp;&nbsp;中</p></a>
							<p class="h1_thr">
								<a href="15.Ljp_Personal_Index.jsp"><img class="h1_phone" src="../img/ljp_3.png"/></a>
								<span class="h1_fg">|</span>
								<a href="151.Ljp_Personal_Index.html"><img class="h1_email" src="../img/ljp_4.png"/></a>
							</p>
						</div>
						
						<ul class="h1_part2">
							<a href="02.Ljp_Personal_Index.html">
								<li class="h1_dfk dcl">
									<img class="dfk1" src="../img/ljp_5.png"/>
									<div class="dfk2">待付款 <span>0</span></div>
								</li>
							</a>
							<a href="02.Ljp_Personal_Index.html">
								<li class="h1_dfh dcl">
									<img class="dfh1" src="../img/ljp_6.png"/>
									<div class="dfh2">待发货 <span>0</span></div>
								</li>
							</a>
							<a href="02.Ljp_Personal_Index.html">
								<li class="h1_dsh dcl">
									<img class="dsh1" src="../img/ljp_7.png"/>
									<div class="dsh2">待收货 <span>0</span></div>
								</li>
							</a>
							<a href="02.Ljp_Personal_Index.html">
								<li class="h1_dpj dcl">
									<img class="dpj1" src="../img/ljp_8.png"/>
									<div class="dpj2">待评价 <span>0</span></div>
								</li>
							</a>
							<a href="12.Ljp_Personal_Index.html">
								<li class="h1_dsh dcl">
									<img class="dsh1" src="../img/ljp_9.png"/>
									<div class="dsh2">待售后 <span>0</span></div>
								</li>
							</a>
							<a href="011.Ljp_Personal_Index.html">
								<li class="h1_xxdd dcl">
									<img class="xxdd1" src="../img/ljp_10.png"/>
									<div class="xxdd2">线下订单 <span>0</span></div>
								</li>
							</a>
						</ul>
					</div>
				</div>
				<div class="rigHead_h2">
					<div class="jf h2_jf">
						<div class="h2_it">
							<a href="07.Ljp_Personal_Index.jsp">
								<img class="h2_img1" src="../img/ljp_11.png" alt="" />
								<span class="h2_text1">积分</span>
								<p>${user1.userMask}</p>
							</a>
						</div>
					</div>
					<div class="jf h2_ye">
						<a href="08.Ljp_Personal_Index.jsp">
							<img class="h2_img2" src="../img/ljp_12.png" alt="" />
							<span class="h2_text2">余额/充值</span>
							<p>${user1.money}</p>
						</a>
					</div>
					<div class="jf h2_hb">
						<a href="08.Ljp_Personal_Index.jsp">
							<img class="h2_img3" src="../img/ljp_13.png" alt="" />
							<span class="h2_text3">红包</span>
							<p>0元</p>
						</a>
					</div>
					<div class="jf h2_yh">
						<a href="05.Ljp_Personal_Index.html">
							<img class="h2_img4" src="../img/ljp_15.png" alt="" />
							<span class="h2_text4">优惠券</span>
							<p>0</p>
						</a>
					</div>
					<div class="jf h2_hy">
						<a href="06.Ljp_Personal_Index.html">
							<img class="h2_img5" src="../img/ljp_15.png" alt="" />
							<span class="h2_text5">会员卡</span>
							<p>0</p>
						</a>
					</div>
				</div>
			</div>
			
			
			<!--右商品推荐-->
			<div id="rig_goods">
				<h4><a href="">商品推荐</a></h4>
				<ul class="goods_ul">

				<c:forEach items="${wineList2}" var="item">
					<div class='box'><div class='mother'>
						<li class='goods_li'><img class='goods_img' src='<%=basePath%>/resource/views/img/${item.getWineImg1()}'/>
							<li class='goods_hover'>
								<a class='xfWord' href=''>去购买 ></a>
							</li>
						</li>
					</div>
					<p class='jiu_kind'><a href=''>${item.getWineName()}</a></p></div>
				</c:forEach>


				</ul>
			</div>
			
			<!--右浏览记录-->
			<div id="rig_recode">
				<div class="rec_head">
					<span class="rec_gg1">——</span><div class="rec_hea">浏览记录</div><span class="rec_gg2">——</span>
					<c:forEach items="${wineList}" var="item">
							<li class='rec_li'>
								<a href=''><img src="<%=basePath%>/resource/views/img/${item.getWineImg1()}" /></a>
								<a>
									<span class='jiu_name' style="display: inline-block;height:20px;overflow: hidden;  ">
										<c:out value="${item.getWineName()}"></c:out>
									</span>
								</a>
							</li>
					</c:forEach>
				</div>
			</div>
			
			
			<!--收藏的商品-->
			<div id="save_goods">
				<div class="goods1">
					<a href="09.Ljp_Personal_Index.html"><span class="goods_word1">收藏的商品</span></a>
					<a href="09.Ljp_Personal_Index.html"><span class="goods_word2">更多>></span></a>
				</div>
				<div class="goods_word3">您还未收藏任何商品哦！</div>
			</div>
			
			
			<!--收藏的店铺-->
			<div id="save_store">
				<div class="store1">
					<a href="10.Ljp_Personal_Index.html"><span class="store_word1">收藏的店铺</span></a>
					<a href="10.Ljp_Personal_Index.html"><span class="store_word2">更多>></span></a>
				</div>
				<div class="store_word3">您还未收藏任何店铺哦！</div>
			</div>
			
		</div>
	</body>
	<script src="jquery-3.2.1.min.js"></script>
	<script src="../js/01.Ljp_Personal_Index.js"></script>
</html>
