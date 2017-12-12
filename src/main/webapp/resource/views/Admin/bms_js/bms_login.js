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

