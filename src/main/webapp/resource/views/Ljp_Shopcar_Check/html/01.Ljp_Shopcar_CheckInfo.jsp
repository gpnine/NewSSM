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
    <link rel="shortcut icon" href="<%=basePath%>/resource/views/Ljp_Shopcar_Check/img/logo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css"
          href="<%=basePath%>/resource/views/Ljp_Shopcar_Check/css/01.Ljp_Shopcar_CheckInfo.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/Ljp_Shopcar_Check/css/cityLayout.css"/>
    <title>购物车审核订单信息</title>
</head>

<body>
<div class="check_wrap">
    <!--logo和进度条-->
    <div class="head">
        <div class="logo">
            <a href=""><img src="<%=basePath%>/resource/views/Ljp_Shopcar_Check/img/check_info1.jpg"/></a>
        </div>
        <div class="info">
            <img src="<%=basePath%>/resource/views/Ljp_Shopcar_Check/img/check_info2.png"/>
        </div>
    </div>

    <!--具体信息-->
    <div class="infor">
        <div class="write_info">填写并核对订单信息</div>
        <div class="user_info ">
            <div class="change">
                <span>收货人信息</span>
                <span><a class="xiugai" href="###">&nbsp;&nbsp;&nbsp;[修改]</a></span>
                <div class="addre" style="line-height:20px;">
                    <span class="shouhuoren"></span>
                    <span class="iphone"></span><br>
                    <span class="dizhi" style="margin-left:10px;"></span>
                </div>
            </div>

            <div class="use_newInfo">
                <div class="yincangs"></div>
                <div class='yincang'>&nbsp;&nbsp;&nbsp;<input class='radio' type='radio' name="xuanze" id="xuanze"/>
                    <label for="xuanze">使用新地址</label><br/></div>


                <div class="display">
                    <span class="fie"><span class="field"><span>*</span> 收货人：</span><input class="user"
                                                                                           type="text"/><br/></span>
                    <span class="field"><span>*</span> 所在地区：</span><input name="" id="sel1" type="text"
                                                                          class="city_input" readonly="readonly"
                                                                          value="北京-北京市"><br/>
                    <span class="field"><span>*</span> 详细地址：</span><span class="sele_addr"></span><input class="area"
                                                                                                         type="text"/><br/>
                    <span class="field"><span>*</span> 电话：</span><input class="phone" type="text"/>
                </div>
            </div>
            <a href="" style="width:140px;height: 30px;display: block">
                <button class="save_infos">保存收货人信息</button>
            </a>
            <button class="save_info">保存收货人信息</button>
        </div>
        <!--支付及配送方式-->
        <div class="pay_way1">
            <span>支付及配送方式</span><br/>
            <span>
						<p style="display: inline;"><input type="radio" name="f" id="s" value="" checked="checked"
                                                           class="zffs"/><label
                                for="s">在线支付</label>&nbsp;&nbsp;&nbsp;</p>
					<p style="display: inline;"><input type="radio" name="f" id="d" value="" class="zffs"/><label
                            for="d">货到付款</label>(选择该方式后不支持货到付款的商品仍需在线支付)<br/></p>
					<small style="margin-left: 50px;">快递运输 由商家选择合作快递为您配送</small>
					</span>
        </div>

        <!--发票信息-->
        <div class="pay_way">
            <span class="fpxx">发票信息</span>
            <span class="fptk">
						<input class="fa1 fapiao" name="fa" type="radio" value="不需要发票" checked="checked"/> 不需要发票&nbsp;&nbsp;&nbsp;
						<input class="fa2 fapiao" name="fa" type="radio" value="纸质发票"/> 纸质发票&nbsp;&nbsp;&nbsp;
						<input class="fa3 fapiao" name="fa" type="radio" value="电子发票"/> 电子发票&nbsp;&nbsp;&nbsp;
					</span><br/>
            <span class="f_piao">发票抬头：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 发票内容：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 酒水&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button>修改</button></span>

            <div class="change_a">
                <div class="change_b">
                    <span class="fp1 fp">个人发票</span><span class="fp2 fp">普通发票</span><span class="fp3 fp">专门发票</span>
                </div>
                <div class="cha">X</div>

                <div class="change_c change_c1">
                    <p>发票抬头：</p>
                    <p>发票内容：</p>
                    &nbsp;&nbsp;&nbsp;<input type="radio" checked/> 酒水<br/>
                    <button>确定</button>
                </div>

                <div class="change_c2 change_c1">
                    <p>发票抬头：</p>
                    <input class="c2" class="fptt" type="text" placeholder="请填写公司名称"/>
                    <p>纳税人识别号：</p>
                    <input class="c2" class="nsrsbh" type="text" placeholder="请填写公司税号"/><br/>
                    <p>发票内容：</p>
                    &nbsp;&nbsp;&nbsp;<input type="radio" checked/> 酒水<br/>
                    <button>确定</button>
                </div>

                <div class="change_c3 change_c1">
                    <p>发票抬头：</p>
                    <input class="c3" type="text" placeholder="请填写公司名称"/>
                    <p>注册地址：</p>
                    <input class="c3" type="text" placeholder="请填写公司注册地址"/>
                    <p>开户行：</p>
                    <input class="c3" type="text" placeholder="请填写公司开户行"/>
                    <p>银行账号：</p>
                    <input class="c3" type="text" placeholder="请填写公司银行账号"/>

                    <p>纳税人识别号：</p>
                    <input class="c3" type="text" placeholder="请填写公司税号"/>
                    <p>电话：</p>
                    <input class="c3" type="text" placeholder="请填写公司电话"/>
                    <p>发票内容：</p>
                    &nbsp;&nbsp;&nbsp;<input type="radio" checked/> 酒水<br/>
                    <button>确定</button>
                </div>

            </div>
        </div>

        <!--商品清单-->
        <div class="goods_list">
            <p class="spqd">商品清单</p>
            <p class="haha">
                <a class="zjzy" href="">中酒自营</a>
            </p>
            <table width="900" border="0" cellspacing="3" cellpadding="0">
                <tr>
                    <td class="td" style="width: 600px;">商品</td>
                    <td class="td" style="width: 100px;">服务</td>
                    <td class="td" style="width: 100px;">单价</td>
                    <td class="td" style="width: 100px;">数量</td>
                </tr>
            </table>

            <div class="goods_sell">


            </div>

            <!--给商家留言-->
            <div class="leave_word">
                <div class="box">
                    <span class="mess">给商家留言：&nbsp;&nbsp;</span>
                    <textarea placeholder="选填" class="text_area" rows="4" cols="40">无</textarea>
                    <div class="sum">
                        <span>店铺合计(含运费)：</span> ￥
                        <span class="total_price">399</span>
                    </div>
                    <div class="yun">
                        <span>(满99.00免运费)运费：</span>
                        <span class="yunfei">10</span>
                    </div>
                </div>
            </div>

            <!--结算-->
            <div class="sell_finsh">
                <p><span class="total_counts">1</span>件商品，总商品金额：￥<span class="total_price">399.00</span></p>
                <p>运费：￥<span>10</span></p>
                <p><input type="checkbox" checked="checked" class="shiyongjifen"/> 使用平台积分</p>
                <p>平台可使用<span class="jifen">5</span>积分</p>
            </div>
            <!--最后-->
            <div class="finsh" style="position: relative;">
                <span class="return"><a href="">返回修改购物车</a></span>
                <span class="get">可获得平台积分<span class="jifen">5</span>积分</span>
                <span class="money1">应付金额：<span class="total_prices"
                                                style="color: red;font-size: 16px;font-weight: bolder;">399</span>元</span>
                <a class="tijiao" style="position: absolute;cursor:pointer;right:20px;top:5px;width:100px;height:40px;">
                    <button style="background: #FC6E75;color:white;text-align:center;line-height:20px;width:100px;height:40px;">
                        提交订单
                    </button>
                </a>

            </div>

        </div>

    </div>

