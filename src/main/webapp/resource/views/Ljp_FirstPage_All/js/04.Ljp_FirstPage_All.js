//点击侧边栏的三角形，打开关闭
$(".san_jiao").on("click",function(){
//	$(".san_jiao img").animate({
//		transform: "rotate(-90deg)",
//	},1000);
	$(".white_jiu").toggle("normal");
})


//动态生成选项卡数据
//生成品牌
for(var i = 0;i<15;i++){
	if(i<7){
		$("<li class=\"pai_img\"><img src=\"\" /></li>").prependTo($(".liS"));
	}else{
		$("<li class=\"pai_img\"><img src=\"\" /></li>").prependTo($(".display_one"));
	}
}
//点击右侧按钮，让其移除部分隐藏显示
$(".btn_one").on("click",function(){
	$(".display_one").toggle("fast");
})



//生成产地1
for(var i = 0;i<15;i++){
	if(i<10){
		$("<li class=\"chandi1\">青度的海</li>").prependTo($(".lis_one"));
	}else{
		$("<li class=\"chandi1\">青的度海</li>").prependTo($(".display_two"));
	}
}
//点击右侧按钮，让其移除部分隐藏显示
$(".btn_two").on("click",function(){
	$(".display_two").toggle("fast");
})


//生成度数
for(var i = 0;i<15;i++){
	if(i<10){
		$("<li><span>46</span>%Vol.</li>").prependTo($(".lis_du"));
	}else{
		$("<li><span>46</span>%Vol.</li>").prependTo($(".display_three"));
	}
}
//点击右侧按钮，让其移除部分隐藏显示
$(".btn_three").on("click",function(){
	$(".display_three").toggle("fast");
})


//测试
var arr=["1001","1002","1003","1004","1005","1006","1007","1008","1009","1010"];
    for(var i=0;i<arr.length;i++){
        $.ajax({
            url: "http://211.159.187.131:8080/lcks-SSM/shop/findFenlei.do?parentId="+arr[i],
            method: "get",
            async: true,
            success: function (data) {
                console.log(data);
            }
        })
    }





//动态生成script标签跨域接收后台数据
//var open = $("#open");
//function succCb(data) {
//  console.log(data);
//}
//var urlArr = ["101","201","301","401","102","202","302","103","203","104","204","303","402","105","304"];
//open.on("click",function(){
//	for(var i = 0;i<urlArr.length;i++){
//		var script = $("<script/>");
//		script.appendTo($("body"));
//		script.prop("src","http://211.159.187.131:8080/lcks-SSM/shop/findFenlei.do?parentId="+urlArr[i]+"&callback=succCb");
//	}
//})




//鼠标移入移除的时候，小图的显示隐藏
var goods = $(".goods");
var lastGoods = goods[0];
for(var i = 0;i<goods.length;i++){
	goods[i].index = i;
	goods[i].onmouseover = function(){
		this.style.border = "";
		$(".small_pic")[this.index].style.display = "block";
		lastGoods = goods[this.index];
		$(".zjzy a").css("textDecoration","underline");
		this.style.border = "1px solid red";
		this.style.borderBottomColor = "transparent";
	}
	goods[i].onmouseout = function(){
		this.style.border = "1px dotted #DCDDDC";
		$(".small_pic")[this.index].style.display = "none";
		$(".zjzy a").css("textDecoration","none");
	}
}



//分页
$(function() {
	$("#pagination1").pagination({
		currentPage: 1,
		totalPage: 28,
		callback: function(current) {
			$("#current1").text(current)
		}
	});
});


