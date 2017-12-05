<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>08.Ljp_Personal_Index-账户管理</title>
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
					<span>账户管理</span>
				</div>
				
				<div class="kyye">可用余额：<span>${user1.money}</span>元<a href="081.Ljp_Personal_Index.html"><button>去充值</button></a></div>
				
				<div id="syzk" class="jia">
					<span>账户明细</span><span>领取红包</span><span>充值</span><span>消费</span><span>退款</span><span>佣金收入</span>
				</div>
				
				
				
				<!--中间变化的部分-->
				<div id="xm_kind">
				
					
					<div class="table_box7 table_box p"  id="p1">
						<table width="1018" height="150" border="0" cellspacing="0" cellpadding="10">
							<tr class="table_name7 table_name">
								<th class="sj1">时间</th>
								<th class="sr">收入</th>
								<th class="zc">支出</th>
								<th class="bz1">备注</th>
							</tr>
							<tr>
								<td class="no_have7 no_have" colspan="6">没有找到符合条件的数据</td>
							</tr>
						</table>
						
						<div class="page_info1">共
							<span>0</span>
						页</div>
					</div>
					
					
					
					
					
					<div class="table_box7 table_box p"  id="p2">
						<table width="1018" height="150" border="0" cellspacing="0" cellpadding="10">
							<tr class="table_name7 table_name">
								<th class="lqsj1">领取时间</th>
								<th class="je">金额</th>
							</tr>
							<tr>
								<td class="no_have7 no_have" colspan="2">没有找到符合条件的数据</td>
							</tr>
						</table>
						
						<div class="page_info1">共
							<span>0</span>
						页</div>
					</div>
					
					
					
					
					
					<div class="table_box7 table_box p"  id="p3">
						<table width="1018" height="150" border="0" cellspacing="0" cellpadding="10">
							<tr class="table_name7 table_name">
								<th class="czsj">充值时间</th>
								<th class="je1">金额</th>
								<th class="czfs">充值方式</th>
								<th class="jzzt">充值状态</th>
								<th class="czdh">充值单号</th>
								<th class="cz1">操作</th>
							</tr>
							<tr>
								<td class="no_have7 no_have" colspan="6">没有找到符合条件的数据</td>
							</tr>
						</table>
						
						<div class="page_info1">共
							<span>0</span>
						页</div>
					</div>
					
					
					
					
					<div class="table_box7 table_box p"  id="p4">
						<table width="1018" height="150" border="0" cellspacing="0" cellpadding="10">
							<tr class="table_name7 table_name">
								<th class="xfsj">消费时间</th>
								<th class="je2">金额</th>
								<th class="dh">单号</th>
							</tr>
							<tr>
								<td class="no_have7 no_have" colspan="3">没有找到符合条件的数据</td>
							</tr>
						</table>
						
						<div class="page_info1">共
							<span>0</span>
						页</div>
					</div>
					
					
			
					
					
					
					<div class="table_box7 table_box p"  id="p5">
						<table width="1018" height="150" border="0" cellspacing="0" cellpadding="10">
							<tr class="table_name7 table_name">
								<th class="tksj">退款时间</th>
								<th class="je3">金额</th>
								<th class="dh1">单号</th>
							</tr>
							<tr>
								<td class="no_have7 no_have" colspan="3">没有找到符合条件的数据</td>
							</tr>
						</table>
						
						<div class="page_info1">共
							<span>0</span>
						页</div>
					</div>
					
					
					
					
					<div class="table_box7 table_box p"  id="p6">
						<table width="1018" height="150" border="0" cellspacing="0" cellpadding="10">
							<tr class="table_name7 table_name">
								<th class="yjsj">时间</th>
								<th class="yjsr">收入</th>
								<th class="yjbz">备注</th>
							</tr>
							<tr>
								<td class="no_have7 no_have" colspan="3">没有找到符合条件的数据</td>
							</tr>
						</table>
						
						<div class="page_info1">共
							<span>0</span>
						页</div>
					</div>
					
					
					
					
				</div>
				
				
				
				
				
				
				
				
				
				
			</div>
		</div>
	</body>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="../js/01.Ljp_Personal_Index.js"></script>
</html>
