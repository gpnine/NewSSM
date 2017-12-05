//引入规定框架
$("#per_left").load("commit.html");


//左边加竖线
var lis = $(".li");
for(var i= 0;i<lis.length;i++){
	$("<span class='sgg sgg"+(i+1)+"'>|</span>").appendTo($(".manyWord"));
}


//右商品推荐
for(var i = 0;i<6;i++){
	$("<div class='box'><div class='mother'><li class='goods_li'><img class='goods_img goods_img"+(i+1)+"' src=''/><li class='goods_hover'><a class='xfWord' href='' title='52度出口型白西风绵柔凤香型500ml（6瓶装）'>去购买 ></a></li></li></div><p class='jiu_kind'><a href=''></a></p></div>").appendTo($(".goods_ul"));
}
$(".goods_img").prop("src","../img/ljp_16.png");
$(".jiu_kind a").text("52度出口型白西风绵柔…");
$(".xfWord").css({
	"color":"white",
	"fontSize":"12px",
})

//这里需要注意这个移入移除事件是加给谁的❗️❗️
var mothers = $(".mother");
for(var i = 0;i<mothers.length;i++){
	mothers[i].index = i;
	$(".mother")[i].onmouseover=function(){
		$(".goods_hover")[this.index].style.top = "0px";
	}
	$(".mother")[i].onmouseout=function(){
		$(".goods_hover")[this.index].style.top = "-182px";
	}
}


//右浏览记录
// for(var i = 0;i<5;i++){
// 	$("<li class='rec_li rec_li"+(i+1)+"'><a href=''><img src='' /></a><a href=''><span class='jiu_name'><span></a></li>").appendTo($("#rig_recode"));
// }
// $("#rig_recode img").prop("src","../img/ljp_17.png");
// $(".jiu_name").html("拉菲传奇波尔多…");
$(".jiu_name").on("mouseover",function(){
	$(this).css("color","red");
})
$(".jiu_name").on("mouseout",function(){
	$(this).css("color","black");
 })




//【我的购物卡】
$("#rig_gwk span").on("click",function(){
	$("#bdym").css("display","block");
})



//【账户管理】页面的局部切换
var jiaSpan = $(".jia span");
var ps = $(".p");
var lastP = ps[0];
for(var j = 0; j < jiaSpan.length; j++){
	jiaSpan[j].index  = j;
	jiaSpan[j].onclick = function(){
		console.log(this.index);
		lastP.style.display = "none";
		ps[this.index].style.display = "block";
		lastP = ps[this.index];
	}
}



//收货地址
$(".new_save").on("click",function(){
	$("#add_address").css("display","block");
})
$(".close").on("click",function(){
	$("#add_address").css("display","none");
})



//161.提现支付密码设置
//失焦事件，判断设置密码情况
function setpwd(){
	if($(".set_pwd").val() == "" || String($(".set_pwd").val()).length<6){
		$(".set_pwd").css("border","1px solid red");
		$("<span/>").val("密码不能少于6位!").css("color","red").prependTo($(".notice"));
	}else{
		$(".set_pwd").css("border","1px solid lightgrey");
		$(".notice span").val("");
	}
}

//失焦事件，判断确认密码事件
function surepwd(){
	if($(".sure_pwd").val() != $(".set_pwd").val()){
		console.log($(".sure_pwd").val());
		console.log($(".set_pwd").val());
		$(".diff").html("两次密码不一致！").css("color","red");
	}else{
		$(".diff").html("");
	}
}



/**********************发送请求*************************/
//


