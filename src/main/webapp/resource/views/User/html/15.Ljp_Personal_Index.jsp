<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="../css/01.Ljp_Personal_Index.css"/>
		<link rel="stylesheet" type="text/css" href="../css/02.Ljp_Personal_Index.css"/>
		<title>15.Ljp_Personal_Index-修改个人信息</title>
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
					<span>修改个人信息</span>
				</div>
				
				<div class="userinfo">
					<span class="rig">头像</span><input type="file"/><br />
					<span class="rig">昵称</span><input type="text" placeholder="${user1.userNickName}" /><br />
					<span class="rig">邮箱</span><input type="text" placeholder="${user1.userMail}" /><a href="151.Ljp_Personal_Index.html"><span class="change">绑定</span></a><br />
					<span class="rig">手机</span><input type="text" placeholder="${user1.userPhone}" /><a href="152.Ljp_Personal_Index.html"><span class="change">更改</span></a><br />
					<span class="rig">QQ</span><input type="text"  placeholder="${user1.userQQ}"/><br />
					<span class="rig">真实姓名</span><input type="text" placeholder="${user1.userTrueName}"/><br />
					<span class="rig">性别</span><input type="radio" name="male" /> 男
					<input type="radio" name="female" /> 女<br />
					<span class="rig">生日</span><input type="date" /><span class="sup">填写生日有惊喜</span><br />
					<span class="rig">身份证号</span><input type="text" placeholder="${user1.userIdentity}"/><br />
					<span class="rig">地区</span><select name="">
						<option value="">请选择</option>
					</select>
					<select name="">
						<option value="">请选择</option>
					</select>
					<select name="">
						<option value="">请选择</option>
					</select><br />
					<span class="rig">详细地址</span><input type="text" placeholder="${user1.userDetilHome}"/><br /><br />
					
					<hr />
					
					<br />
					<div class="g_word">
						<span>-</span>&nbsp;&nbsp;&nbsp;
						
						<span>修改个人信息</span>
					</div>
					<span class="rig">婚姻状况</span><input type="radio" /> 保密
					<input type="radio" /> 未婚
					<input type="radio" /> 已婚<br />
					<span class="rig">常饮用的酒品</span><input type="checkbox" /> 白酒
					<input type="checkbox" /> 红酒
					<input type="checkbox" /> 洋酒
					<input type="checkbox" /> 啤酒
					<input type="checkbox" /> 果酒<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" /> 黄酒
					<input type="checkbox" /> 名庄酒
					<input type="checkbox" /> 收藏酒
					<input type="checkbox" /> 保健酒
					<input type="checkbox" /> 其他<br />
					<span class="rig">可接受的酒品价位</span><input type="radio" /> 100元以下
					<input type="radio" /> 101~500元
					<input type="radio" /> 501~1000元
					<input type="radio" /> 1000元以上<br />
					<span class="rig">教育程度</span><select name="">
						<option value="">请选择</option>
						<option value="">初中</option>
						<option value="">高中</option>
						<option value="">中专</option>
						<option value="">大专</option>
						<option value="">大学</option>
						<option value="">本科</option>
						<option value="">硕士</option>
						<option value="">博士</option>
						<option value="">其他</option>
					</select><br />
					<span class="rig">从事职业</span><select name="">
						<option value="">请选择</option>
						<option value="">企业雇主/企业经营者</option>
						<option value="">办公职员（一般文员，业务，办事人员等）</option>
						<option value="">中层管理人员（总监，经理，主任等）</option>
						<option value="">专业人士（会计，律师，音乐家等）</option>
						<option value="">工人/蓝领</option>
						<option value="">公务员，公共事业单位人员</option>
						<option value="">自由职业者</option>
						<option value="">军人</option>
						<option value="">学生</option>
						<option value="">退休/无业人员</option>
						<option value="">家庭主妇</option>
						<option value="">其他</option>
					</select><br />
					<span class="rig">所属行业</span><select name="">
						<option value="">请选择</option>
						<option value="">计算机软件</option>
						<option value="">市场营销</option>
					</select>
					<br />
					<span class="rig">月均收入</span><select name="">
						<option value="">请选择</option>
						<option value="">1999以下</option>
						<option value="">2000~3999</option>
						<option value="">4000-5999</option>
						<option value="">6000~7999</option>
						<option value="">8000~12000</option>
						<option value="">12000以上</option>
					</select>
					<br />
					
					<input class="bcxg" type="button" value="保存修改" />
					
				</div>
				
			</div>
		</div>
	</body>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="../js/01.Ljp_Personal_Index.js"></script>
</html>
