function showDiv1() {
	// 获取要显示的div对象
	var Div1 = document.getElementById('loginScreen');
	// 显示
	Div1.style.display = "block";
	var Div2 = document.getElementById('logupScreen');
	Div2.style.display = "none";
	var Div3 = document.getElementById('maindiv');
	Div3.style.height = "350px";
	var Div4 = document.getElementById('signin');
	Div4.style.color = "#3487FF";
	var Div5 = document.getElementById('signup');
	Div5.style.color = "dimgrey";
}

function showDiv2() {
	// 获取要显示的div对象
	var Div1 = document.getElementById('loginScreen');
	// 显示
	Div1.style.display = "none";
	var Div2 = document.getElementById('logupScreen');
	Div2.style.display = "block";
	var Div3 = document.getElementById('maindiv');
	Div3.style.height = "420px";
	var Div4 = document.getElementById('signin');
	Div4.style.color = "dimgrey";
	var Div5 = document.getElementById('signup');
	Div5.style.color = "#3487FF";
}

function sbsignin() {
	var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;
	var phone = $.trim($('#pnumber').val());
	if (!phoneReg.test(phone)) {
		alert('请输入有效的手机号码！');
		return false;
	}
	var pword = $.trim($('#password').val());
	var patrn = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
	if (!patrn.exec(pword)) {
		alert('请输入正确格式的密码！');
		return false
	}
	return true;
}

function sbsignup() {
	var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;
	var phone = $.trim($('#pnumber1').val());
	if (!phoneReg.test(phone)) {
		alert('请输入有效的手机号码！');
		return false;
	}
	var pword = $.trim($('#password1').val());
	var patrn = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
	if (!patrn.exec(pword)) {
		alert('请输入正确格式的密码！');
		return false
	}
	var patrncode = /^\d{6}$/;
	var ncode = $.trim($('#numbercode').val());
	if (!patrncode.exec(ncode)) {
		alert('请输入6位数字短信验证码！');
		return false;
	}
	return true;
}

function trim(str) { // 删除左右两端的空格
	return str.replace(/(^\s*)|(\s*$)/g, " ");
}

function change_function() {
	Div2 = document.getElementById('home_main_right_left_top');
	Div2.style.zIndex = 300;
    Div2.style.position="relative";
	var Div1 = document.getElementById('publish_bg');
	Div1.style.opacity = "0.7";
	Div1.style.display = "block";
}

function recur_function(){
	Div2 = document.getElementById('home_main_right_left_top');
	Div2.style.zIndex = 0;
    Div2.style.position="static";
	var Div1 = document.getElementById('publish_bg');
	Div1.style.opacity = "0.7";
	Div1.style.display = "none";
}


