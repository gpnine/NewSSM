<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html lang="en">
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    %>
    <meta charset="UTF-8">
    <title>购物车结算</title>
    <link rel="shortcut icon" href="<%=basePath%>/resource/views/gouwuche/img/logo.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/gouwuche/css/li_gouwuchejiesuan.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/resource/views/gouwuche/css/lkl_base.css"/>
</head>

<body>
<div class="header">

</div>
<div class="content">
    <div class="jindu pr">
        <a class="pa jindu_pa_a" href=""><img
                src="http://img6.zhongjiu.cn/resourceb2b2c/Storage/Plat/ImageAd/logo.jpg"/></a>
        <ol class="pa jindu_pa_img" style="width:490px;font-size:12px">
            <img class="" src="<%=basePath%>/resource/views/gouwuche/img/step1.png"/>
            <li class="step-1 fl" style="color: #62c92b;margin-left:45px">1.我的购物车</li>
            <li class="step-2 fl" style="color: #b7c2c7;margin-left:70px">2.填写核对订单信息</li>
            <li class="step-3 fl" style="color: #b7c2c7;margin-left:65px">3.成功提交订单</li>
        </ol>
    </div>
    <h2>
        我的购物车
    </h2>
    <div class="caozuogou">
        <ol class="caozuogou_ol"></ol>
    </div>
    <div class="shangpintuijian">
        <div class="">
            <a class="tuijian" href="###">商品推荐</a>
        </div>
        <ol class="shangpintuijian_lists clearfix">
            <!--设置商品推荐*************************************-->

            <!--设置商品推荐结束******************************************-->
        </ol>
    </div>
</div>
<div class=" pa body_alert">
    <div class="body_alert_box">
        <ol class="body_alert_box_ol">
            <li style="border-bottom: 1px solid lightgray;padding:10px 0;">
                <div style="overflow: hidden;">
                    <img style="vertical-align: middle;margin-left:-88px;margin-right:10px;"
                         src="<%=basePath%>/resource/views/gouwuche/img/icon48.png"/>确定要从购物车移除该商品吗?
                </div>
            </li>
            <li style="text-align: center;margin-top:10px;">
                <button class="btn_queding" style="background:red;width:60px;height:30px;color:white;outline:none">
                    确定
                </button>
                <button class="btn_quxiao" style="width:60px;height:30px;background: white;outline:none">取消</button>
            </li>
        </ol>
    </div>
