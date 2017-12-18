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
		<link rel="stylesheet" href="<%=basePath%>/resource/views/zhongjiu-huichang/css/nav_slider.css">
		<link rel="stylesheet" href="<%=basePath%>/resource/views/zhongjiu-huichang/css/base.css">
		<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	</head>
	<body>
		<div class="side_nav_slider_top clearfix" >
			<div class="cate_all_side_nav_small_banner fl">
				<div class="cate-all"><img src="http://www.zhongjiu.cn/Areas/Web/Images/HIMALL_admin11_04_03.png" alt=""><a href="###">全部商品分类</a></div>
				<div class="side_nav_slider">
					<div class="side_nav_small_banner clearfix">
						<div class="side-nav fl">
							<ul class="sidenav-list"></ul>
						</div>
					</div>
				</div>
			</div>
			<div class="item fl"><a class="item_one" href="<%=basePath%>/resource/views/html/lkl_index.jsp">首页</a></div>
			<div class="item fl"><a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_baijiuzhuanqu.jsp">白酒专区</a></div>
			<div class="item fl"><a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_hongyangzhuanqu.jsp">红洋酒专区</a></div>
			<div class="item fl"><a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_qingkejiu.jsp">天佑德青稞酒</a></div>
			<div class="item fl"><a href="<%=basePath%>/resource/views/zhongjiu-huichang/html/szz_jingpintuijian.jsp">精品推荐</a></div>
		</div>
	</body>
	<script>
        $.ajax({
            url: "<%=basePath%>/index/fenlei.do",
            method: "get",
            async: true,
            success: function (data) {
                for (j in data) {
                    $("<li class='side-item'><a class='sidenav-list_one'>"
                        + "<img style='width=12px;height=20px' class='iconTu' src='<%=basePath%>/resource/views/img/bzimg/xiao"
                        + j + ".png' alt=''>"
                        + data[j].shopName + "</a><a class='sidenav-list_two sange"
                        + j + "' style='display:block;' href='#'></a><div class='children-nav'>"
                        + "<div class='children-nav-left children-nav-left_"
                        + j + "'></div><div class='children-right pa'><h5>推荐品牌</h5><a>"
                        + "<img class='tuijianTu' style='margin-left:-14px' src='<%=basePath%>/resource/views/img/bzimg/bz"
                        + j + ".jpg'/></a></div></div></li>").appendTo($(".sidenav-list"));
                    switch (data[j].shopId) {
                        case 1:
                            $("<span>" + data[j].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_10'></ul>").appendTo($(".children-nav-left_0"));
                            for (var k = 0; k < 18; k++) {
                                var l = parseInt(Math.random() * data[j].shopList[0].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[0].shopList[l].shopName + "'>" + data[j].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_10"));
                            }
                            $("<li><a class='link' href='<%=basePath%>/resource/views/Ljp_FirstPage_All2/bai_html/04.Ljp_FirstPage_All.jsp'>更多</a></li>").appendTo($(".children-list_10"));
                            $("<span>" + data[j].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_12'></ul>").appendTo($(".children-nav-left_0"));
                            for (var k = 0; k < 5; k++) {
                                var l = parseInt(Math.random() * data[j].shopList[2].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[2].shopList[l].shopName + "'>" + data[j].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_12"));
                            }
                            $("<span>" + data[j].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_11'></ul>").appendTo($(".children-nav-left_0"));
                            for (var k = 0; k < 7; k++) {
                                var l = parseInt(Math.random() * data[j].shopList[1].shopList.length);
                                $("<li><a  class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[1].shopList[l].shopName + "'>" + data[j].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_11"));
                            }
                        case 2:
                            $("<span>" + data[j].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_20'></ul>").appendTo($(".children-nav-left_1"));
                            for (var k = 0; k < 8; k++) {
                                var l = parseInt(Math.random() * data[j].shopList[0].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[0].shopList[l].shopName + "'>" + data[j].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_20"));
                            }
                            $("<span>" + data[j].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_22'></ul>").appendTo($(".children-nav-left_1"));
                            for (var k = 0; k < 7; k++) {
                                var l = parseInt(Math.random() * data[j].shopList[2].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[2].shopList[l].shopName + "'>" + data[j].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_22"));
                            }
                            $("<span>" + data[j].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_21'></ul>").appendTo($(".children-nav-left_1"));
                            for (var k = 0; k < 7; k++) {
                                var l = parseInt(Math.random() * data[j].shopList[1].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[1].shopList[l].shopName + "'>" + data[j].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_21"));
                            }
                        case 3:
                            $("<span>" + data[j].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_30'></ul>").appendTo($(".children-nav-left_2"));
                            for (var k = 0; k < 11; k++) {
                                var l = parseInt(Math.random() * data[j].shopList[0].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[0].shopList[l].shopName + "'>" + data[j].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_30"));
                            }
                            $("<span>" + data[j].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_32'></ul>").appendTo($(".children-nav-left_2"));
                            for (var k = 0; k < 2; k++) {
                                var l = parseInt(Math.random() * data[j].shopList[2].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[2].shopList[l].shopName + "'>" + data[j].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_32"));
                            }
                            $("<span>" + data[j].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_31'></ul>").appendTo($(".children-nav-left_2"));
                            for (var k = 0; k < 4; k++) {
                                var l = parseInt(Math.random() * data[j].shopList[1].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[1].shopList[l].shopName + "'>" + data[j].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_31"));
                            }

                        case 4:
                            for (i in data[j].shopList) {
                                $("<span>" + data[j].shopList[i].shopName + "</span><ul class='children-list clearfix children-list_4" + i + "'></ul>").appendTo($(".children-nav-left_3"));
                                for (k in data[j].shopList[i].shopList) {
                                    $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[j].shopList[i].shopList[k].shopName + "'>" + data[j].shopList[i].shopList[k].shopName + "</a></li>").appendTo($(".children-list_4" + i));
                                }
                            }
                        case 5:
                            $("<span>" + data[0].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_50'></ul>").appendTo($(".children-nav-left_4"));
                            for (var k = 0; k < 5; k++) {
                                var l = parseInt(Math.random() * data[0].shopList[0].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[0].shopList[l].shopName + "'>" + data[0].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_50"));
                            }
                            for (var k = 0; k < 2; k++) {
                                var l = parseInt(Math.random() * data[1].shopList[0].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[0].shopList[l].shopName + "'>" + data[1].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_50"));
                            }
                            $("<span>" + data[0].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_51'></ul>").appendTo($(".children-nav-left_4"));
                            for (var k = 0; k < 2; k++) {
                                var l = parseInt(Math.random() * data[0].shopList[2].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[2].shopList[l].shopName + "'>" + data[0].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_51"));
                            }
                            for (var k = 0; k < 2; k++) {
                                var l = parseInt(Math.random() * data[1].shopList[2].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[2].shopList[l].shopName + "'>" + data[1].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_51"));
                            }
                            $("<span>" + data[0].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_52'></ul>").appendTo($(".children-nav-left_4"));
                            for (var k = 0; k < 2; k++) {
                                var l = parseInt(Math.random() * data[0].shopList[1].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[1].shopList[l].shopName + "'>" + data[0].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_52"));
                            }
                            for (var k = 0; k < 2; k++) {
                                var l = parseInt(Math.random() * data[1].shopList[1].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[1].shopList[l].shopName + "'>" + data[1].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_52"));
                            }
                        case 6:
                            $("<span>" + data[0].shopList[0].shopName + "</span><ul class='children-list clearfix children-list_60'></ul>").appendTo($(".children-nav-left_5"));
                            for (var k = 0; k < 4; k++) {
                                var l = parseInt(Math.random() * data[0].shopList[0].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[0].shopList[l].shopName + "'>" + data[0].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_60"));
                            }
                            for (var k = 0; k < 3; k++) {
                                var l = parseInt(Math.random() * data[1].shopList[0].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[0].shopList[l].shopName + "'>" + data[1].shopList[0].shopList[l].shopName + "</a></li>").appendTo($(".children-list_60"));
                            }
                            $("<span>" + data[1].shopList[2].shopName + "</span><ul class='children-list clearfix children-list_61'></ul>").appendTo($(".children-nav-left_5"));
                            for (var k = 0; k < 3; k++) {
                                var l = parseInt(Math.random() * data[0].shopList[2].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[2].shopList[l].shopName + "'>" + data[0].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_61"));
                            }
                            for (var k = 0; k < 2; k++) {
                                var l = parseInt(Math.random() * data[1].shopList[2].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[2].shopList[l].shopName + "'>" + data[1].shopList[2].shopList[l].shopName + "</a></li>").appendTo($(".children-list_61"));
                            }
                            $("<span>" + data[0].shopList[1].shopName + "</span><ul class='children-list clearfix children-list_62'></ul>").appendTo($(".children-nav-left_5"));
                            for (var k = 0; k < 2; k++) {
                                var l = parseInt(Math.random() * data[0].shopList[1].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[0].shopList[1].shopList[l].shopName + "'>" + data[0].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_62"));
                            }
                            for (var k = 0; k < 3; k++) {
                                var l = parseInt(Math.random() * data[1].shopList[1].shopList.length);
                                $("<li><a class='link' title='' href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=" + data[1].shopList[1].shopList[l].shopName + "'>" + data[1].shopList[1].shopList[l].shopName + "</a></li>").appendTo($(".children-list_62"));
                            }
                            break;
                        default:
                            break;
                    }
                }
                $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=茅台'>茅台</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=五粮液'>五粮液 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=天佑德' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>天佑德</a></div>").appendTo(".sange0");
                $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=拉菲'>拉菲</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=张裕'> 张裕 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=马克斯威' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>马克斯威</a></div>").appendTo(".sange1");
                $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=马爹利' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>马爹利</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=人头马'> 人头马 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=芝华士'>芝华士</a></div>").appendTo(".sange2");
                $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=尧喝货'>尧喝货</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=唐宋' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'> 唐宋 </a><a>塔牌</a></div>").appendTo(".sange3");
                $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=五粮液五星级' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>五粮液五星级</a></div>").appendTo(".sange4");
                $("<div class='Allsange'><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=茅台' style='color: #323b42;background: #FFFFFF;border-radius: 2px;text-align: center;display: inline-block;padding:1px 3px;vertical-align: middle;'>茅台</a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=拉菲'> 拉菲 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=五粮液'> 五粮液 </a><a href='<%=basePath%>/resource/views/Ljp_FirstPage_search/mt_html/04.Ljp_FirstPage_All.jsp?likeName=张裕'>张裕</a></div>").appendTo(".sange5");

            }
        })
        //显示导航栏列表
        $(".cate_all_side_nav_small_banner").mouseover(function () {
            $(".side-nav").css({
                "display": "block",
            });
        });
        //隐藏导航栏列表
        $(".cate_all_side_nav_small_banner").mouseout(function () {
            $(".side-nav").css({
                "display": "none",
            });
        });
	</script>
</html>
