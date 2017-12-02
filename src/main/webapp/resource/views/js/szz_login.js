var sao = document.getElementsByClassName("sao")[0];
var zhanghu = document.getElementsByClassName("zhanghu")[0];
var erweima = document.getElementsByClassName("erweima")[0];
var hu = document.getElementsByClassName("hu")[0];
sao.onclick = function(){
	this.style.color = "red";
	zhanghu.style.color = "black";
	erweima.style.display = "block";
	hu.style.display = "none";
}
zhanghu.onclick = function(){
	this.style.color = "red";
	sao.style.color = "black";
	hu.style.display = "block";
	erweima.style.display = "none";
}
var username = document.getElementById("username");
var passwords = document.getElementById("password");
var login_in = document.getElementsByClassName("login_in")[0];

login_in.onclick = function(){
	var xhr = new XMLHttpRequest();
	xhr.onload = function(){
		console.log(this.responseText);
//		if(this.responseText ==""){
//			
//		}
	}
	var formData = new FormData();
	formData.append("username",document.getElementById("username").value);
	formData.append("password",document.getElementById("password").value);
	xhr.open("POST","",true);
	xhr.send(formData);
}
