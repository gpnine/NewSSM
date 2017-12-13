//登录判断



//点击切换功能管理
var bmsS = $(".bms");
var display = $(".display");
var lastPage = display[0];
for(var i = 0;i<bmsS.length;i++){
	bmsS[i].index = i;
	bmsS[i].onclick = function(){
		display[this.index].style.display = "block";
		lastPage.style.display = "none";
		lastPage = display[this.index];
	}
}


//点击全选，单选全部选中
$(".sele_All").on("click",function(){
	if(this.checked){
		$(".sele_one").prop("checked","checked");
	}else{
		$(".sele_one").prop("checked",false);
	}
})
//点击单选，如果都被选中，全选选中，有一个不被选中，全选不被选中
for(var i = 0;i<$(".sele_one").length;i++){
	$(".sele_one")[i].onclick=function(){
		var isSeleAll = true;
		for(var j = 0;j<$(".sele_one").length;j++){
			if($(".sele_one")[j].checked == false){
				isSeleAll = false;
				break;
			}
		}
		if(isSeleAll == true){
			$(".sele_All").prop("checked","checked");
		}
		if(this.checked == false){
			$(".sele_All").prop("checked",false);
		}
	}
}

//点击重置
$('.resize').on("click",function(){
	$(".content_info form input[type=text]").val("");
})
//点击确认，保存商品信息
//$(".sure").on("click",function(){
//	$.aiax({
//		type:"get",
//		url:"",
//		dataType:"json",
//		data:{},
//		async:true,
//		success:function(data){
//			console.log(data);
//		}
//	})
//})

//或者用form的action提交数据
