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
    <title>注册页</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/szz_register.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/css/szz_base.css"/>
</head>
<body>
<div class="top">
    <div class="head">
        <div class="top_left">
            <img src="<%=basePath%>/resource/views/img/shoucang.png" width="13"/>
            <a href="###" class="shoucangcity">收藏商城</a>
        </div>
        <div class="top_right">
            <span>您好 ! 欢迎来到商城</span>
            <a href="szz_login.jsp">[登录]</a>
            <a href="szz_register.jsp">[免费注册]</a>
        </div>
    </div>
</div>
<div class="below_top">
    <a href="###"><img src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/logo.jpg" height="60"/></a>
    <div>欢迎注册</div>
</div>
<div class="zhucedenglu">我已注册,现在就
    <a href="szz_login.jsp" class="denglu">登录</a>
</div>
<form action="<%=basePath%>/user/insertUser.do" method="post">
    &nbsp;&nbsp;&nbsp;<span>*</span>手机号码：<input type="text" name="userPhone" id="phone" class="inputs"/>
    <br/>
    &nbsp;&nbsp;&nbsp;<span>*</span>图形验证：<input type="text" name="yanzheng" id="yanzheng" class="inputs"/>
    <span class="txingyanzheng">1234</span>
    <br/>
    <span>*</span>请设置密码：<input type="password" name="password" id="pass1" class="inputs"/>
    <br/>
    <span>*</span>请确认密码：<input type="password" name="pass2" id="pass2" class="inputs"/>
    <br/>
    <span>*</span>手机验证码：<input type="text" name="phoneCode" id="phoneCode" class="inputs"/>
    <button id="btn">获取验证码</button>
    <br/>
    <input type="checkbox" name="checks" id="checks" value=""/>
    <label for="checks">我已阅读并同意</label><label>《</label><a href="###" id="xieyi"
                                                          style="color: red;">用户注册协议</a><label>》</label>
    <br/>
    <input type="submit" value="立即注册" name="submit" id="submits"/>
    <div class="tishi">
        <div>请输入手机号码</div>
        <div>请输入图片验证码</div>
        <div>请输入6-20位由数字、字母或下划线组成的密码</div>
        <div>请再次输入密码</div>
        <div>请输入手机验证码</div>
    </div>
</form>
<div class="bottom">Copyright©2017 中酒网 版权所有</div>
</body>
<script src="<%=basePath%>/resource/views/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/resource/views/js/szz_register.js"></script>
<script>
    // //验证手机号是否重复
    var xhr = new XMLHttpRequest();
    xhr.onload = function () {
        console.log(this.responseText);
        if (document.getElementById("phone").value != "" && this.responseText == "true") {
            tishi[0].style.visibility = "hidden";
            tishi[0].innerHTML = "请输入手机号";
        } else {
            tishi[0].style.visibility = "visible";
            tishi[0].innerHTML = "该账号已注册,请更换号码";
        }
    }
    //正则，限定手机号，复合格式，才能继续提交
    phone.onblur = function () {
        var reg = /^1[13-9]\d{9}$/g;
        var phoneNumber = this.value.match(reg);
        if (phoneNumber != null) {
            xhr.open("GET", "<%=basePath%>/user/findUserPhone.do?userPhone=" + document.getElementById("phone").value);
            xhr.send();
            // xhr.open("POST","http://10.80.13.161:8081/user/findUserPhone.do",true);
            // console.log(document.getElementById("phone").value);
            // var formData = new FormData();
            // formData.append("userPhone",document.getElementById("phone").value);
            // xhr.send(formData);
            // $.ajax({
            //     url:"http://10.80.13.161:8081/user/findUserPhone.do",
            //     method:"get",
            //     data:{
            //         userPhone:document.getElementById("phone").value
            //     },
            //     success:function (data) {
            //         console.log(data)
            //     }
            // })
        }
    }
</script>
</html>
