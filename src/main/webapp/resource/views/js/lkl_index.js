var jiupin_first_swiper_next=document.getElementsByClassName("jiupin_first_swiper_next");
var jiupin_first_swiper_prev=document.getElementsByClassName("jiupin_first_swiper_prev");
var jiupin_first_swiper_box_imgs=document.getElementsByClassName("jiupin_first_swiper_box_imgs");
var span_count=document.getElementsByClassName("span_count");
//轮播效果
for(var j=0;j<jiupin_first_swiper_next.length;j++){
	jiupin_first_swiper_next[j].index=j;
	jiupin_first_swiper_prev[j].index=j;
	jiupin_first_swiper_next[j].onclick=function(){
		span_count[this.index].innerHTML++;
		if(span_count[this.index].innerHTML>2){
			span_count[this.index].innerHTML=0;
		}
//		console.log(this.index);
		jiupin_first_swiper_box_imgs[this.index].style.transition="1s";
		jiupin_first_swiper_box_imgs[this.index].style.transform="translateX("+(-188)*parseInt(span_count[this.index].innerHTML)+"px)";
	}
	
	jiupin_first_swiper_prev[j].onclick=function(){
		span_count[this.index].innerHTML--;
		if(span_count[this.index].innerHTML<0){
			span_count[this.index].innerHTML=2;
		}
//		console.log(this.index);
		jiupin_first_swiper_box_imgs[this.index].style.transition="1s";
		jiupin_first_swiper_box_imgs[this.index].style.transform="translateX("+(-188)*parseInt(span_count[this.index].innerHTML)+"px)";
	}
}
var qijiandian_logos_prev=document.getElementsByClassName("qijiandian_logos_prev")[0];
var qijiandian_logos_next=document.getElementsByClassName("qijiandian_logos_next")[0];
var qijiandian_logoss_span_count=document.getElementsByClassName("qijiandian_logoss_span_count")[0];
var qijiandian_logoss=document.getElementsByClassName("qijiandian_logoss")[0];
qijiandian_logos_next.onclick=function(){
		qijiandian_logoss_span_count.innerHTML++;
		if(qijiandian_logoss_span_count.innerHTML>2){
			qijiandian_logoss_span_count.innerHTML=0;
		}
		
		qijiandian_logoss.style.transition="1s";
		qijiandian_logoss.style.transform="translateX("+(-550)*parseInt(qijiandian_logoss_span_count.innerHTML)+"px)";
	}
	
	qijiandian_logos_prev.onclick=function(){
		qijiandian_logoss_span_count.innerHTML--;
		if(qijiandian_logoss_span_count.innerHTML<0){
			qijiandian_logoss_span_count.innerHTML=2;
		}
		qijiandian_logoss.style.transition="1s";
		qijiandian_logoss.style.transform="translateX("+(-550)*parseInt(qijiandian_logoss_span_count.innerHTML)+"px)";
	}
	var help_pa=document.getElementsByClassName("help_pa");
	var  help_aa=document.getElementsByClassName("help_aa");
//	console.log(help_pa);
//	console.log(help_aa.length);	
	var Help_pa=help_pa[0].parentNode.children[1];
	for(var k=0;k<help_aa.length;k++){
		 help_aa[k].index=k;
//		 console.log(k);
		 help_pa[k].style.display="none";
		 help_aa[help_aa[k].index].addEventListener("mouseover",function(){
		 	//console.log(k);
		 	
		 	this.parentNode.children[1].style.display="block";
//		 	console.log(this.parentNode.children[1]);
		 	Help_pa.style.display="none";
//		 	help_pa[this.index].style.display="block";
		 	Help_pa=this.parentNode.children[1];
//		 	console.log(this.index)
//			console.log(this);
		 },false)
		// help_aa[i].onmouseover=function(){
		 	
//		 	
		// }
	}
//	四种样式 beer hot pu white
var xuanjiuqu_hot=document.getElementsByClassName('xuanjiuqu_hot');
var xuanjiuqu_white=document.getElementsByClassName('xuanjiuqu_white');
var xuanjiuqu_pu=document.getElementsByClassName('xuanjiuqu_pu');
var xuanjiuqu_beer=document.getElementsByClassName('xuanjiuqu_beer');

