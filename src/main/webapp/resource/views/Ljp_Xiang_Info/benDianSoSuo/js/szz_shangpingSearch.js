// var products = document.getElementById("products");
// var amount = document.getElementById("amount");
//
// $.ajax({
// 	url: "http://10.80.13.35:8176/wine/find.do?wineName=%E8%8C%85%E5%8F%B0",
// 	type: "get",
// 	data: {},
// 	async: true,
// 	dataType: "json",
// 	success: function(data) {
// 		console.log(data);
// 		for(var i = 0; i < data.length; i++) {
// 			$("<li><a><img src='../"+data[i].wineImg1+"'/><i class='wineId'>"+data[i].wid+"</i><h5>"+data[i].wineDegree+"°"+data[i].wineName+data[i].wineLiter+"</h5><p class='price'>￥"+data[i].winePrice+"</p><p>已售<span class='shuliang'>"+data[i].wineSales+"</span>件</p></a></li>").appendTo($(".list ul"));
//
// 		}
// 		products.innerHTML = "茅台酒";
// 		amount.innerHTML = data.length;
// 	}
// });