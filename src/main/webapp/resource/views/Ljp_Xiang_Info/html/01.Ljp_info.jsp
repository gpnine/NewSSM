<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
	int i=1;
	int j=1;
%>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/Ljp_Xiang_Info/css/03.Ljp_info.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/Ljp_Xiang_Info/css/iconfont.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/Ljp_Xiang_Info/css/cityLayout.css"/>
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
					<span><a href="">葡萄酒${wineInfo.getWId()}</a></span>
					>
					<span><a href="">${wineInfo.getWineBrand()}</a></span>
					>
					<span><a href="">${wineInfo.getWineName()} ${wineInfo.getWineLiter()}（2瓶装）</a></span>
				</div>
				
				<!--下方左图部分-->
				<div class="main_left">
					<div class="left_bigpic">
						<div class="move">
							<img src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg1()}" alt="" class="bigpic" />
							<!--放大镜-->
							<div class="wrap"></div>
						</div>
						
						<div class="changePic">
							<img class="change_pic" src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg1()}" alt="" />
						</div>
						
						
					</div>
					<ul class="left_smallpic">
						<li class="leftPic1 leftPic"><a href=""><img style="width: 100%;height: 100%;" src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg1()}" alt="" class="smallpic1 smallpic" /></a></li>
						<li class="leftPic2 leftPic"><a href=""><img style="width: 100%;height: 100%;"src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg2()}" alt="" class="smallpic2 smallpic" /></a></li>
						<li class="leftPic3 leftPic"><a href=""><img style="width: 100%;height: 100%;"src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg3()}" alt="" class="smallpic3 smallpic" /></a></li>
						<li class="leftPic4 leftPic"><a href=""><img style="width: 100%;height: 100%;"src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg4()}" alt="" class="smallpic4 smallpic" /></a></li>
						<li class="leftPic5 leftPic"><a href=""><img style="width: 100%;height: 100%;"src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg5()}" alt="" class="smallpic5 smallpic" /></a></li>
					</ul>
				</div>
				
				<div class="save_share">
					<span class="save">
						<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_35.png" alt="" />
						收藏商品
					</span>
					
					<span class="share">
						分享到：
						<a href="http://service.weibo.com/share/share.php?url=http%3A%2F%2Fwww.zhongjiu.cn%2Fproductdetail%2F4211.htm&type=icon&language=zh_cn&title=%E6%8B%89%E8%8F%B2%E7%8F%8D%E8%97%8F%E6%B3%A2%E5%B0%94%E5%A4%9A%20750ml%EF%BC%882%E7%93%B6%E8%A3%85%EF%BC%89&pic=http%3A%2F%2Fimg6.zhongjiu.cn%2Fresourceb2b2c%2FStorage%2FShop%2F1%2FProducts%2F4211%2F1_350.png&searchPic=true&style=simple#_loginLayer_1512389931438"><img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_21.png" alt="" /></a>
						<a href="https://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fwww.zhongjiu.cn%2Fproductdetail%2F4211.htm%23none&title=%E6%8B%89%E8%8F%B2%E7%8F%8D%E8%97%8F%E6%B3%A2%E5%B0%94%E5%A4%9A+750ml%EF%BC%882%E7%93%B6%E8%A3%85%EF%BC%89__%E8%91%A1%E8%90%84%E9%85%92_%E3%80%90%E4%BB%B7%E6%A0%BC+%E5%9B%BE%E7%89%87+%E8%AF%84%E4%BB%B7+%E8%AF%84%E8%AE%BA%E3%80%91_%E4%B8%AD%E9%85%92%E7%BD%91&pics=http%3A%2F%2Fimg6.zhongjiu.cn%2Fresourceb2b2c%2FStorage%2FShop%2F1%2FProducts%2F4211%2FDetails%2F7cf09234894f4bb0a9e1f964ab753550.jpg&summary=%E4%B8%AD%E9%85%92%E7%BD%91%E6%8F%90%E4%BE%9B%E6%8B%89%E8%8F%B2%E7%8F%8D%E8%97%8F%E6%B3%A2%E5%B0%94%E5%A4%9A750ml%EF%BC%882%E7%93%B6%E8%A3%85%EF%BC%89%E4%BB%A5%E5%8F%8A%E6%8B%89%E8%8F%B2%E7%8F%8D%E8%97%8F%E6%B3%A2%E5%B0%94%E5%A4%9A750ml%EF%BC%882%E7%93%B6%E8%A3%85%EF%BC%89%E5%95%86%E5%93%81%E5%9B%BE%E7%89%87%E3%80%81%E4%BB%8B%E7%BB%8D%E3%80%81%E8%AF%84%E8%AE%BA%E3%80%81%E8%AF%84%E4%BB%B7%E7%AD%89%E4%BF%A1%E6%81%AF%EF%BC%8C%E4%B8%AD%E9%85%92%E7%BD%91%E5%B9%B3%E4%BB%B7%E4%BF%9D%E7%9C%9F%EF%BC%81"><img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_20.png" alt="" /></a>
						<a href=""><img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_34.png" alt="" /></a>
					</span>
				</div>
				
				
				<!--下方右详情-->
				<div class="right_info">
					<h3 class="h3">${wineInfo.getWineName()} ${wineInfo.getWineLiter()}（2瓶装）</h3>
					<p class="p">${wineInfo.getWineName()}</p>
					<div class="price">价格
						<span>￥</span>
						<span class="pri">${wineInfo.getWinePrice()}</span>
					</div>
					
					<ul class="three_kind">
						<li>销量&nbsp;&nbsp;<a href="" id="amo">180套</a></li>
						<li>评价&nbsp;&nbsp;<a href="" id="pj">514</a></li>
						<li>评分：</li>
					</ul>
					<br />
					<p class="cux">促销&nbsp;&nbsp;
						<img class="cux_img" src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_30.png"/>
						<span class="cux_info">单笔订单满<span>99.00</span>元免运费</span>
						
					</p>
					<p class="kc">库存&nbsp;&nbsp;
						<span>有货</span>
					</p>





					<p class="wl">物流&nbsp;&nbsp;
						<span class="psz">配送至</span>
						<input name="" id="sel1"  type="text"  class="city_input" readonly="readonly" value="北京-北京市">
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
						<span class="btn1"><img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_31.png"/></span>
						<span class="btn2"><img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_32.png"/></span>
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


						<c:forEach items="${wineList}" var="item">
							<li>
								<img class="sell_pic" src="<%=basePath%>/resource/views/img/${item.getWineImg1()}"/>
								<a class='sell_a' href=''><p class="sell_hot_name">${item.getWineName()}</p></a>
								<p class="sell_num">
									<span class="span1"><%=i++%></span>
									<span class="span2">热销<span class="sell_amount">6180</span>件</span>
								</p>
							</li>
						</c:forEach>


						</ul>
						<ul class="hot_concern_goods">
							<!--后台生成-->

						<c:forEach items="${wineList1}" var="item">
							<li>
								<img class="concern_pic" src="<%=basePath%>/resource/views/img/${item.getWineImg1()}">
								<a class='concern_a' href=''><p class="concern_hot_name">${item.getWineName()}</p></a>
								<p class="concern_num">
									<span class="span3"><%=j++%></span>
									<span class="span4">关注<span class="concern_amount">60</span>次</span>
								</p>
							</li>
						</c:forEach>


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
							<li class="goods_name">商品名称：<span>${wineInfo.getWineName()}</span></li>
							<li class="txm">条形码：<span>${wineInfo.getWineBianhao()}</span></li>
							<li class="goods_place">产地：<span>${wineInfo.getFromAdress()}</span></li>
							<li class="goods_kind">种类：<span>${wineInfo.getWineBrand()}</span></li>
							<li class="sy">适用：<span>${wineInfo.getWineShiyong()}</span></li>
							<li class="cctj">储藏条件：<span>恒温恒湿 避光避震</span></li>
							<li class="goods_when">参考年份：<span>参考年份以产品实物为准</span></li>
							<li class="jjd">酒精度<span>${wineInfo.getWineDegree()}%vol</span></li>
							<li class="jhl">净含量：<span>${wineInfo.getWineLiter()}*2</span></li>
						</ul>
					</div>
					
					<!--二-->
					<ul class="right_part_two">
						<!--动态生成-->

					<c:forEach items="${wineList2}" var="item">
						<a href="">
							<li class="part_two_pic">
								<img class="part_two_img" src="<%=basePath%>/resource/views/img/${item.getWineImg1()}"/>
								<p class="part_two_price">￥<span>${item.getWinePrice()}</span></p>
								<p class="part_two_goodsName\">${item.getWineName()}</p>
							</li>
						</a>
					</c:forEach>


					</ul>
					
					
					<!--下面是图片部分-->
					<div class="part_three">
						<img class="three_img1 three_img" src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg3()}"/>
						<img class="three_img2 three_img" src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg4()}"/>
						<img class="three_img3 three_img" src="<%=basePath%>/resource/views/img/${wineInfo.getWineImg5()}"/>
					</div>
					
					<div class="part_four">
						<img class="four_img" src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_42.jpg"/>
					</div>
					
					<div class="part_five">
						<img class="five_img" src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_43.jpg"/>
					</div>
					
					<div class="part_six">
						<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_44.jpg" alt="" class="six_img six_img1" />
						<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_45.jpg" alt="" class="six_img six_img2" />
						<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_46.jpg" alt="" class="six_img six_img3" />
						<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_47.jpg" alt="" class="six_img six_img4" />
						<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_48.jpg" alt="" class="six_img six_img5" />
						<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_49.jpg" alt="" class="six_img six_img6" />
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
								<img src="<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_50.png"/>
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
						<a class="a" href=""><i  class="iconfont icon-gerentouxiang "></i></a>
						<div class="pa kefu_shuoming">
							<span>个人中心</span>
							<div class="sanjiaoxing pa"></div>
						</div>
					</li>
					<li class="gouwuche_left_content_first pr gouwuche_left_content_first_click">
						<a class="a" href="###"><i id="end"></i><i class="iconfont icon-gouwuche paowuxian"></i></a>
						<span style="width:22px;display: block;margin-left:9px;">购物车</span>
						<span class="gouwushuliang">0</span>
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
				<div class='gouwuche_right1 gouwuche_right_right'>
					<div style='white-space:nowrap;padding:0 15px;'>
						<input type='checkbox' checked='checked' id='inp1'/><label for='inp1' style='white-space:nowrap'>&nbsp;全选</label>
					</div>
					<!--查看全部-->
					<a class='chakan' href=''>查看全部</a>
					<div class='zhongjiu_goods' style="padding:0 15px;">
						<div>
							<input type='checkbox'  checked='checked' class='inpcounts'/>
							<span>中酒自营</span>
							<span class='prices' style='float:right'>0</span>
						</div>

						<!--改动区域***********************************************************-->

						<ol class='ols'>
							<!--购物车内添加物品-->

						<c:forEach items="${cars}" var="item">
							<li style='position:relative;margin-bottom:5px;'>
								<input type='checkbox' checked='checked' class='inpcount'/>
								<!--添加tup路径-->
								<img style='vertical-align:middle;width:40px;' src="<%=basePath%>/resource/views/img/${item.getWines().getWineImg1()}"/>
								<!--添加物品数量-->
								<div class='s_sum' style="width:20px;height:20px;background:red;color:white;text-align:center;line-height:20px;font-size:12px;white-space:nowrap;position:absolute;left:100px;top:8px;">${item.getCounts()}</div>
								<!--添加价格-->
								<span class='titalprice' style="float:right; margin-top:8px;font-size: 13px;color: gray">${item.getWines().getWinePrice()}</span>
							</li>
						</c:forEach>


						</ol>

						<!--改动区域***********************************************************-->
					</div>
					<div style='position: absolute;bottom:0;padding:10px 15px;width:190px'>
						<div style='float:left'>
							<span>已选</span>
							<span class='counts'>0</span>
							<span>件<span>
						</div>
						<div style='float:right ;color:red;'>
							<span>￥</span>
							<span class='prices'>0</span>
						</div>
						<div class="jiesuan">购物车结算</div>
					</div>
				</div>
				<div class='gouwuche_right2  gouwuche_right_right'>
					<ol style='padding:0 15px'>
						<li>
							<div class='chexiao' >&gt;&gt;</div>
							<div style='margin-left:65px;white-space:nowrap; color:white;'>资产中心</div>
						</li>
						<li>
							<div style='width:190px;height:50px;background:white;padding:10px 0;'>
								<ol>
									<li style='float:left;width:95px;height:50px;border-right:1px dotted gray;text-align:center'>
										<div>0</div>
										<div style='white-space:nowrap;'>我的积分</div>
									</li>
									<li style='float:right;width:84px;height:50px;text-align:center'>
										<div>0</div>
										<div style='white-space:nowrap;'>优惠劵</div>
									</li>
								</ol>
							</div>
						</li>
						<li style='white-space:nowrap; color:white;'>已领取的优惠劵</li>
					</ol>
					<img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif'/>
				</div>
				<div class='gouwuche_right3  gouwuche_right_right'>
					<div style='padding:5px 15px;'>
						<div class='chexiao'>&gt;&gt;</div>
					<div style='margin-left:65px;white-space:nowrap; color:white;'>关注商品</div>
				</div>
				<img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif'/>
			</div>
			<div class='gouwuche_right4  gouwuche_right_right'>
				<div style='padding:5px 15px;'>
					<div class='chexiao'>&gt;&gt;</div>
					<div style='margin-left:65px;white-space:nowrap; color:white;'>浏览历史</div>
				</div>
				<img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif'/>
			</div>

		</div>
		</div>
	</body>
	<script src="<%=basePath%>/resource/views/Ljp_Xiang_Info/html/jquery-3.2.1.min.js"></script>
	<script  src="<%=basePath%>/resource/views/Ljp_Xiang_Info/js/frame.js"></script>
	<script  src="<%=basePath%>/resource/views/Ljp_Xiang_Info/js/jqery2.js"></script>
	<script  src="<%=basePath%>/resource/views/Ljp_Xiang_Info/js/ogLaVp_data/stopExecutionOnTimeout-6c99970ade81e43be51fa877be0f7600.js"></script>
	<script src="<%=basePath%>/resource/views/Ljp_Xiang_Info/js/02.Ljp_info.js"></script>
	<script src="<%=basePath%>/resource/views/Ljp_Xiang_Info/js/cityselect.js"></script>

	<script>
        //大小图的切换
        var picArr = ["<%=basePath%>/resource/views/img/${wineInfo.getWineImg1()}","<%=basePath%>/resource/views/img/${wineInfo.getWineImg2()}","<%=basePath%>/resource/views/img/${wineInfo.getWineImg3()}","<%=basePath%>/resource/views/img/${wineInfo.getWineImg4()}","<%=basePath%>/resource/views/img/${wineInfo.getWineImg5()}"];

        //var picArr = ["../img/ljp_24.jpg","../img/ljp_25.jpg","../img/ljp_26.jpg","../img/ljp_27.jpg","../img/ljp_28.jpg"];

        //鼠标移入小图，对应border显示
        //大图切换成小图的放大版
        var leftSmallImg = $(".left_smallpic .leftPic");
        var lastPic = leftSmallImg[0];
        for(var i = 0;i<leftSmallImg.length;i++){
            leftSmallImg[i].index = i;
            leftSmallImg[i].onmouseover = function(){
                lastPic.style.borderColor = "transparent";
                leftSmallImg[this.index].style.borderColor = "red";
                $(".bigpic").prop("src",picArr[this.index]);
                $(".change_pic").prop("src",picArr[this.index]);
                lastPic = leftSmallImg[this.index];
            }
        }





         var scrollTop=0;
         	$(window).scroll(function(){
         				 scrollTop=$(this).scrollTop();
         				console.log(scrollTop);
         			})
         	$('.btn2').on('click', addProduct);
         		function addProduct(event) {



         		var offset = $('.paowuxian').offset(), flyer = $("<img style='position:absolute;' src='<%=basePath%>/resource/views/img/${wineInfo.getWineImg1()}' alt='' class='divsss' />");


         		flyer.fly({
         		// 初始位置
         		    start: {

         		        left: event.pageX-120,

         		        top: event.pageY-scrollTop-30

         		    },
         		// 结束位置
         		    end: {

         		        left: offset.left-70,

         		        top: offset.top-scrollTop-5,

         		        width: 0,

         		        height: 0

         		    }

         		});
     	}




        var btn2 = document.getElementsByClassName("btn2")[0];