</div>
</body>
<script src="<%=basePath%>/resource/views/gouwuche/js/jquery-3.2.1.min.js"></script>
<script>
    //		使用Ajax获取购物车中商品
    $.ajax({
        method: "get",
        url: "<%=basePath%>/wine/findCars.do?userPhone=18395592587",
        data: {},
        success: function (data) {
            if (data.length == 0) {
                $("<li class='clearfix' style='width:100%;padding:10px;background:#F3F3F3'><div style='float:left;width:300px;height:100%;'><img style='float:right;margin-right:20px;' src='../img/cart-empty-bg.png'/></div><div style='float:left;'><p style='margin:0'>购物车内暂时没有商品</p><p style='margin:0'><a href='lkl_index.html' style='color:red;display:inline'>去首页</a>挑选喜欢的商品</p></div></li>").appendTo($(".caozuogou_ol"))

            } else {
                $("<li class='caozuogou_list clearfix' style='background: #EFF2F5;'>"
                    + "<div class='caozuogou_list_caozuo'>"
                    + "<input class='caozuogou_list_caozuo_quanxuan caozuogou_list_caozuo_quanxuan_zhongjiu'"
                    + "checked='checked' type='checkbox' name='' id='' value=''/>全选"
                    + "</div>"
                    + " <div class='caozuogou_list_caozuo' style='line-height: 45px;'>商品</div>"
                    + "<div class='caozuogou_list_caozuo' style='line-height: 45px;'>商城价</div>"
                    + "<div class='caozuogou_list_caozuo' style='line-height: 45px;'>数量</div>"
                    + "<div class='caozuogou_list_caozuo' style='line-height: 45px;'>操作</div>"
                    + "</li>"
                    + "<li class='caozuogou_list clearfix caozuogou_list_bgss caozuogou_list_bgss_s'>"
                    + "<!--物品添加区域-->"
                    + "<input type='checkbox' checked='checked'"
                    + " class='caozuogou_list_caozuo_quanxuan_zhongjiu caozuogou_list_caozuo_quanxuan_zhongjius'"
                    + "name='' value=''/>中酒自营"
                    + "<ol class='caozuogou_list_bgss_ol'></ol>"
                    + "<div class='caozuogou_list caozuogou_list_bgs clearfix'>"
                    + "<div class='caozuogou_list_caozuo'>"
                    + "<input type='checkbox' name='' checked='checked' id='' value=''"
                    + "class='caozuogou_list_caozuo_quanxuan caozuogou_list_caozuo_quanxuan_zhongjiu'/>全选"
                    + "<span class='caozuogou_list_caozuo_quanshan'>删除</span>"
                    + "<span class='inpcounts'>"
                    + "</span>"
                    + "</div>"
                    + "<div class='caozuogou_list_caozuo'"
                    + "style=' vertical-align: middle; text-align: left;line-height: 45px;'>"
                    + "<span class='counts' style='color:red'>0</span><span>件商品</span>"
                    + "</div>"
                    + "<div class='caozuogou_list_caozuo' style='line-height:20px; width:200px;line-height: 45px;'>"
                    + "<span>总计(不含运费)：</span><span class='prices'>0</span>"
                    + "</div>"
                    + "<div class='caozuogou_list_caozuo' style='line-height:45px'>"
                    + "<input class='qujiesuan' type='button' value='去结算'/>"
                    + "<!--<button ></button>-->"
                    + "</div>"
                    + "</div>"
                    + "</li>").appendTo(".caozuogou_ol");
                for (var i = 0; i < data.length; i++) {
                    $("<li class='caozuogou_list_bgss_ol_li caozuogou_list_bg clearfix'><div class='caozuogou_list_caozuo'>" +
                        "<input type='checkbox' checked='checked' name='' id='' value='" + data[i].wines.wid + "' class='caozuogou_list_caozuo_quanxuan_danpin' />" +
                        "<a style='display: inline;' href='<%=basePath%>/wine/goods.do?wid="
                        + data[i].wines.wid + "'><img  src='<%=basePath%>/resource/views/img/" + data[i].wines.wineImg1 + "' style='width:50px; vertical-align: middle;' /></a></div>" +
                        "<div class='caozuogou_list_caozuo' style=' vertical-align: middle; text-align: left;'><div class=''>" +
                        "<a href='<%=basePath%>/wine/goods.do?wid="
                        + data[i].wines.wid + "' class='a_hover'>" + data[i].wines.wineName + "</a></div><div style='margin-top:12px'>" + data[i].wines.wineBianhao + "</div></div>" +
                        "<div class='caozuogou_list_caozuo' style=' vertical-align: middle;line-height:50px'><span>￥</span>" +
                        "<span class='caozuogou_list_caozuo_price'>"
                        + data[i].wines.winePrice + "</span></div><div class='caozuogou_list_caozuo' style='line-height:50px'>" +
                        "<input class='caozuogou_list_caozuo_ys' type='button' value='-' /><input class='caozuogou_list_caozuo_count' style='width:30px;" +
                        "text-align: center;' type='text' value='" + data[i].counts + "' /><input class='caozuogou_list_caozuo_ys' type='button' value='+' />" +
                        "</div><div class='caozuogou_list_caozuo_shanchu caozuogou_list_caozuo' style='line-height:50px'>删除</div></li>").appendTo($(".caozuogou_list_bgss_ol"));
                }
                change();
                //che();
                $(".car").html(function () {
                    var coutss = 0;
                    $(".caozuogou_list_caozuo_count").each(function (index, el) {
                        coutss += parseInt(el.value);
                    })
                    return coutss;
                })
                count_onclick();
                //    //将商品插入订单，提交订单
                $(".qujiesuan").click(function () {
                    //        提交订单
                    $.ajax({
                        url: "<%=basePath%>/orders/insertOrder.do",
                        method: "get",
                        data: {
                            userPhone: 18395592587,
                        },
                        success: function (data) {
                            var arrss = [];
                            var wid = [];
                            $(".caozuogou_list_caozuo_quanxuan_danpin:checked").each(function (index, el) {
                                arrss.push(el.value);
                                wid = arrss.join("-")
                            })
                            $.ajax({
                                url: "<%=basePath%>/orders/insertWine.do",
                                async:false,
                                method: "get",
                                data: {
                                    userPhone: 18395592587,
                                    wineId: wid
                                },
                                success: function (data) {
                                    if (data){
                                        window.location.href = '<%=basePath%>/resource/views/Ljp_Shopcar_Check/html/01.Ljp_Shopcar_CheckInfo.jsp';
                                    }

                                }
                            })
                        }
                    })
                })
            }
        }
    });
    <%--$(".qujiesuan").click(function () {--%>
    <%--$.ajax({--%>
    <%--url: "<%=basePath%>/orders/tijiaoDingdan.do",--%>
    <%--method: "get",--%>
    <%--data: {--%>
    <%--userPhone: 18395592587,--%>
    <%--},--%>
    <%--success: function (data) {--%>

    <%--}--%>
    <%--})--%>
    <%--})--%>
    //设置商品推荐

    $.ajax({
        type: "get",
        url: "<%=basePath%>/wine/rexiao.do",
        async: true,
        success: function (data) {
//		43°红星蓝瓶八年陈酿 500ml （12瓶装）
            for (i in data) {
                $("<li class='fl shangpintuijian_list'><a class=' pr shangpintuijian_list_a' href='<%=basePath%>/wine/goods.do?wid="
                    + data[i].wid + "'>"
                    + "<img class='mypic' src='<%=basePath%>/resource/views/img/" + data[i].wineImg1 + "' style='height:182px;margin:0 auto' />"
                    + "<div class='pa shangpintuijian_list_a_hover'>去购买&gt;</div></a><div class=''><a href=''>"
                    + "<p class='shangpintuijian_list_p'>" + data[i].wineDegree + "°" + data[i].wineName
                    + " " + data[i].wineLiter + data[i].winePrice + "一件" + "</p></a></div></li>").appendTo($(".shangpintuijian_lists"))
            }

        }
    });
    <%--function che() {--%>
    <%--var arrWid = [];--%>
    <%--$(".caozuogou_list_caozuo_quanxuan_danpin").each(function (index, el) {--%>
    <%--arrWid.push(el.value)--%>
    <%--for (var i = 0; i < arrWid.length; i++) {--%>
    <%--if (el.checked) {--%>
    <%--$.ajax({--%>
    <%--url: "<%=basePath%>/car/updateChecked.do",--%>
    <%--method: "get",--%>
    <%--data: {--%>
    <%--checks: 1,--%>
    <%--wineId: arrWid[i],--%>
    <%--},--%>
    <%--success: function (data) {--%>

    <%--}--%>
    <%--})--%>
    <%--}--%>
    <%--else {--%>
    <%--$.ajax({--%>
    <%--url: "<%=basePath%>/car/updateChecked.do",--%>
    <%--method: "get",--%>
    <%--data: {--%>
    <%--checks: 0,--%>
    <%--wineId: arrWid[i],--%>
    <%--},--%>
    <%--success: function (data) {--%>

    <%--}--%>
    <%--})--%>
    <%--}--%>
    <%--}--%>
    <%--})--%>
    <%--}--%>

    function count_onclick() {
        // 六个触发事件地方
        // 全选  单选 删除 删除所有  加 减
        // 全选
        $(".caozuogou_list_caozuo_count").change(function () {
            change();
//            che();

        })
        $(".caozuogou_list_caozuo_quanxuan").click(function () {
            $(".caozuogou_list_caozuo_quanxuan_zhongjiu").prop("checked", this.checked);
            $(".caozuogou_list_caozuo_quanxuan_danpin").prop("checked", this.checked);
            change();
        })
        $(".caozuogou_list_caozuo_quanxuan_zhongjiu").click(function () {
            $(".caozuogou_list_caozuo_quanxuan_zhongjiu").prop("checked", this.checked);
            $(".caozuogou_list_caozuo_quanxuan_danpin").prop("checked", this.checked);
            change();
        })
        //单选
        $(".caozuogou_list_caozuo_quanxuan_danpin").click(function () {
            $(".caozuogou_list_caozuo_quanxuan_zhongjiu").prop("checked", $('.caozuogou_list_caozuo_quanxuan_danpin:checked').length == $('.caozuogou_list_caozuo_quanxuan_danpin').length);
            change();
            ss();
//            che();
        })
        $('.caozuogou_list_caozuo_shanchu').click(function () {
            //body_alert
            var _this = this;
            $(".body_alert").css("display", "block");
            var wineId = $(this).siblings(".caozuogou_list_caozuo").find(".caozuogou_list_caozuo_quanxuan_danpin").val();
            $(".btn_queding").click(function () {
                $.ajax({
                    url: "<%=basePath%>/car/deleteWine.do",
                    method: "get",
                    data: {
                        wineId: wineId,
                        userPhone: 18395592587
                    },
                    success: function (data) {
                        $(_this).parents(".caozuogou_list_bgss_ol_li").remove();
                        $(".body_alert").css("display", "none");
                        if ($('.caozuogou_list_caozuo_quanxuan_danpin').length == 0) {
                            $(".caozuogou_list_caozuo_quanxuan_zhongjiu").parents("li").remove();
                            $("<li class='clearfix' style='width:100%;padding:10px;background:#F3F3F3'><div style='float:left;width:300px;height:100%;'><img style='float:right;margin-right:20px;' src='../img/cart-empty-bg.png'/></div><div style='float:left;'><p style='margin:0'>购物车内暂时没有商品</p><p style='margin:0'><a href='lkl_index.html' style='color:red;display:inline'>去首页</a>挑选喜欢的商品</p></div></li>").appendTo($(".caozuogou_ol"))
                        }
                        change();
                    }
                })


            })
            $(".btn_quxiao ").click(function () {

                $(".body_alert").css("display", "none");
            })

            //			btn_queding
            //			btn_quxiao

        })
        //全删
        $(".caozuogou_list_caozuo_quanshan").click(function () {
            var _this = this;
            $(".body_alert").css("display", "block");
            var caozuogou_list_caozuo_quanxuan_danpin = document.getElementsByClassName("caozuogou_list_caozuo_quanxuan_danpin");
            var arr = [];
            for (var i = 0; i < caozuogou_list_caozuo_quanxuan_danpin.length; i++) {
                if (caozuogou_list_caozuo_quanxuan_danpin[i].checked == 1) {

                    arr.push(caozuogou_list_caozuo_quanxuan_danpin[i].value);
                }

            }
            var wineStr = arr.join("-");
            $(".").click(function () {
                $.ajax({
                    url: "<%=basePath%>/car/deleteMore.do",
                    method: "get",
                    data: {
                        wineStr: wineStr,
                        userPhone: 18395592587
                    },
                    success: function (data) {
                        $(".caozuogou_list_caozuo_quanxuan_danpin:checked").parents(".caozuogou_list_bgss_ol_li").remove();
                        $(".body_alert").css("display", "none");
                        if ($('.caozuogou_list_caozuo_quanxuan_danpin').length == 0) {
                            $(".caozuogou_list_caozuo_quanxuan_zhongjiu").parents(".caozuogou_list").remove();
                            $("<li class='clearfix' style='width:100%;padding:10px;background:#F3F3F3'><div style='float:left;width:300px;height:100%;'><img style='float:right;margin-right:20px;' src='../img/cart-empty-bg.png'/></div><div style='float:left;'><p style='margin:0'>购物车内暂时没有商品</p><p style='margin:0'><a href='lkl_index.html' style='color:red;display:inline'>去首页</a>挑选喜欢的商品</p></div></li>").appendTo($(".caozuogou_ol"))
                        }
                        change();
                    }
                })

            })
            $(".btn_quxiao ").click(function () {
                $(".body_alert").css("display", "none");
            })

        })
        //加减
        $(".caozuogou_list_caozuo_ys").click(function () {
            var _this = this;
            $(this).siblings(".caozuogou_list_caozuo_count").val(function (index, value) {
                var res = parseInt(value) + parseInt(_this.value + 1);
                return res == 0 ? 1 : res;
            })
            change();
        })
    }

    function change() {
        $(".counts").html(function () {
            var count = 0;
            $(".caozuogou_list_caozuo_quanxuan_danpin:checked").parents(".caozuogou_list_bgss_ol_li").find(".caozuogou_list_caozuo_count").each(function (index, el) {
                count += parseInt(el.value);
            })
            return count;
        })
        $(".prices").html(function () {
            var countss = 0;
            $(".caozuogou_list_caozuo_quanxuan_danpin:checked").parents(".caozuogou_list_bgss_ol_li").find(".caozuogou_list_caozuo_count").each(function (index, el) {
                countss += parseInt(el.value) * parseInt($(this).parents(".caozuogou_list_bgss_ol_li").find(".caozuogou_list_caozuo_price").html());
            })
            return countss;
        })
    }

    function ss() {
        var arrcount = [];
        var arrid = [];
        $(".caozuogou_list_caozuo_quanxuan_danpin:checked").each(function (index, el) {
            arrid.push(el.value);
        })
        $(".caozuogou_list_caozuo_quanxuan_danpin:checked").parents(".caozuogou_list_bgss_ol_li").find(".caozuogou_list_caozuo_count").each(function (index, el) {
            arrcount.push(el.value);
        })
        for (var i = 0; i < arrcount.length; i++) {
            $.ajax({
                url: "<%=basePath%>/car/updateCount.do",
                method: "get",
                data: {
                    counts: arrcount[i],
                    wineId: arrid[i],
                    userPhone: 18395592587
                },
                success: function () {

                }
            })
        }
    }
</script>

</html>