var help_a_hot=document.getElementsByClassName("help_a_hot");
var help_a_white=document.getElementsByClassName("help_a_white");
var help_a_pu=document.getElementsByClassName("help_a_pu");
var help_a_beer=document.getElementsByClassName("help_a_beer");

//1楼
for(var i=0;i<help_a_hot.length;i++){
	xuanjiuqu_hot[i].index=i;
	help_a_hot[i].index=i;
	var Xuanjiuqu1=xuanjiuqu_hot[0];
	help_a_hot[i].onmouseenter=function(){
		Xuanjiuqu1.style.display="none";
		xuanjiuqu_hot[this.index].style.display="block";
		Xuanjiuqu1=xuanjiuqu_hot[this.index];
	}
}
//2楼
for(var i=0;i<help_a_white.length;i++){
	xuanjiuqu_white[i].index=i;
	help_a_white[i].index=i;
	var Xuanjiuqu2=xuanjiuqu_white[0];
	help_a_white[i].onmouseenter=function(){
		Xuanjiuqu2.style.display="none";
		xuanjiuqu_white[this.index].style.display="block";
		Xuanjiuqu2=xuanjiuqu_white[this.index];
	}
}
//3楼
for(var i=0;i<help_a_pu.length;i++){
	xuanjiuqu_pu[i].index=i;
	help_a_pu[i].index=i;
	var Xuanjiuqu3=xuanjiuqu_pu[0];
	help_a_pu[i].onmouseenter=function(){
		Xuanjiuqu3.style.display="none";
		xuanjiuqu_pu[this.index].style.display="block";
		Xuanjiuqu3=xuanjiuqu_pu[this.index];
	}
}
//4楼
for(var i=0;i<help_a_beer.length;i++){
	xuanjiuqu_beer[i].index=i;
	help_a_beer[i].index=i;
	var Xuanjiuqu4=xuanjiuqu_beer[0];
	help_a_beer[i].onclick=function(){
		Xuanjiuqu4.style.display="none";
		xuanjiuqu_beer[this.index].style.display="block";
		Xuanjiuqu4=xuanjiuqu_beer[this.index];
	}
}


//图片懒加载
// var oBtn = document.getElementsByTagName('button')[0];
// document.images 对象属性，用来获取对应页面上的img标签。
var img=document.getElementsByTagName("img");
for(var i=0;i<img.length;i++){
	 img[i].index=i;
//	 console.log(i);
//	 console.log(img[i].src);
	img[i].setAttribute("data-original",img[i].src);
	img[i].src="../img/loading.gif";
	
}
var aImages = document.images;
// 这里调用loadImg 是让当前可视窗口的图片先加载出来
loadImg(aImages);
window.onscroll = function(){
  // 鼠标滚动之后加载新的可视窗口内的图片。
  loadImg(aImages);
};
function loadImg(arr){
  for( var i = 0,len = arr.length; i < len; i++){
    // getBoundingClientRect用于获取某个元素相对于视窗的位置集合。集合中有top, right, bottom, left等属性。
    if(arr[i].getBoundingClientRect().top < document.documentElement.clientHeight && !arr[i].isLoad){
      arr[i].isLoad = true;
      arr[i].style.cssText = "transition: ''; opacity: 0;"
      if(arr[i].dataset){
        aftLoadImg(arr[i],arr[i].dataset.original);  
      }else{
        // getAttribute() 方法返回指定属性名的属性值。
        aftLoadImg(arr[i],arr[i].getAttribute("data-original"));
      }
      (function(i){
        setTimeout(function(){
          arr[i].style.cssText = "transition: 1s; opacity: 1;"
        },16)
      })(i);
    }
  }
}
function aftLoadImg(obj,url){
  var oImg = new Image();
  oImg.onload = function(){
    obj.src = oImg.src;
  }
  oImg.src = url;
}

//又侧边栏设置

