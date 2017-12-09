//点击使用新地址，出现
$(".radio").on("click",function(){
	$(".display").show("normal");
})
$(".use_newInfo_xiugai").css("display","none");
$(".use_newInfo_shanchu").css("display","none");
//点击保存新地址，.address里面显示新添加的地址
$(".save_info").on("click",function(){
	var xm = $(".user").val();
	var area1 = $(".city_input").val()+$(".area").val();
	var phone = $(".phone").val();
	console.log(xm);
	console.log(area1);
	console.log(phone);
	if($(".user").val()!="" && $(".area1").val()!="" && $(".phone").val()!="" && ss){
		$(".xm").html(xm);
		$(".dh").html(phone);
		$(".dz").html(area1);
		$(".display").css("display","none");
		$(".tijiao").css("display","block");
		$(".yincang").css("display","none");
		$(".use_newInfo_xiugai").css("display","inline-block");
		$(".use_newInfo_shanchu").css("display","inline-block");		
		$(".address").css("display","block");
	}
})
//点击修改读数据进行修改
$(".use_newInfo_xiugai").click(function(){
	$(".display").css("display","block");
	$(".tijiao").css("display","block");
})
$(".use_newInfo_shanchu").click(function(){
	$(".user").val("")
	$(".phone").val("")
	$(".area").val("")
	$(".yincang").css("display","block");
	$(".address").css("display","none");
	$(".use_newInfo_xiugai").css("display","none");
	$(".use_newInfo_shanchu").css("display","none");
	$(".radio").prop("checked", "");
	$(".tijiao").css("display","none");
	
})
//电话号码的正则
var ss=false;
$(".phone").on("blur",function(){
	var dha = ($('.phone').val());
	var reg = /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/;
	if(dha.match(reg)){
		 ss=true;
	}else{
		 ss=false;
		alert("请填写正确的电话号码！");
	}
})

//地区
$(function(){
	init_city_select($("#sel1, #sel2"));
});


//点击发票单选框出现
$(".fa1").on("click",function(){
	$(".f_piao").hide("normal");
})
$(".fa2").on("click",function(){
	$(".f_piao").show("normal");
})
$(".fa3").on("click",function(){
	$(".f_piao").show("normal");
})


//点击修改，修改发票信息的弹框出现
$(".f_piao button").on("click",function(){
	$(".change_a").css("display","block");
})

var fp = $(".fp");
var last = fp[0];
var chan_c = $(".change_c1");
var last_c = chan_c[0];
for(var i = 0;i<fp.length;i++){
	fp[i].index = i;
	fp[i].onclick = function(){
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
$(".cha").on("click",function(){
	$(".change_a").css("display","none");
})
$(".change_c button").on("click",function(){
	$(".change_a").css("display","none");
})
$(".change_c2 button").on("click",function(){
	if($('.c2').val() == "" ){
		alert("项目都是必填的哦😯！");
	}else{
		$(".change_a").css("display","none");
	}
})
$(".change_c3 button").on("click",function(){
	if($('.c3').val() == ""){
		alert("项目都是必填的哦😯！");
	}else{
		$(".change_a").css("display","none");
	}
})
$(".total_price").html(function(){
	var counts=0;
	$(".univalent").each(function(index, el){
		counts+=el.innerHTML *parseInt($(this).parent(".price").siblings(".num").find(".univalent_count").html());
	})
	return counts;
})
