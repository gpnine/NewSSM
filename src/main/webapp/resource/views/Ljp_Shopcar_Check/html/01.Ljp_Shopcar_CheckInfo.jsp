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
    <link rel="stylesheet" type="text/css" href="../css/01.Ljp_Shopcar_CheckInfo.css"/>
    <link rel="stylesheet" type="text/css" href="../css/cityLayout.css"/>
    <title>购物车审核订单信息</title>
</head>

<body>
<div class="check_wrap">
    <!--logo和进度条-->
    <div class="head">
        <div class="logo">
            <a href=""><img src="../img/check_info1.jpg"/></a>
        </div>
        <div class="info">
            <img src="../img/check_info2.png"/>
        </div>
    </div>

    <!--具体信息-->
    <div class="infor">
        <div class="write_info">填写并核对订单信息</div>
        <div class="user_info">
            <div class="change">
                <span>收货人信息</span>
                <span><a class="xiugai" href="###">&nbsp;&nbsp;&nbsp;[修改]</a></span>
            </div>

            <div class="use_newInfo">
                <div>
                    <div class="yincang">&nbsp;&nbsp;&nbsp;<input class="radio" type="radio"/> 使用新地址<br/></div>
                    <p class="address">
                        <span class="xm"></span>
                        <span class="dh"></span>&nbsp;&nbsp;&nbsp;
                        <span class="dz"></span>
                        <span class="use_newInfo_xiugai">修改</span>
                        <span class="use_newInfo_shanchu">删除</span>
                    </p>
                </div>

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
            <button class="save_info">保存收货人信息</button>
        </div>
        <!--支付及配送方式-->
        <div class="pay_way1">
            <span>支付及配送方式</span><br/>
            <span>您所在区域暂时不支持配送！</span>
        </div>

        <!--发票信息-->
        <div class="pay_way">
            <span class="fpxx">发票信息</span>
            <span class="fptk">
						<input class="fa1" name="fa" type="radio" checked/> 不需要发票&nbsp;&nbsp;&nbsp;
						<input class="fa2" name="fa" type="radio"/> 纸质发票&nbsp;&nbsp;&nbsp;
						<input class="fa3" name="fa" type="radio"/> 电子发票&nbsp;&nbsp;&nbsp;
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
                <div class="sell_info">
                    <div class="sell_img"><img src="../img/check_info3.jpg" alt=""/></div>
                    <div class="info_a2">
                        <p>
                            <a href="">52°五粮液华宴精品500ml（6瓶装）</a>
                        </p>
                        <p>商品货号：
                            <a href="">54687445742212</a>
                        </p>
                    </div>
                    <div class="sd">
                        <img src="../img/check_info.jpg" alt=""/>
                    </div>
                    <div class="price">￥<span class="univalent">200</span></div>
                    <div class="num">x<span class="univalent_count">1</span></div>
                </div>

                <div class="sell_info">
                    <div class="sell_img"><img src="../img/check_info3.jpg" alt=""/></div>
                    <div class="info_a2">
                        <p>
                            <a href="">52°五粮液华宴精品500ml（6瓶装）</a>
                        </p>
                        <p>商品货号：
                            <a href="">54687445742212</a>
                        </p>
                    </div>
                    <div class="sd">
                        <img src="../img/check_info.jpg" alt=""/>
                    </div>
                    <div class="price">￥<span class="univalent">300</span></div>
                    <div class="num">x<span class="univalent_count">2</span></div>
                </div>
                <!--以上是已选商品-->

            </div>

            <!--给商家留言-->
            <div class="leave_word">
                <div class="box">
                    <span class="mess">给商家留言：&nbsp;&nbsp;</span>
                    <textarea placeholder="选填" class="text_area" rows="4" cols="40"></textarea>
                    <div class="sum">
                        <span>店铺合计(含运费)：</span> ￥
                        <span class="total_price">399</span>
                    </div>
                    <div class="yun">
                        <span>(满99.00免运费)运费：</span>
                        <span>免运费</span>
                    </div>
                </div>
            </div>

            <!--结算-->
            <div class="sell_finsh">
                <p><span>1</span>件商品，总商品金额：￥<span class="total_price">399.00</span></p>
                <p>运费：￥<span>0</span></p>
                <p><input type="checkbox"/> 使用平台积分</p>
                <p>平台可使用<span>5</span>积分</p>
            </div>

            <!--最后-->
            <div class="finsh" style="position: relative;">
                <span class="return"><a href="">返回修改购物车</a></span>
                <span class="get">可获得平台积分<span>399</span>积分</span>
                <span class="money1">应付金额：<span class="total_price"
                                                style="color: red;font-size: 16px;font-weight: bolder;">399</span>元</span>
                <a class="tijiao"
                   style="position: absolute;cursor:pointer;display:none;right:20px;top:5px;width:100px;height:40px;"
                   href="">
                    <button style="background: #FC6E75;color:white;text-align:center;line-height:20px;width:100px;height:40px;">
                        提交订单
                    </button>
                </a>
            </div>

        </div>

    </div>

</div>
</body>
<script src="jquery-3.2.1.min.js"></script>
<script src="../js/cityselect.js"></script>
<script src="../js/01.Ljp_Shopcar_CheckInfo.js"></script>

</html>