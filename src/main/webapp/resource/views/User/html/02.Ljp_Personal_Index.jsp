<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/01.Ljp_Personal_Index.css"/>
		<link rel="stylesheet" type="text/css" href="../css/02.Ljp_Personal_Index.css"/>
		<title>02.Ljp_Personal_Index-我的订单</title>
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
					<span>我的订单</span>
				</div>
				
			<!--发送查询订单请求-->
				<form action="regAll.php" method="post">
					<div id="thr_input">
						关键字：<input name="keyword" type="text" placeholder="商品名称、订单编号"/>
							
						<!-- 用于输入不含时区的日期 -->
						开始日期：<input name="begin_date" type="date">
						结束日期：<input name="end_date" type="date" />
						<!--<button>搜索</button>-->
						<input type="submit" name="btn" class="button" value="搜索"/>
					</div>
					
				</form>
				
				
				
				<div class="table_box1 table_box">
					<table width="1018" height="300" border="0" cellspacing="0" cellpadding="10">
						<tr class="table_name1 table_name">
							<th class="ddxx">订单信息</th>
							<th class="djsl">单价 数量</th>
							<th class="czsp">操作商品</th>
							<th class="ddsf">订单实付</th>
							<th class="ddqxz">
								<select name="">
									<option value="">请选择…</option>
									<option value="">待付款</option>
									<option value="">待发货</option>
									<option value="">待收货</option>
									<option value="">已关闭</option>
									<option value="">已完成</option>
									<option value="">未评价</option>
								</select>
							</th>
							<th class="cz">操作</th>
						</tr>
						<tr>
							<td class="no_have1 no_have" colspan="6">
								${cars}
							</td>
						</tr>
					</table>
					
					<div class="page_info">共
						<span>0</span>
					页</div>
				</div>
				
				
				
				
				
			</div>
		</div>
	</body>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="../js/01.Ljp_Personal_Index.js"></script>

</html>
