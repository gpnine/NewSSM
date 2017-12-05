<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>07.Ljp_Personal_Index-我的积分</title>
		<link rel="stylesheet" type="text/css" href="../css/01.Ljp_Personal_Index.css"/>
		<link rel="stylesheet" type="text/css" href="../css/02.Ljp_Personal_Index.css"/>
	</head>
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
					<span>我的积分</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span class="lpghgl"><a href="072.duihuan.html">礼品兑换管理</a></span>
				</div>
				
				<div id="information">
					<p>您当前可用积分：<span style="text-decoration: underline;">${user1.userMask}分</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="071.jifen.html">如何获取积分？</a></p>
					<p>可抵扣订单现金：<span>0.03元</span></p>
					<p>积分使用说明：<span>1、每 100 积分可抵扣1元； 2、如订单发生退款、退货等问题时，获得的积分将被扣除。</span>
</p>
				</div>
				
				<div id="syzk">
					<span><a href="">全部</a></span><span><a href="">收入</a></span><span><a href="">支出</a></span>
				</div>
				
				
				<div class="table_box5 table_box">
					<table width="1018" height="300" border="0" cellspacing="0" cellpadding="10">
						<tr class="table_name5 table_name">
							<th class="lyyt">来源/用途</th>
							<th class="wdjf">积分</th>
							<th class="sj">时间</th>
							<th class="bz">备注</th>
						</tr>
						<tr>
							<td class="no_have5 no_have" colspan="4"></td>
						</tr>
					</table>
					
					<div class="page_info1">共
						<span>0</span>
					页</div>
				</div>
				
				
				
				
				
				
				<!--<div id="order_info">
					<span class="lyyt">来源/用途</span>
					<span class="wdjf">积分</span>
					<span class="sj">时间</span>
					<span class="bz">备注</span>
				</div>
				<div class="part_info">您暂时没有积分哦！</div>
				<div class="page_info2">共
					<span>0</span>
				页</div>-->
			</div>
		</div>
	</body>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="../js/01.Ljp_Personal_Index.js"></script>
</html>
