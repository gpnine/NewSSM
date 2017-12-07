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
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/03.Ljp_info.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/iconfont.css"/>
		<title>01.商品详情页</title>
	</head>
	<body>
		<!--显示框-->
		<div class="null"></div>
		<div id="head_part">
			<div class="red_line"></div>
			<div class="main_box">
				<!--上方的题目-->
				<div class="main_name">
					<span><a href="">全部</a></span>
					>
					<span><a href="">葡萄酒</a></span>
					>
					<span><a href="">拉菲</a></span>
					>
					<span><a href="">拉菲珍藏波尔多 750ml（2瓶装）</a></span>
				</div>
				
				<!--下方左图部分-->
				<div class="main_left">
					<div class="left_bigpic">
						<div class="move">
							<img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/4211/1.png" alt="" class="bigpic" />
							<!--放大镜-->
							<div class="wrap"></div>
						</div>
						
						<div class="changePic">
							<img class="change_pic" src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/4211/1.png" alt="" />
						</div>
						
						
					</div>
					<ul class="left_smallpic">
						<li class="leftPic1 leftPic"><a href=""><img src="<%=basePath%>/resource/views/img/ljp_24.jpg" alt="" class="smallpic1 smallpic" /></a></li>
						<li class="leftPic2 leftPic"><a href=""><img src="<%=basePath%>/resource/views/img/ljp_25.jpg" alt="" class="smallpic2 smallpic" /></a></li>
						<li class="leftPic3 leftPic"><a href=""><img src="<%=basePath%>/resource/views/img/ljp_26.jpg" alt="" class="smallpic3 smallpic" /></a></li>
						<li class="leftPic4 leftPic"><a href=""><img src="<%=basePath%>/resource/views/img/ljp_27.jpg" alt="" class="smallpic4 smallpic" /></a></li>
						<li class="leftPic5 leftPic"><a href=""><img src="<%=basePath%>/resource/views/img/ljp_28.jpg" alt="" class="smallpic5 smallpic" /></a></li>
					</ul>
				</div>
				
				<div class="save_share">
					<span class="save">
						<img src="<%=basePath%>/resource/views/img/ljp_35.png" alt="" />
						收藏商品
					</span>
					
					<span class="share">
						分享到：
						<a href="http://service.weibo.com/share/share.php?url=http%3A%2F%2Fwww.zhongjiu.cn%2Fproductdetail%2F4211.htm&type=icon&language=zh_cn&title=%E6%8B%89%E8%8F%B2%E7%8F%8D%E8%97%8F%E6%B3%A2%E5%B0%94%E5%A4%9A%20750ml%EF%BC%882%E7%93%B6%E8%A3%85%EF%BC%89&pic=http%3A%2F%2Fimg6.zhongjiu.cn%2Fresourceb2b2c%2FStorage%2FShop%2F1%2FProducts%2F4211%2F1_350.png&searchPic=true&style=simple#_loginLayer_1512389931438"><img src="../img/ljp_21.png" alt="" /></a>
						<a href="https://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fwww.zhongjiu.cn%2Fproductdetail%2F4211.htm%23none&title=%E6%8B%89%E8%8F%B2%E7%8F%8D%E8%97%8F%E6%B3%A2%E5%B0%94%E5%A4%9A+750ml%EF%BC%882%E7%93%B6%E8%A3%85%EF%BC%89__%E8%91%A1%E8%90%84%E9%85%92_%E3%80%90%E4%BB%B7%E6%A0%BC+%E5%9B%BE%E7%89%87+%E8%AF%84%E4%BB%B7+%E8%AF%84%E8%AE%BA%E3%80%91_%E4%B8%AD%E9%85%92%E7%BD%91&pics=http%3A%2F%2Fimg6.zhongjiu.cn%2Fresourceb2b2c%2FStorage%2FShop%2F1%2FProducts%2F4211%2FDetails%2F7cf09234894f4bb0a9e1f964ab753550.jpg&summary=%E4%B8%AD%E9%85%92%E7%BD%91%E6%8F%90%E4%BE%9B%E6%8B%89%E8%8F%B2%E7%8F%8D%E8%97%8F%E6%B3%A2%E5%B0%94%E5%A4%9A750ml%EF%BC%882%E7%93%B6%E8%A3%85%EF%BC%89%E4%BB%A5%E5%8F%8A%E6%8B%89%E8%8F%B2%E7%8F%8D%E8%97%8F%E6%B3%A2%E5%B0%94%E5%A4%9A750ml%EF%BC%882%E7%93%B6%E8%A3%85%EF%BC%89%E5%95%86%E5%93%81%E5%9B%BE%E7%89%87%E3%80%81%E4%BB%8B%E7%BB%8D%E3%80%81%E8%AF%84%E8%AE%BA%E3%80%81%E8%AF%84%E4%BB%B7%E7%AD%89%E4%BF%A1%E6%81%AF%EF%BC%8C%E4%B8%AD%E9%85%92%E7%BD%91%E5%B9%B3%E4%BB%B7%E4%BF%9D%E7%9C%9F%EF%BC%81"><img src="<%=basePath%>/resource/views/img/ljp_20.png" alt="" /></a>
						<a href=""><img src="<%=basePath%>/resource/views/img/ljp_34.png" alt="" /></a>
					</span>
				</div>
				
				
				<!--下方右详情-->
				<div class="right_info">
					<h3 class="h3">拉菲珍藏波尔多 750ml（2瓶装）</h3>
					<p class="p">法国波尔多法定产区AOC级别</p>
					<div class="price">价格
						<span>￥</span>
						<span class="pri">199</span>
					</div>
					
					<ul class="three_kind">
						<li>销量&nbsp;&nbsp;<a href="" id="amo">180套</a></li>
						<li>评价&nbsp;&nbsp;<a href="" id="pj">514</a></li>
						<li>评分：</li>
					</ul>
					<br />
					<p class="cux">促销&nbsp;&nbsp;
						<img class="cux_img" src="<%=basePath%>/resource/views/img/ljp_30.png"/>
						<span class="cux_info">单笔订单满<span>99.00</span>元免运费</span>
						
					</p>
					<p class="kc">库存&nbsp;&nbsp;
						<span>有货</span>
					</p>
					
					<p class="wl">物流&nbsp;&nbsp;
						<span class="psz">配送至</span>
						<span class="sele">北京 北京市 海淀区
							<span></span>
						</span>
						<span class="hdfk">| 支持货到付款</span>
					</p>
					
					<p class="server">服务&nbsp;&nbsp;
						<span class="ser_info">由<a class="ser_a" href="">中酒自营</a>从北京发货 , 并提供售后服务</span>
					</p>
					
					<p class="amount">数量&nbsp;&nbsp;
						<span class="sub">-</span>
						<span class="num">1</span>
						<span class="sum">+</span>
					</p>
					
					<div class="button">
						<span class="btn1"><img src="<%=basePath%>/resource/views/img/ljp_31.png"/></span>
						<span class="btn2"><img src="<%=basePath%>/resource/views/img/ljp_32.png"/></span>
					</div>
					
				</div>
				
			</div>
			
			
			<!--下方大部分-->
			<div class="left_big">
				<!--下方左店内搜索和热门-->
				<div class="left_bottom">
					<!--店内搜索-->
					<div class="search">
						<div class="search_name">本店搜索</div>
						<div class="search_info">
							关键字 <input class="keyword" type="text" /><br />
							价&nbsp;&nbsp;&nbsp;格 <input type="text" class="beg" /> - <input type="text" class="end" />
							<div class="search_btn">搜索</div>
						</div>
						
					</div>
					<!--热门-->
					<div class="hot">
						<div class="hot_name">
							<a href=""><span class="hot_sell">热门销售</span></a>
							<a href=""><span class="hot_concern">热门关注</span></a>
						</div>
						<ul class="hot_sell_goods">
							<!--后台生成-->
						</ul>
						<ul class="hot_concern_goods">
							<!--后台生成-->
						</ul>
					</div>
				</div>
				
				
				
				<!--下方右商品简介、评价、咨询-->
				<div class="right_goodsInfo">
					<!--一-->
					<div class="right_part_one">
						<ul class="part_one_kind" id="spjs">
							<li><a class="li_a1" href="#spjs">商品介绍</a></li>
							<li><a class="li_a2" href="#sppj">商品评价<span class="pj_num">(514)</span></a></li>
							<li><a class="li_a3" href="#spzx">商品咨询<span class="zx_num">(0)</span></a></li>
						</ul>
						
						<ul class="part_one_info">
							<li class="goods_name">商品名称：<span>拉菲珍藏波尔多 750ml（2瓶装）</span></li>
							<li class="txm">条形码：<span>3296327541419Z2</span></li>
							<li class="goods_place">产地：<span>法国</span></li>
							<li class="goods_kind">种类：<span>干红葡萄酒</span></li>
							<li class="sy">适用：<span>礼节拜访</span></li>
							<li class="cctj">储藏条件：<span>恒温恒湿 避光避震</span></li>
							<li class="goods_when">参考年份：<span>参考年份以产品实物为准</span></li>
							<li class="jjd">酒精度<span>12%vol</span></li>
							<li class="jhl">净含量：<span>750ml*2</span></li>
						</ul>
					</div>
					
					<!--二-->
					<ul class="right_part_two">
						<!--动态生成-->
					</ul>
					
					
					<!--下面是图片部分-->
					<div class="part_three">
						<img class="three_img1 three_img" src="<%=basePath%>/resource/views/img/ljp_39.jpg"/>
						<img class="three_img2 three_img" src="<%=basePath%>/resource/views/img/ljp_40.jpg"/>
						<img class="three_img3 three_img" src="<%=basePath%>/resource/views/img/ljp_41.jpg"/>
					</div>
					
					<div class="part_four">
						<img class="four_img" src="<%=basePath%>/resource/views/img/ljp_42.jpg"/>
					</div>
					
					<div class="part_five">
						<img class="five_img" src="<%=basePath%>/resource/views/img/ljp_43.jpg"/>
					</div>
					
					<div class="part_six">
						<img src="<%=basePath%>/resource/views/img/ljp_44.jpg" alt="" class="six_img six_img1" />
						<img src="<%=basePath%>/resource/views/img/ljp_45.jpg" alt="" class="six_img six_img2" />
						<img src="<%=basePath%>/resource/views/img/ljp_46.jpg" alt="" class="six_img six_img3" />
						<img src="<%=basePath%>/resource/views/img/ljp_47.jpg" alt="" class="six_img six_img4" />
						<img src="<%=basePath%>/resource/views/img/ljp_48.jpg" alt="" class="six_img six_img5" />
						<img src="<%=basePath%>/resource/views/img/ljp_49.jpg" alt="" class="six_img six_img6" />
					</div>
					
					
					
					<!--商品评价-->
					<div id="sppj" class="right_part_seven">
						<div class="part_seven_name">商品评价</div>
						<div class="part_seven_hpl">
							<div class="seven_one">
								<p class="hpl">99%</p>
								<p class="hpl2">好评率</p>
							</div>
							
							<div class="pj_img">
								<img src="<%=basePath%>/resource/views/img/ljp_50.png"/>
							</div>
						</div>
					</div>
					
					
					<ul class="pjlist_name">
						<a href=""><li>全部评价(514)</li></a>
						<a href=""><li>好评(507)</li></a>
						<a href=""><li>中评(7)</li></a>
						<a href=""><li>差评(0)</li></a>
						<a href=""><li>有图(1)</li></a>
						<a href=""><li>追加评论(2)</li></a>
					</ul>
					
					<!--动态生成初次评论-->
					<div class="pj_box">
						<!--评论动态生成-->
						<!--翻页-->
						<div class="change_page">
							<ul>
								<li>上一页</li>
								<li>1</li>
								<li>下一页</li>
							</ul>
						</div>
					</div>
					
					
					<!--咨询-->
					<div class="zx" id="spzx">
						<div class="zx_name">
							<span class="zxName">商品咨询</span>
						</div>
						<p class="zx_tips">温馨提示:因厂家更改产品包装、产地或者更换随机附件等没有任何提前通知，且每位咨询者购买情况、提问时间等不同，为此以下回复仅对提问者3天内有效，其他网友仅供参考！若由此给您带来不便请多多谅解，谢谢！</p>
					</div>
					
				</div>
				
								
				
				
				
			</div>
		</div>
		<div class="gouwuche">
			<div class="gouwuche_left">
				<ol class="gouwuche_left_content">
					<li class="gouwuche_left_content_first pr">
						<a class="a" href="<%=basePath%>/resource/views/User/html/01.Ljp_Personal_Index.jsp"><i  class="iconfont icon-gerentouxiang "></i></a>
						<div class="pa kefu_shuoming">
							<span>个人中心</span>
							<div class="sanjiaoxing pa"></div>
						</div>
					</li>
					<li class="gouwuche_left_content_first pr gouwuche_left_content_first_click">
						<a class="a" href="###"><i id="end"></i><i class="iconfont icon-gouwuche paowuxian"></i></a>
						<span style="width:22px;display: block;margin-left:9px;">购物车</span>
						<span>0</span>
					</li>
					<li class="gouwuche_left_content_first pr gouwuche_left_content_first_click">
						<a class="a" href="###"><i  class="iconfont icon-hongbao "></i></a>
						<div class="pa kefu_shuoming">
							<span>资产中心</span>
							<div class="sanjiaoxing pa"></div>
						</div>
					</li>
					<li class="gouwuche_left_content_first pr gouwuche_left_content_first_click">
						<a class="a" href="###"><i  class="iconfont icon-xiangqu "></i></a>
						<div class="pa kefu_shuoming">
							<span>收藏商品</span>
							<div class="sanjiaoxing pa"></div>
						</div>
					</li>
					<li class="gouwuche_left_content_first pr gouwuche_left_content_first_click">
						<div class="pa kefu_shuoming">
							<span>浏览历史</span>
							<div class="sanjiaoxing pa"></div>
						</div>
						<a class="a" href="###"><i  class="iconfont icon-shizhong "></i></a>
					</li>
					<li>
						<div class="kefu pr">
							<span>客服</span>
							<div class="kefu_shuoming pa">
								<span>妮妮</span>
								<span>佳佳</span>
								<div class="sanjiaoxing pa"></div>
							</div>
						</div>
					</li>
				</ol>
			</div>
			<div class="gouwuche_right">
				
			</div>
		</div>
	</body>
	<script src="jquery-3.2.1.min.js"></script>
	<script  src="<%=basePath%>/resource/views/js/frame.js"></script>
	<script  src="<%=basePath%>/resource/views/js/jqery2.js"></script>
	<script  src="<%=basePath%>/resource/views/js/ogLaVp_data/stopExecutionOnTimeout-6c99970ade81e43be51fa877be0f7600.js"></script>
	<script src="<%=basePath%>/resource/views/js/02.Ljp_info.js"></script>
</html>