var  gouwuche_left_content_first_click=document.getElementsByClassName(" gouwuche_left_content_first_click");
var  gouwuche=document.getElementsByClassName(" gouwuche")[0];
var  gouwuche_right=document.getElementsByClassName(" gouwuche_right")[0];
for(var i=0;i< gouwuche_left_content_first_click.length;i++){
	 gouwuche_left_content_first_click[i].index=i;
	  gouwuche_left_content_first_click[i].onclick=function(){
	  	gouwuche.style.width="260px";
	  	gouwuche_right.innerHTML="";
	  	gouwuche_right.style.width="220px";	
	  	switch(this.index){
	  		case 0:
	  			var divs=document.createElement("div");
	  			divs.style.whiteSpace="nowrap";
	  			gouwuche_right.appendChild(divs)
	  			var input=document.createElement("input");
	  			input.value="全选";
	  			input.type="checkbox";
	  			input.className="inp1";
	  			var label=document.createElement("label");
	  			label.innerHTML="&nbsp;全选";
	  			label.style.whiteSpace="nowrap";
	  			divs.appendChild(input);
	  			divs.appendChild(label);
	  			label.onclick=function(){
	  				if(input.checked==1){
	  					input.checked="";
	  				}else{
	  					input.checked=" "
	  				}
	  			}
	  			
	  		break;
	  		case 1:
	  		break;
	  		case 2:
	  		break;
	  		case 3:
	  		break;
	  	}
	  }
}
document.getElementsByClassName("wrap")[0].onclick=function(){
	gouwuche_right.style.width="0px";
	gouwuche.style.width="40px";
}

//左侧边楼层处理
var floor_setting=document.getElementsByClassName("floor_setting")[0];
var floor=document.getElementsByClassName("floor");
for(var i=0;i<floor.length;i++){
	var divs=document.createElement("div");
	divs.style.width="40px";
	divs.style.height="35px";
	divs.innerHTML=i+1+"F";
	divs.style.borderBottom="1px dotted gray";
	if(i==floor.length-1){
		divs.style.borderBottom="";
	}
	divs.className="floor_setting_list";
	divs.style.textAlign="center";
	divs.style.lineHeight="35px";
	floor_setting.appendChild(divs);
	var floor_setting_list=document.getElementsByClassName("floor_setting_list");
	floor_setting_list[i].index=i;
	floor_setting_list[i].onmouseover=function(){
		floor_setting_list[this.index].style.color="white";
		switch(this.index){
			case 0:
				floor_setting_list[0].innerHTML="帮你";
				break;
			case 1:
				floor_setting_list[1].innerHTML="白酒";
				break;
			case 2:
				floor_setting_list[2].innerHTML="葡萄";
				break;
			case 3:
				floor_setting_list[3].innerHTML="洋酒";
				break;
		}
	}
	floor_setting_list[i].onmouseout=function(){
		floor_setting_list[this.index].style.color="black";
		switch(this.index){
			case 0:
				floor_setting_list[0].innerHTML="1F";
				break;
			case 1:
				floor_setting_list[1].innerHTML="2F";
				break;
			case 2:
				floor_setting_list[2].innerHTML="3F";
				break;
			case 3:
				floor_setting_list[3].innerHTML="4F";
				break;
		}
	}
	floor_setting_list[i].onclick=function(){
		console.log(this.index);
	}
}
$(window).scroll(function(){
            		var scrollTop=$(this).scrollTop();
            		var scrollHeight=$(document).height();
            		var windowHeight=$(this).height();
            		floor_setting.style.display="none";
            		if(scrollTop>=760){
            			floor_setting.style.display="block";
            		}
            		for(var i=0;i<floor.length;i++){
            			floor[i].index=i;
            			floor_setting_list[i].index=i;
            			floor_setting_list[i].onclick=function(){
            				
            				var timer=setInterval(function(){
            					
            				},10)
            				
            				
            			}
            			
            		}
            		
         	});
//$.ajax({
//	type:"get",
//	url:"",
//	async:true,
//	data:{},
//	dataType:"json",
//	success:function(data){
//		
//	}
//});