//        var num = document.getElementsByClassName("num")[0].innerHTML;
        $(btn2).click(function(){
            $.ajax({
                method:"get",
                url:"addCars.do",
                data:{
                    userPhone:${user1.userPhone},
                    goodsId:${wineInfo.getWId()},
                    counts:document.getElementsByClassName("num")[0].innerHTML,
                },
                success:function(data){
                    window.location.reload()
                }

            })
        })





        //动态生成初次评论
        for(var i= 0;i<10;i++){
            $("<dl><dt class='pj_name'>初次评价：</dt><dd class='pj_content'>非常满意！物流很快，包装结实！酒的口感很棒：打开后口感圆润，丹宁丰富，酒体适中，即使是初次喝红酒的人也容易接受，现在这个季节搭配着烤肉非常棒！好酒需慢慢品！下次还来</dd><div class='pj_right'><span class='user_number'>${user1.userPhone}</span><br /><span class='star'><img src='<%=basePath%>/resource/views/Ljp_Xiang_Info/img/ljp_51.png'></span></div></dl>").prependTo($(".pj_box"));
        }





        $("<ol style='padding:0 15px'><li><div class='chexiao' style='position:absolute; color:white;cursor:pointer;'>&gt;&gt;</div><div style='margin-left:65px;white-space:nowrap; color:white;'>资产中心</div></li><li><div style='width:190px;height:50px;background:white;padding:10px 0;'><ol><li style='float:left;width:95px;height:50px;border-right:1px dotted gray;text-align:center'><div>0</div><div style='white-space:nowrap;'>我的积分</div></li><li style='float:right;width:84px;height:50px;text-align:center'><div>0</div><div style='white-space:nowrap;'>优惠劵</div></li><ol></div></li><li style='white-space:nowrap; color:white;'>已领取的优惠劵</li></ol> <img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif' style='display:none;position:absolute; width:60px; left:calc(50% - 30px)'/>").appendTo($(".gouwuche_right2"));
        $("<div style='padding:5px 15px;'><div class='chexiao' style='position:absolute; color:white;cursor:pointer;'>&gt;&gt;</div><div style='margin-left:65px;white-space:nowrap; color:white;'>关注商品</div></div><img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif' style='display:none;position:absolute; width:60px; left:calc(50% - 30px)'/>").appendTo($(".gouwuche_right3"));
        $("<div style='padding:5px 15px;'><div class='chexiao' style='position:absolute; color:white;cursor:pointer;'>&gt;&gt;</div><div style='margin-left:65px;white-space:nowrap; color:white;'>浏览历史</div></div><img class='lanonloads' src='<%=basePath%>/resource/views/img/21.gif' style='display:none;position:absolute; width:60px; left:calc(50% - 30px)'/>").appendTo($(".gouwuche_right4"));








        $.ajax({
            type: "get",
            url: "findCars.do",
            async: true,
            dataType: "json",
            data: {
                userPhone:${user1.userPhone}
			},
            success: function(data) {
				console.log(data);
                if(data.shopId =="") {
//                    $("<div class='zhongjiu_goods' style='background:white;padding:0 15px;width:190px'><div><input type='checkbox'  checked='checked' class='inpcounts'/><span>中酒自营</span><span class='prices' style='float:right'>0</span></div><ol class='ols'></ol></div>").appendTo($(".gouwuche_right1"));
                    $("#inp1").click(function() {
                        $(".inpcounts").prop("checked", this.checked);
                        $(".inpcount").prop("checked", this.checked);
                        change();
                    })
                    $(".chakan").mouseover(function() {
                        $(".chakan").css("color", "red");
                    })
                    $(".chakan").mouseout(function() {
                        $(".chakan").css("color", "black");
                    })
                } else {
                    $("#inp1").click(function() {
                        $(".inpcounts").prop("checked", this.checked);
                        $(".inpcount").prop("checked", this.checked);
                        change();
                    })
                    $(".chakan").mouseover(function() {
                        $(".chakan").css("color", "red");
                    })
                    $(".chakan").mouseout(function() {
                        $(".chakan").css("color", "black");
                    })





                    //获取后台数据进行创建购物车商品
                    $("<div class='zhongjiu_goods' style='background:white;padding:0 15px;width:190px'><div><input type='checkbox'  checked='checked' class='inpcounts'/><span>中酒自营</span><span class='prices' style='float:right'>0</span></div><ol class='ols'></ol></div>").appendTo($(".gouwuche_right1"));
                    console.log(data);
                    console.log(data.shopId);
//                    for(i in data){
//                        $("<li style='position:relative;margin-bottom:5px;'><input type='checkbox' checked='checked' class='inpcount'/><img style='vertical-align:middle;width:40px;' src='"+data[i].shopImg+"'/><div class='s_sum' style='width:20px;height:20px;background:red;color:white;text-align:center;line-height:20px;font-size:12px;white-space:nowrap;position:absolute;left:100px;top:8px;'>"+data[i].parentId+"</div><span class='titalprice' style='float:right; margin-top:8px;'>"+data[i].shopId+"</span></li>").appendTo($(".ols"));
//                    }

                    $(".gouwushuliang").html(function(){
                        var countss = 0;
                        console.log($(".inpcount").length)
                        $(".inpcount").siblings(".s_sum").each(function(index, el) {
                            countss += parseInt(el.innerHTML);
                        })
                        return countss;

                    })
//                    $(".btn2").click(function(){
//                        //判断购物车中有没有此商品
//                        //有 查到此产品，在数量上加上新添加的数量
//                        //查询购物车数据库
//                        $("<li style='position:relative;margin-bottom:5px;'><input type='checkbox' checked='checked' class='inpcount'/><img style='vertical-align:middle;width:40px;' src='img/0.jpg'/><div class='s_sum' style='width:20px;height:20px;background:red;color:white;text-align:center;line-height:20px;font-size:12px;white-space:nowrap;position:absolute;left:100px;top:8px;'>"+$('.num').html()+"</div><span class='titalprice' style='float:right; margin-top:8px;'>"+$('.pri').html()+"</span></li>").appendTo($(".ols"));
//
//                        $(".gouwushuliang").html(function(){
//                            var countss = 0;
//                            console.log($(".inpcount").length)
//                            $(".inpcount").siblings(".s_sum").each(function(index, el) {
//                                countss += parseInt(el.innerHTML);
//                            })
//                            return countss;
//
//                        })
//                        change();
//
//                    })








                    $(".inpcounts").click(function() {
                        $("#inp1").prop("checked", this.checked);
                        $(".inpcount").prop("checked", this.checked);
                        change();
                    })

                    $(".inpcount").click(function() {
                        $(".inpcounts").prop("checked", $('.inpcount:checked').length == $('.inpcount').length);
                        $("#inp1").prop("checked", $('.inpcount:checked').length == $('.inpcount').length);
                        change();
                    })
                    $("<div style='position: absolute;bottom:0;padding:10px 15px;width:190px'><div style='float:left'><span>已选</span><span class='counts'>0</span><span>件<span></div><div style='float:right ;color:red;'><span>￥</span><span class='prices'>0</span></div><div style='margin-top:30px;height:40px;background:red;color:white;text-align:center;line-height:40px;'>购物车结算</div></div>").appendTo($(".gouwuche_right1"));
                    //				prices总价 titalprice单个商品的总价 s_sum 每个商品的数量
                    function change() {
                        $(".counts").html(function() {
                            var counts = 0;
                            $(".inpcount:checked").siblings(".s_sum").each(function(index, el) {
                                counts += parseInt(el.innerHTML);
                            })
                            return counts;
                        })
                         $(".prices").html(function() {
                         		var countss = 0;
                         		var arrs=[];
                         		var arrss=[];

                         		$(".inpcount:checked").siblings(".titalprice").each(function(index, el) {

                         			arrs.push(el.innerHTML);

                         		})
                         	console.log(arrs);
                         		$(".inpcount:checked").siblings(".s_sum").each(function(index, el) {
                         			arrss.push(el.innerHTML);

                         			countss+=parseInt(arrs[index])*parseInt(arrss[index]);
                         		})
                            console.log("+++++++++"+countss);
                         		return countss;
                         	})



                    }
                    change();
                }
            }
        });





        $(".prices").html(function() {
            var countss = 0;
            var arrs=[];
            var arrss=[];
            var countss = 0;
            $(".inpcount:checked").siblings(".titalprice").each(function(index, el) {

                arrs.push(el.innerHTML);

            })
            console.log(arrs);
            $(".inpcount:checked").siblings(".s_sum").each(function(index, el) {
                arrss.push(el.innerHTML);

                countss+=parseInt(arrs[index])*parseInt(arrss[index]);
            })
            console.log("+++++++++"+countss);
            return countss;
        })



	</script>
</html>
