<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>person_info</title>
<link rel="stylesheet" type="text/css" href="css/b.css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/11.css" />
<script src="js/change.js"></script>
<script src="js/birthday_set.js"></script>
<script type="text/javascript">
	$(function() {
		$("#pic").click(function() {
			$("#upload").click(); //隐藏了input:file样式后，点击头像就可以本地上传
			$("#upload").on("change", function() {
				var objUrl = getObjectURL(this.files[0]); //获取图片的路径，该路径不是图片在本地的路径
				if (objUrl) {
					$("#pic").attr("src", objUrl); //将图片路径存入src中，显示出图片
				}
			});
		});
	});

	//建立一個可存取到該file的url
	function getObjectURL(file) {
		var url = null;
		if (window.createObjectURL != undefined) { // basic
			url = window.createObjectURL(file);
		} else if (window.URL != undefined) { // mozilla(firefox)
			url = window.URL.createObjectURL(file);
		} else if (window.webkitURL != undefined) { // webkit or chrome
			url = window.webkitURL.createObjectURL(file);
		}
		return url;
	}
</script>
</head>
<body>
	<div class="all">
		<div class="header">
			<a href="#">
				<div class="header_div">
					<img class="p_pic" src="img/person.png" />
					<div class="header_word">
						<b>简介</b>
					</div>
				</div>
			</a>
		</div>

		<div class="main">
			<div class="main_left">

				<div class="main_left_div">
					<div class="main_left_div_info">
						<span class="s1" onclick="showDiv1()">你的详细资料</span>
					</div>
				</div>

				<div class="main_left_div">
					<div class="main_left_div_info">
						<span class="s1" onclick="showDiv2()">你知道吗？</span>
					</div>
				</div>

			</div>

			<form action="${pageContext.request.contextPath }/homepage"
				enctype="multipart/form-data" method="post" id="ti">

				<div class="main_right_1" id="main_right_1">
					<div class="main_right_div">

						<div class="main_right_div_info1">
							<img id="pic" src="img/add.png" class="se"> <input
								id="upload" name="head_portrait" type="file"
								style="display: none" />
						</div>

					</div>
				</div>

				<div class="main_right_2" id="main_right_2">
					<div class="main_right_div">
						<div class="main_right_div_info1">
							昵称: <input class="div11" type="text" name="nickname" />
						</div>
					</div>

					<div class="main_right_div">
						<div class="main_right_div_info">
							年龄: <select id="year" onchange="load_day()" class="xiala"
								name="year">
								<option value="">请选择</option>
								<option>1985</option>
								<option>1986</option>
								<option>1987</option>
								<option>1988</option>
								<option>1989</option>
								<option>1990</option>
								<option>1991</option>
								<option>1992</option>
								<option>1993</option>
								<option>1994</option>
								<option>1995</option>
								<option>1996</option>
								<option>1997</option>
								<option>1998</option>
								<option>1999</option>
								<option>2000</option>
							</select> <select id="month" onchange="load_day()" class="xiala"
								name="mouth">
								<option value="">请选择</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
							</select> <select id="day" class="xiala" name="day">
								<option value="">请选择</option>
							</select>
						</div>
					</div>


					<div class="main_right_div">
						<div class="main_right_div_info1">
							性别: <input class="div11" type="text" name="gender" />
						</div>
					</div>

					<div class="main_right_div">
						<div class="main_right_div_info1">
							地址: <input class="div11" type="text" name="province" />
						</div>
					</div>

					<div class="main_right_div">
						<div class="main_right_div_info1">
							专业：<input type="text" class="div11" name="major" />
						</div>
					</div>

					<div class="main_right_div">
						<div class="main_right_div_info1">
							个性签名：<input type="text" class="div11" name="sign" />
						</div>
					</div>

					<div class="main_right_div">
						<div class="main_right_div_info1">
							QQ：<input type="text" class="div11" name="wechat" />
						</div>
					</div>
				</div>



				<div class="main_right_gexinghua" id="main_right_gexinghua">

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_div_sytle">
							星座：<input type="text" class="div11" name="constellation" />
						</div>
					</div>

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_div_sytle">
							血型：<input type="text" class="div11" name="bloodtype" />
						</div>
					</div>

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_word">
							<div class="main_right_gexinghua_div_sytle">
								喜欢的歌：&nbsp;&nbsp;&nbsp; <input type="text" class="div11"
									name="music" />
							</div>
						</div>
					</div>

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_word">
							<div class="main_right_gexinghua_div_sytle">
								喜欢的偶像： <input type="text" class="div11" name="idol" />
							</div>
						</div>
					</div>

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_word">
							<div class="main_right_gexinghua_div_sytle">
								喜欢的运动： <input type="text" class="div11" name="exercise" />
							</div>
						</div>
					</div>
				</div>
				<div class="div222">
					<input type="submit" class="submit1" value="提交" tabindex="8" />
				</div>
			</form>
		</div>

	</div>
</body>
</html>
