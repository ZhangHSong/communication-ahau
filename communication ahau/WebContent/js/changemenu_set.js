function showDiv1() {
	// 获取要显示的div对象
	var Div1 = document.getElementById('main_right1');
	// 显示
	Div1.style.display = "block";
	var Div3 = document.getElementById('main_right2');
	// 显示
	Div3.style.display = "block";
	var Div2 = document.getElementById('main_right_gexinghua');
	Div2.style.display = "none";
}

function showDiv2() {
	// 获取要显示的div对象
	var Div1 = document.getElementById('main_right1');
	// 显示
	Div1.style.display = "none";
	var Div3 = document.getElementById('main_right2');
	// 显示
	Div3.style.display = "none";
	var Div2 = document.getElementById('main_right_gexinghua');
	Div2.style.display = "block";
}