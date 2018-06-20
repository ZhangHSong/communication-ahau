function change_function() {
	Div2 = document.getElementById('home_main_right_left_top');
	Div2.style.zIndex = 300;
	Div2.style.position = "relative";
	var Div1 = document.getElementById('publish_bg');
	Div1.style.opacity = "0.7";
	Div1.style.display = "block";
}

function recur_function() {
	Div2 = document.getElementById('home_main_right_left_top');
	Div2.style.zIndex = 0;
	Div2.style.position = "static";
	var Div1 = document.getElementById('publish_bg');
	Div1.style.opacity = "0.7";
	Div1.style.display = "none";
}

