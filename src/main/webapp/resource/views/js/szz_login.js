var sao = document.getElementsByClassName("sao")[0];
var zhanghu = document.getElementsByClassName("zhanghu")[0];
var erweima = document.getElementsByClassName("erweima")[0];
var hu = document.getElementsByClassName("hu")[0];
sao.onclick = function () {
    this.style.color = "red";
    zhanghu.style.color = "black";
    erweima.style.display = "block";
    hu.style.display = "none";
}
zhanghu.onclick = function () {
    this.style.color = "red";
    sao.style.color = "black";
    hu.style.display = "block";
    erweima.style.display = "none";
}
var username = document.getElementById("username");
var passwords = document.getElementById("password");
var login_in = document.getElementsByClassName("login_in")[0];

if (username.value == "" || passwords.value == "") {
    login_in.disabled = true;
    login_in.style.background = "lightgrey";
}
username.oninput = function () {
    //调用函数，判断是input.value否为空
    isNull();
}
passwords.oninput = function () {
    //调用函数，判断是input.value否为空
    isNull();
}

function isNull() {
    if (username.value != "" && passwords.value != "") {
        login_in.disabled = false;
        login_in.style.background = "red";
    }
}