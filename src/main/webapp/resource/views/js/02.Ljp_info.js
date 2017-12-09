//购物车操作***************************************改动区域
var gouwuche_left_content_first_click = document.getElementsByClassName("gouwuche_left_content_first_click");
var gouwuche = document.getElementsByClassName("gouwuche")[0];
var gouwuche_right = document.getElementsByClassName(" gouwuche_right")[0];
change();
		//点击全选
			$("#inp1").click(function() {
				$(".inpcounts").prop("checked", this.checked);
				$(".inpcount").prop("checked", this.checked);
				change();
			})
			//点击中酒自营
			$(".inpcounts").click(function() {
				$("#inp1").prop("checked", this.checked);
				$(".inpcount").prop("checked", this.checked);
				change();
			})
			//点击商品
			$(".inpcount").click(function() {
				$(".inpcounts").prop("checked", $('.inpcount:checked').length == $('.inpcount').length);
				$("#inp1").prop("checked", $('.inpcount:checked').length == $('.inpcount').length);
				change();
			})
			//查看所有
			$(".chakan").mouseover(function() {
				$(".chakan").css("color", "red");
			})
			$(".chakan").mouseout(function() {
				$(".chakan").css("color", "black");
			})
			
			//获取购物车中商品数量	
			function change(){
				$(".gouwushuliang").html(function(){	
				var countss = 0;
				$(".inpcount").siblings(".s_sum").each(function(index, el) {
						countss += parseInt(el.innerHTML);
				})
				return countss;		
			})





			// $(".prices").html(function() {
			// 		var countss = 0;
			// 		var arrs=[];
			// 		var arrss=[];
            //
			// 		$(".inpcount:checked").siblings(".titalprice").each(function(index, el) {
			//
			// 			arrs.push(el.innerHTML);
            //
			// 		})
			// 	console.log(arrs);
			// 		$(".inpcount:checked").siblings(".s_sum").each(function(index, el) {
			// 			arrss.push(el.innerHTML);
            //
			// 			countss+=parseInt(arrs[index])*parseInt(arrss[index]);
			// 		})
             //    console.log("+++++++++"+countss);
			// 		return countss;
			// 	})
			//














				$(".counts").html(function() {
					var counts = 0;
					$(".inpcount:checked").siblings(".s_sum").each(function(index, el) {
						counts += parseInt(el.innerHTML);
					})
					return counts;
				})
			}
change();
window.onload = function(){
    change();
    }
//			加入购物车
			$(".btn2").click(function(){

				// $("<li style='position:relative;margin-bottom:5px;'><input type='checkbox' checked='checked' class='inpcount'/>"
				// +"<img style='vertical-align:middle;width:40px;' src='../img/0.jpg'/>"
				// +"<div class='s_sum'>"+$('.num').html()+"</div><span class='titalprice' style='float:right; margin-top:8px;'>"
				// +$('.pri').html()+"</span></li>").appendTo($(".ols"));
				change();
			})
			
			
			

$(".chexiao").click(function() {
	gouwuche.style.width = "40px";
	gouwuche_right.style.width = "0px";
})
 var gouwuche_right_right=document.getElementsByClassName("gouwuche_right_right");
 for(var i = 0; i < gouwuche_left_content_first_click.length; i++) {
	gouwuche_left_content_first_click[i].index = i;
	gouwuche_right_right[i].index=i;
	gouwuche_right_right[i].style.display="none";
	gouwuche_right_right[0].style.display="block";	
	 gouwuche_left_content_first_click[i].onclick = function(){
	 	gouwuche.style.width = "260px";
		gouwuche_right.style.width = "220px";
		$(".gouwuche_right").css("transition", ".1s");
	 	var _this=this;
	 	gouwuche_right_right[0].style.display="none";
	 	gouwuche_right_right[1].style.display="none";
	 	gouwuche_right_right[2].style.display="none";
	 	gouwuche_right_right[3].style.display="none";
	 	gouwuche_right_right[_this.index].style.display="block";
	 	if(_this.index!=0){
	 		$(".lanonloads").fadeIn(200);
				$(".lanonloads").fadeOut(500);			
	 	}else{
	 		
	 	}
	 	
	 }
 }
//  //购物车结束********************改动区域结束
//
//
//
// //btn2 img
// var scrollTop=0;
// 	$(window).scroll(function(){
// 				 scrollTop=$(this).scrollTop();
// 				console.log(scrollTop);
// 			})
// 	$('.btn2').on('click', addProduct);
// 		function addProduct(event) {
//
// 		var offset = $('.paowuxian').offset(), flyer = $("<img style='position:absolute;' src='../img/ljp_24.jpg' alt='' class='divsss' />");
//
//
// 		flyer.fly({
// 		// 初始位置
// 		    start: {
//
// 		        left: event.pageX-120,
//
// 		        top: event.pageY-scrollTop-30
//
// 		    },
// 		// 结束位置
// 		    end: {
//
// 		        left: offset.left-70,
//
// 		        top: offset.top-scrollTop-5,
//
// 		        width: 0,
//
// 		        height: 0
//
// 		    }
//
// 		});
//
// 	}

