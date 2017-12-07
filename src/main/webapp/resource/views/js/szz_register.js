var shoucang = document.querySelector(".top .top_left>img");
shoucang.onmouseover = function(){
	shoucang.style.transform = "rotate(360deg)";
	shoucang.style.transition = "0.25s";
	shoucang.style.cursor = "pointer";
}
shoucang.onmouseout = function(){
	shoucang.style.transform = "rotate(-360deg)";
	shoucang.style.transition = "0.25s";
}
//input 框的聚焦事件，显示提示
var inputs = document.querySelectorAll("form .inputs");
var tishi = document.querySelectorAll(".tishi div");
var submits = document.getElementById("submits");
console.log(submits);
//每个input框聚焦失焦共有事件
for(var i=0;i<inputs.length;i++){
	inputs[i].index = i;
	inputs[i].onfocus = function(){
		tishi[this.index].style.display = "block";
	}
	inputs[i].oninput = function() {
		//调用函数，判断是input.value否为空
		isNull();
	}
}


//单个input的失焦事件
var phone = document.getElementById("phone");
var yanzheng = document.getElementById("yanzheng");
var pass1 = document.getElementById("pass1");
var pass2 = document.getElementById("pass2");
var phoneCode = document.getElementById("phoneCode");
var checks = document.getElementById("checks");
var txingyanzheng = document.getElementsByClassName("txingyanzheng")[0];

//设定提交按钮初识状态不能点击
if(phone.value == "" || yanzheng.value == "" || pass1.value == "" || pass2.value == "" || phoneCode.value == "") {
	document.getElementById("submits").disabled = true;
	document.getElementById("submits").style.background = "lightgrey";
}
//验证码失焦事件
var arr = [1,2,3,4,5,6,7,8,9,0,"A","B","C","D","E","F","G"];
var arr1 = [];
for(var i = 0; i<4;i++){
	var index = parseInt(Math.random()*arr.length);
	arr1.push(arr[index]);
}
txingyanzheng.innerHTML = arr1.join("");
console.log(txingyanzheng.innerHTML);
yanzheng.onblur = function(){
	var ya_value = this.value;
	if(ya_value != txingyanzheng.innerHTML ){
		tishi[1].style.visibility = "visible";
		tishi[1].innerHTML = "验证码不正确";
	}else{
		tishi[1].style.visibility = "hidden";
		tishi[1].innerHTML = "请输入图片验证码";
	}
}
//密码失焦事件
pass1.onblur = function(){
	var val = this.value;
	if(val == ""){
		tishi[2].style.visibility = "visibile";
	}else{
		tishi[2].style.visibility = "hidden";
	}
}

pass2.onblur = function(){
	var val1 = pass1.value;
	var val2 = pass2.value;
	if(val1 !=val2){
		tishi[3].style.visibility = "visible";
		tishi[3].innerHTML = "两次输入的密码不一致";
	}else{
		tishi[3].style.visibility = "hidden";
		tishi[3].innerHTML = "请确认密码";
	}
}


//手机验证码是否为空
phoneCode.onblur = function(){
	var val = this.value;
	if(val == ""){
		tishi[4].style.visibility = "visibile";
	}else{
		tishi[4].style.visibility = "hidden";
	}
}
//封装函数，用来判断input框是否为空
function isNull() {
	if(phone.value != "" && yanzheng.value != "" && pass1.value != "" && pass2.value != "" && phoneCode.value != "") {
		document.getElementById("submits").disabled = false;
		document.getElementById("submits").style.background = "red";
	}
}
