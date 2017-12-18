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
		<title></title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/lkl_headandfoot.css"/>
	</head>
	<body>
		<footer>
			<div class="zhengpin_box">
				<div class="zhengpin">
					<div class="zhengpin_list">
						<span>正品保障</span>
						<span>厂家直接&nbsp;正品防伪</span>
					</div>
					<div class="zhengpin_list">
						<span>领军 o2o</span>
						<span>中国酒类&nbsp;o2o第一家</span>
					</div>
					<div class="zhengpin_list">
						<span>无理由退货</span>
						<span>拆封无条件退货</span>
					</div>
					<div class="zhengpin_list">
						<span>闪电配送</span>
						<span>专业配送&nbsp;安全送达</span>
					</div>
					<div class="zhengpin_list">
						<span>百万口碑</span>
						<span>400万用户的认可</span>
					</div>
					<div class="zhengpin_list">
						<span>金牌服务</span>
						<span>7*12小时贴心服务</span>
					</div>
				</div>
			</div>
			<div class="href_table">
				<table border="" cellspacing="0" cellpadding="0">
					<tr>
						<td rowspan="2" style="text-align: start;"><a href=""><img src="<%=basePath%>/resource/views/zhongjiu-huichang/img/bottom_1.png"/></a></td>
						<th>购物指南</th>
						<th>配送说明</th>
						<th>支付方式</th>
						<th>售后服务</th>
						<th>服务保障</th>
					</tr>
					<tr>
						<td><a href="">购物流程</a></td>
						<td><a href="">关于运费</a></td>
						<td><a href="">支付宝支付</a></td>
						<td><a href=""></a>热门常见问题</td>
						<td><a href=""></a>30分钟快速响应</td>
					</tr>
					<tr>	
					<td rowspan="2" style="text-align: start;"><a href=""><img src="<%=basePath%>/resource/views/zhongjiu-huichang/img/bottom_2.png"/></a></td>
						<td><a href="">用户注册协议</a></td>
						<td><a href="">快递查询</a></td>
						<td><a href="">微信支付</a></td>
						<td><a href="">服务承诺</a></td>
						<td><a href=""></a>7*12小时贴心服务</td>
					</tr>
					<tr>
						<td><a href="">会员积分</a></td>
						<td><a href="">发货与签收</a></td>
						<td><a href="">账户余额支付</a></td>
						<td><a href=""></a>退款说明</td>
						<td><a href=""></a></td>
					</tr>
					<tr>
						<td rowspan="3" style="text-align: start;"><a href=""><img src="<%=basePath%>/resource/views/zhongjiu-huichang/img/bottom_3.png"/></a></td>
						<td><a href="">关于发票</a></td>
						<td><a href=""></a></td>
						<td><a href=""></a></td>
						<td><a href="">退换货政策</a></td>
						<td><a href=""></a></td>
					</tr>
					<tr>
						<td><a href="">关于优惠券</a></td>
						<td><a href=""></a></td>
						<td><a href=""></a></td>
						<td><a href="">退换货流程</a></td>
						<td><a href=""></a></td>
					</tr>
					<tr>
						<td><a href="">开票说明</a></td>
						<td><a href=""></a></td>
						<td><a href=""></a></td>
						<td><a href=""></a></td>
						<td><a href=""></a></td>
					</tr>
				</table>
				<div class="href_table_right">
					<div>
						<span>手机中酒</span>
						<img src="<%=basePath%>/resource/views/zhongjiu-huichang/img/phone_zj.png"/>
						<span>下载移动客户端</span>
					</div>
					<div>
						<span>中酒微信</span>
						<img src="<%=basePath%>/resource/views/zhongjiu-huichang/img/weixin_zj.png"/>
						<span>中酒官方微信</span>
					</div>
				</div>
			</div>
			<div class="guanyu">
				<a href="">关于中酒</a>
				<a href="">媒体报道</a>
				<a href="">加入中酒</a>
				<a href="">品牌导航</a>
				<a href="">品牌资讯</a>
				<a href="">联系我们</a>
			</div>
			<div class="bottom_last">
				<span>Copyright © 2016 中酒网(www.zhongjiu.cn) 版权所有 京ICP备12022216号-2 | 京公网安备 11010502026701 | 购买前请确认达到法定饮酒年龄！中酒网不销售任何含酒精产品给18岁以下人士！
</span>
				<span>公司名称：中酒时代酒业（北京）有限公司 公司地址：北京市朝阳区高碑店乡半壁店村惠河南街1111号国投尚科大厦2层E202单元办公室 联系人：刘铮 联系方式：400-798-9999 社会信用代码证：911101055938071245 食品经营许可证
</span>
				<div>
					<a href="">
						<img src="http://www.zhongjiu.cn/Images/authentication_01.png"/>
					</a>
					<a href="">
						<img src="http://v.trustutn.org/images/cert/brand_bottom_large.jpg"/>
					</a>
					<a href="">
						<img src="<%=basePath%>/resource/views/zhongjiu-huichang/img/kexin.png"/>
					</a>
					<a href="">
						<img src="http://www.zhongjiu.cn/Images/authentication_05.png"/>
					</a>
					<a href="">
						<img src="http://www.zhongjiu.cn/Images/authentication_07.png"/>
					</a>
					<a href="">
						<img src="http://www.zhongjiu.cn/Images/authentication_09.png"/>
					</a>
				</div>
			</div>
		</footer>
	</body>
</html>
