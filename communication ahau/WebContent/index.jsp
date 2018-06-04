
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>communication-ahau</title>
<link rel="shortcut icon" type="image/x-icon"
	href="img/bitbug_favicon.ico" media="screen" />
<link rel="stylesheet" type="text/css" href="css/i.css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="js/index.js"></script>
</head>

<body>
	<div id="under">
		<div class="fixed_header">
			<div class="cp_position">
				<a href="#">
					<table>
						<tr>
							<td><img class="img_1" src="img/couple.png"></td>
							<td><span class="title">平行宇宙</span></td>
						</tr>
					</table>
				</a>
			</div>

			<div class="home_dis_per">
				<ul class="ul_list">
					<li><a href="http://www.qq.com"> <img class="homepage_pic"
							src="img/homepage.png" title="首页" />
							<div class="homepage_word">首页</div>
					</a></li>

					<li><a href="http://www.qq.com"> <img class="homepage_pic"
							src="img/discover.png" title="发现" />
							<div class="homepage_word">发现</div>
					</a></li>

					<li><a href="http://www.qq.com"> <img class="homepage_pic"
							src="img/person.png" title="个人" />
							<div class="homepage_word">个人</div>
					</a></li>
				</ul>
			</div>
			<div class="search_div">
				<input class="search_text" name="search" type="text"
					placeholder="探索未知的宇宙..." /> <img class="search_pic"
					src="img/search.png" title="搜索" />
			</div>
			<!--登录框-->
			<div class="login-button">
				<button id="login" class="btn1">

					<div class="div123">
						<span class="login">登录 / 注册</span>
					</div>
					<div class="div456">
						<img src="img/signin.png" class="img1" />
					</div>

				</button>
			</div>
		<!--<hr style="position: absolute; top: 70px;" width=100% />-->
			</div>

			<div class="main_char">
				<div class="main_char1">

					<p>亿万光年以外的星星，在我的背后熠熠生辉</p>
					<p> 在这个孤独的星球，我们很难拥有一个人</p>
					<p> 但是在那一刻</p>
					<p> 我拥有了整个天空</p>
				</div>
			</div>


	</div>

	<div class="overCurtain"></div>

	<div class="hide-center" id="maindiv">

		<div class="location">
			<div id="formhead">
				<div id="formhead-title">
					<span id="signin" class="character" onclick="showDiv1()">登录</span>
					<span id="signup" class="character" onclick="showDiv2()">注册</span>
				</div>
				<button type="button" id="close"></button>
			</div>

			<div id="loginScreen">
				<form action="mercury/LogininServlet" method="post"
					onsubmit="return sbsignin();">
					<table cellpadding="2">
						<tr>
							<td><input type="text" id="pnumber" name="pnumber"
								class="text1" placeholder="请输入登录手机号" /></td>
						</tr>
						<tr>
							<td><input type="password" id="password" name="password"
								class="text1" placeholder="6-16位密码，区分大小写，不能用空格" /></td>
						</tr>
						<tr>
							<td><label class="lable1"> <input type="checkbox"
									checked="checked" /> 记住密码
							</label></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								class="submit" value="登录" tabindex="8" /></td>
						</tr>
					</table>
				</form>
			</div>

			<div id="logupScreen">
				<form action="mercury/LogininServlet" method="post"
					onsubmit="return sbsignup();">
					<table cellpadding="2">
						<tr>
							<td><input type="text" id="pnumber1" name="pnumber"
								class="text1" placeholder="请输入注册手机号" /></td>
						</tr>
						<tr>
							<td><input type="password" id="password1" name="password"
								class="text1" placeholder="6-16位密码，区分大小写，不能用空格" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="text" name="numbercode"
								id="numbercode" class="text2" placeholder="短信验证码" />
								<button class="btn2">发送短信验证码</button></td>
						</tr>
						<tr>
							<td><label class="lable1"> <input type="checkbox"
									checked="checked" /> 同意协议
							</label></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								class="submit" value="立即注册" tabindex="8" /></td>
						</tr>
					</table>
				</form>
			</div>

		</div>
	</div>

	<!--登陆框响应动作-->
	<script>
		$("#login").click(function() {
			$(".hide-center").fadeIn("normal");
			$(".overCurtain").fadeIn("normal");
			var a = document.getElementById('under');
			a.style.display = "none";
		})
		$("#close").click(function() {
			$(".hide-center").fadeOut("normal")
			$(".overCurtain").fadeOut("normal")
			var b = document.getElementById('under');
			b.style.display = "block";
		})
	</script>

</body>
</html>