</div>
</body>
<script src="<%=basePath%>/resource/views/Ljp_Shopcar_Check/html/jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>/resource/views/Ljp_Shopcar_Check/js/cityselect.js"></script>
<script>
    //获取购物车选购的商品
    //
    $.ajax({
        type: "get",
        url: "<%=basePath%>/orders/findWines.do",
        data: {
            userPhone: 18395592587
        },
        success: function (data) {
            for (var i = 0; i < data.length; i++) {
                $("<div class='sell_info'><div class='sell_img'><a href=''><span class='img_wid' style='display:none;'>" + data[i].wines.wid + "</span><img class='dingdantu' src='<%=basePath%>/resource/views/img/" + data[i].wines.wineImg1 + "' alt='' /></a></div>" +
                    "<div class='info_a2'><p><a href=''>" + data[i].wines.wineDegree + "°" + data[i].wines.wineName + " " + data[i].wines.wineLiter + "</a></p><p>商品货号：<small>" + data[i].wines.wineBianhao + "</small></p>" +
                    "</div><div class='sd'><img src='<%=basePath%>/resource/views/Ljp_Shopcar_Check/img/check_info.jpg' alt='' /></div>" +
                    "<div class='price'>￥<span class='univalent'>" + data[i].wines.winePrice + "</span></div>" +
                    "<div class='num'>x<span class='univalent_count'>" + data[i].counts + "</span></div></div>").appendTo($(".goods_sell"));
            }
            $(".total_price").html(function () {
                var counts = 0;
                $(".univalent").each(function (index, el) {
                    counts += el.innerHTML * parseInt($(this).parent(".price").siblings(".num").find(".univalent_count").html());
                })
                return counts;

            })
            $(".jifen").html(function () {
                var jifen = parseInt($(".total_price").html() * 0.03);
                return jifen;
            })
            $(".total_prices").html(function () {
                var qian = 0;
                if ($(".total_price").html() > 99) {
                    qian = parseInt($(".total_price").html()) - $(".jifen").html();
                }
                $(".shiyongjifen").click(function () {
                    $(".total_prices").html(function () {

                        if ($(".shiyongjifen").is(":checked") && $(".total_price").html() <= 99) {
                            qian = parseInt($(".total_price").html()) + parseInt($(".yunfei").html()) - $(".jifen").html();
                            console.log(12);
                        } else if ($(".shiyongjifen").is(":checked") && $(".total_price").html() > 99) {
                            qian = parseInt($(".total_price").html()) - $(".jifen").html();
                            console.log(13);
                        } else if ($(".total_price").html() > 99) {
                            qian = parseInt($(".total_price").html());
                            console.log(14);
                        }
                        else {
                            qian = parseInt($(".total_price").html()) + parseInt($(".yunfei").html())
                            console.log(15);
                        }
                        return qian;
                    })

                })


                return qian;
            });
            $(".total_counts").html(function () {
                var counts = 0;
                $(".univalent_count").each(function (index, el) {
                    counts += parseInt(el.innerHTML);
                })
                return counts;

            })
        }
    });
    ////
    //先获取所有后台地址信息
    $.ajax({
        url: "<%=basePath%>/orders/findWuliu.do?userPhone=18395592587",
        type: "get",
        data: {},
        success: function (data) {
//	console.log(data);
            for (var i = 0; i < data.length; i++) {
                $("<p class='address'><input type='radio' class='xuanze' name='xuanze' id='xuanze" + i + "' value='" + data[i].xId + "' /><label for='xuanze" + i + "'><span class='xm'>" + data[i].shouhuoName + "</span>&nbsp;&nbsp;&nbsp;<span class='dh'>" + data[i].shouhuoPhone + "</span>&nbsp;&nbsp;&nbsp;" +
                    "<span class='dz'>" + data[i].shouhuoAdress + "</span><span class='dzz'>" + data[i].xiangxiAdress + "</span><span class='use_newInfo_xiugai'>&nbsp;&nbsp;&nbsp;修改</span>" +
                    "<span class='use_newInfo_shanchu' >&nbsp;&nbsp;&nbsp;删除</span></label></p>").appendTo($(".yincangs"));
            }
            if ($(".xuanze").is(":checked")) {
                $(".shouhuoren").html($(".xuanze:checked").siblings("label").find(".xm").html());
                $(".iphone").html($(".xuanze:checked").siblings("label").find(".dh").html());
                $(".dizhi").html($(".xuanze:checked").siblings("label").find(".dz").html() + " " + $(".xuanze:checked").siblings("label").find(".dzz").html());
            }
            $(".address").css("display", "none");
            $(".yincang").css("display", "none");
            //点击修改显示出所有发货地址信息以及新增信息
            $(".xiugai").click(function () {
                $(".address").css("display", "block");
                $(".yincang").css("display", "block");
                $(".addre").css("display", "none");

            })
            $(".xuanze").click(function () {
                var xid = $(this).val();
                $(".save_info").click(function () {
                    $(".addre").css("display", "block");
                    $.ajax({
                        url: "<%=basePath%>/orders/findByxId.do",
                        method: "get",
                        data: {
                            xId: xid
                        },
                        success: function (data) {
                            $(".address").css("display", "none");
                            $(".yincang").css("display", "none");
                            $(".shouhuoren").html(data.shouhuoName);
                            $(".iphone").html(data.shouhuoPhone);
                            $(".dizhi").html(data.shouhuoAdress + " " + data.xiangxiAdress);
                        }
                    })
                })

            })

            var count2 = 4;

            //点击新增地址,进行新添加地址
            $(".yincang").click(function () {
                $(".save_info").css("display", "block");
                $(".save_infos").css("display", "none");
                count2++;
                $(".display").css("display", "block");
                $(".user").val("");
                $(".phone").val("");
                $(".area").val("");
                $(".save_info").on("click", function () {
                    $(".addre").css("display", "block");
                    var xm = $(".user").val(); //用户名
                    var area1 = $(".city_input").val();
                    var area2 = $(".area").val(); //地址
                    var phone = $(".phone").val(); //电话
                    $(".shouhuoren").html(xm);
                    $(".iphone").html(phone);
                    $(".dizhi").html(area1 + " " + area2);
                    //如果以上三项不为空，且电话号码符合正则
                    if ($(".radio").is(':checked')) {
                        if ($(".user").val() != "" && $(".area1").val() != "" && $(".phone").val() != "" && ss) {
                            $("<p class='address'><input type='radio' class='xuanze' name='xuanze' id='xuanze" + count2 + "' value='' checked='checked' /><label for='xuanze" + count2 + "'><span class='xm'>" + xm + "</span>&nbsp;&nbsp;&nbsp;<span class='dh'>" + phone + "</span>&nbsp;&nbsp;&nbsp;" +
                                "<span class='dz'>" + area1 + "</span><span class='dzz'>" + area2 + "</span><span class='use_newInfo_xiugai'>&nbsp;&nbsp;&nbsp;修改</span>" +
                                "<span class='use_newInfo_shanchu' >&nbsp;&nbsp;&nbsp;删除</span></label></p>").appendTo($(".yincangs"));
                        }
                    }
                    $.ajax({
                        type: "get",
                        url: "<%=basePath%>/orders/insertAdress.do",
                        data: {
                            ShouhuoName: xm,
                            ShouhuoAdress: area1,
                            XiangxiAdress: area2,
                            ShouhuoPhone: phone,
                            userPhone: 18395592587
                            //				user_id:"",//这个不知道填什么❓❓❓
                        },
                        success: function (data) {

                            $(".addre").css("display", "block");
                            var xm = $(".user").val(); //用户名
                            var area1 = $(".city_input").val(); //地址
                            var area2 = $(".area").val(); //地址
                            var phone = $(".phone").val(); //电话
                            $(".shouhuoren").html(xm);
                            $(".iphone").html(phone);
                            $(".dizhi").html(area1 + " " + area2);


                        }
                    })
                    $(".address").css("display", "none");
                    $(".yincang").css("display", "none");
                    $(".display").css("display", "none");
                })

            })

            //对信息进行修改


            $(".use_newInfo_xiugai").click(function () {
                $(".save_info").css("display", "none");
                $(".save_infos").css("display", "block");
                $(this).parents("label").siblings(".xuanze").val();
                console.log($(this).parents("label").siblings(".xuanze").val());
                $(".display").css("display", "block");
                $(".user").val($(this).siblings(".xm").html());
                $(".area").val($(this).siblings(".dzz").html());
                $(".city_input").val($(this).siblings(".dz").html());
                $(".phone").val($(this).siblings(".dh").html());
                var ss = $(this);
                $(".save_infos").on("click", function () {
                    $(".addre").css("display", "block");
                    var xm = $(".user").val(); //用户名
                    var area1 = $(".city_input").val(); //地址
                    var area2 = $(".area").val(); //地址
                    var phone = $(".phone").val(); //电话
                    $(".shouhuoren").html(xm);
                    $(".iphone").html(phone);
                    $(".dizhi").html(area1 + " " + area2);
                    //如果以上三项不为空，且电话号码符合正则
                    if ($(".user").val() != "" && $(".area1").val() != "" && $(".phone").val() != "" && ss) {
                        ss.siblings(".xm").html(xm);
                        console.log(ss);
                        console.log(ss.siblings(".xm"));
                        ss.siblings(".dh").html(phone);
                        ss.siblings(".dz").html(area1);
                        ss.siblings(".dzz").html(area2);
                        $(".address").css("display", "none");
                        $(".yincang").css("display", "none");
                        $(".display").css("display", "none");
                    }
                    //没有执行
                    $.ajax({
                        type: "get",
                        url: "<%=basePath%>/orders/UpdateAdress.do",

                        data: {
                            ShouhuoName: $(".user").val(),
                            ShouhuoAdress: $(".city_input").val(),
                            XiangxiAdress: $(".area").val(),
                            ShouhuoPhone: $(".phone").val(),
                            xId: $(this).parents("label").siblings(".xuanze").val()
                        },
                        success: function (data) {
                            $(".shouhuoren").html($(".user").val());
                            $(".iphone").html($(".phone").val());
                            $(".dizhi").html($(".city_input").val() + " " + $(".area").val());
                        }
                    })
                })

            })

            //对信息进行删除
            $(".use_newInfo_shanchu").click(function () {
                $.ajax({
                    type: "get",
                    url: "<%=basePath%>/orders/DeleteAdress.do",
                    data: {
                        xId: $(this).parents("label").siblings(".xuanze").val()
                    },
                    success: function (data) {

                    }
                })
                $(this).parents(".address").remove();
            })
        }


    })
    //电话号码的正则
    var ss = false;
    $(".phone").on("blur", function () {
        var dha = ($('.phone').val());
        //电话号码不为空
        if (dha != "") {
            var reg = /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,3-9]))\d{8}$/;
            //且符合电话的正则表达式
            if (dha.match(reg)) {
                ss = true;
                //就把电话号码传送到后台数据库
                $.ajax({
                    type: "get",
                    url: "<%=basePath%>/orders/findCars.do?userPhone=18395592587",
                    data: {},
                    success: function (data) {
                        console.log(data)
                    }
                })
            } else {
                ss = false;
                alert("请填写正确的电话号码！");
            }
        } else {
            alert("电话号码为必填项！")
        }
    })
    //地区
    $(function () {
        init_city_select($("#sel1, #sel2"));
    });
    //点击发票单选框出现
    $(".fa1").on("click", function () {
        $(".f_piao").hide("normal");
    })
    $(".fa2").on("click", function () {
        $(".f_piao").show("normal");
    })
    $(".fa3").on("click", function () {
        $(".f_piao").show("normal");
    })
    //点击修改，修改发票信息的弹框出现
    $(".f_piao button").on("click", function () {
        $(".change_a").css("display", "block");
    })
    var fp = $(".fp");
    var last = fp[0];
    var chan_c = $(".change_c1");
    var last_c = chan_c[0];
    for (var i = 0; i < fp.length; i++) {
        fp[i].index = i;
        fp[i].onclick = function () {
            this.style.backgroundColor = "red";
            this.style.color = "white";
            chan_c[this.index].style.display = "block";
            last.style.backgroundColor = "white";
            last.style.color = "black";
            last_c.style.display = "none";
            last = fp[this.index];
            last_c = chan_c[this.index];
        }
    }
    $(".cha").on("click", function () {
        $(".change_a").css("display", "none");
    })
    $(".change_c button").on("click", function () {
        $(".change_a").css("display", "none");
    })
    $(".change_c2 button").on("click", function () {
        if ($('.c2').val() == "") {
            alert("项目都是必填的哦😯！");
        } else {
            $(".change_a").css("display", "none");
        }
    })
    $(".change_c3 button").on("click", function () {
        if ($('.c3').val() == "") {
            alert("项目都是必填的哦😯！");
        } else {
            $(".change_a").css("display", "none");
        }
    })
    $(".total_price").html(function () {
        var counts = 0;
        $(".univalent").each(function (index, el) {
            counts += el.innerHTML * parseInt($(this).parent(".price").siblings(".num").find(".univalent_count").html());
        })
        return counts;
    })

    //提交更新订单
    $(".tijiao").click(function () {
        $.ajax({
            url: "<%=basePath%>/orders/updateOrders.do",
            method: "get",
            data: {
                OrderPay: $(".zffs:checked").siblings("label").html(),
                OrderAllMoney: $(".total_price").html(),
                OrderTicket: $(".fapiao:checked").val(),
                OrderText: $(".text_area").val(),
                OrderScore: $(".jifen").html(),
                OrderYunfei: $(".yunfei").html(),
                Adress_id: $(".xuanze:checked").val(),
                userPhone: 18395592587
            },
            success: function (data) {
                if (data) {
                    window.location.href = '<%=basePath%>/resource/views/zhifu/html/lkl_zhifu.jsp';
                }
            }

        })
    })

</script>

</html>