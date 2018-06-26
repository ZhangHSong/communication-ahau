<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/ho.css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="js/homepage.js">
	
</script>

<title>communication-ahau</title>
</head>

<body bgcolor="#F6F6F6">
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
				<table cellspacing="8">
					<tr>
						<td><img src="img/${sessionScope.head_portrait }"
							class="img1" /></td>
					</tr>
				</table>
			</button>
		</div>
		<hr style="position: absolute; top: 70px;" width=100% />
	</div>

	<div class="publish_bg" id="publish_bg" onclick="recur_function()">

	</div>

	<div class="home_main">
		<div class="home_main_left">
			<div class="home_main_left_top"></div>
			<div class="home_main_left_bottom">
				<div class="home_main_left_bottom_div1">
					<div class="home_main_left_bottom_div1_top">
						<table>
							<tr>
								<td><img src="img/near.png"
									style="width: 25px; height: 25px;" /></td>
								<td><span>附近的人</span></td>
							</tr>
						</table>
					</div>
					<div class="home_main_left_bottom_div1_bottom">显示附近的用户</div>
				</div>
				<div class="home_main_left_bottom_div2"></div>
				<div class="home_main_left_bottom_div1">
					<div class="home_main_left_bottom_div1_top">
						<table>
							<tr>
								<td><img src="img/like1.png"
									style="width: 25px; height: 25px;" /></td>
								<td><span>猜你喜欢</span></td>
							</tr>
						</table>
					</div>
					<div class="home_main_left_bottom_div1_bottom">一些与之相似的用户</div>
				</div>
				<div class="home_main_left_bottom_div2"></div>
				<div class="home_main_left_bottom_div1">
					<div class="home_main_left_bottom_div1_top">
						<table>
							<tr>
								<td><img src="img/cp.png"
									style="width: 25px; height: 25px;" /></td>
								<td><span>一周cp</span></td>
							</tr>
						</table>
					</div>
					<div class="home_main_left_bottom_div1_bottom">一周cp的活动</div>
				</div>
				<div class="home_main_left_bottom_div2"></div>
			</div>
		</div>
		<div class="home_main_right">
			<div class="home_main_right_left">
				<div class="home_main_right_left_top" id="home_main_right_left_top">

					<div class="publish_main" id="publish_main">
						<iframe name="fileUpload"
							style="width: 0; height: 0; display: none"></iframe>
						<form id="form" method="post"
							action="${pageContext.request.contextPath }/StateServlet"
							enctype="multipart/form-data" 
							name="fileForm" target="fileUpload">
							<div class="publish_title">
								<div class="publish_title_a">
									<table>
										<tr>
											<td><img src="img/publish.png"
												style="width: 25px; height: 25px;" /></td>
											<td><span>分享心情</span></td>
										</tr>
									</table>
								</div>
							</div>
							<div class="publish_content">
								<div class="publish_content_left">
									<img src="img/${sessionScope.head_portrait }"
										style="width: 50px; height: 50px;" />
								</div>
								<div class="publish_content_right">
									<div class="publish_content_main">
										<textarea class="text_content" onclick="change_function()"
											id="character21" placeholder="分享你的心情..." name="character"></textarea>
									</div>
								</div>
							</div>
							<div class="publish_photo" id="publish_photo">
								<img style="width: 80px; height: 80px; margin-left: 20px;"
									src="img/add.png" id="i">
							</div>
							<div class="publish_bottom">
								<div class="publish_bottom_left">
									<div class=" Button btnimg1">
										<img src="img/camera.png" id="pic" class="imginfo2" />&nbsp;添加图片
										<input id="upload" name="photo" type="file" class="imginfo5"
											style="display: none" multiple="multiple" />
									</div>
								</div>
								<div class="publish_bottom_right">
									<input type="submit" class="btn11" value="发布"
										onclick="add_state() " />
								</div>
							</div>
						</form>
					</div>
				</div>

				<div class="home_main_right_left_bottom"
					id="home_main_right_left_bottom">
					<%-- <div class="idea_1">
						<div class="idea_1_top">
							<button class="btnmore" type="button">
								<img src="img/more.png" style="width: 25px; height: 25px;">
							</button>
							<div class="idea_1_top_left">
								<img src="img/${sessionScope.head_portrait }" class="imginfo" />
							</div>
							<div class="idea_1_top_right">
								<div>
									<span class="idea_name">${sessionScope.nickname }</span>
								</div>
								<div>
									<span class="idea_charsign">${sessionScope.sign }</span>
								</div>
							</div>
						</div>
						<div class="idea_1_bottom">
							<div class="idea_character">
								<p>没有男朋友的可以先找#蓝朋友# 因为—— 在那山的那边海的那边有一群蓝精灵 他们活泼又聪明 他们调皮又灵敏
									他们自由自在生活在那绿色的大森林 他们善良勇敢相互关心 欧可爱的蓝精灵 可爱的蓝精灵 他们齐心协力开动脑筋找到了歌歌胡
									他们唱歌跳舞快乐又欢欣……</p>
							</div>
							<div class="idea_photo">
								<ul>
									<li class="photo1"><img src="img/photo1.jpg"
										class="photo2"></li>
									<li class="photo1"><img src="img/photo2.jpg"
										class="photo2"></li>
									<li class="photo1"><img src="img/photo3.jpg"
										class="photo2"></li>
								</ul>
							</div>
						</div>
						<div class="idea_1_footer">
							<ul>
								<li class="li_0">
									<table>
										<tr>
											<td><img class="photo3" src="img/agree.png"></td>
											<td><span>1.1K</span></td>
										</tr>
									</table>
								</li>
								<li class="li_0">
									<table>
										<tr>
											<td><img class="photo3" src="img/comment.png"></td>
											<td><span>365</span></td>
										</tr>
									</table>
								</li>
								<li class="li_0">
									<table>
										<tr>
											<td><img class="photo3" src="img/share.png"></td>
											<td><span>分享</span></td>
										</tr>
									</table>
								</li>
								<li class="li_0">
									<table>
										<tr>
											<td><img class="photo3" src="img/save1.png"></td>
											<td><span>收藏</span></td>
									</table>
								</li>
							</ul>
						</div>
					</div>--%>
				</div>
			</div>

			<div class="home_main_right_right">
				<div class="home_main_right_right_div1">
					<div class="myselfinfo">
						<div class="infotop">
							<div class="headpic">
								<a href="<%=request.getContextPath()%>/info.jsp"><img
									class="imginfo" src="img/${sessionScope.head_portrait }" /></a>
							</div>
						</div>
						<div class="infobottom">
							<div class="namebox">
								<a href="<%=request.getContextPath()%>/info.jsp" class="namea">${sessionScope.nickname }</a>
							</div>
							<div class="fansinfo">
								<ul>
									<li class="li1"><a href="#" class="namea"> <strong
											class="strong1">0</strong> <span class="span1"> 好友 </span>
									</a></li>
									<li class="li1"><a href="#" class="namea"> <strong
											class="strong1">0</strong> <span class="span1"> 关注 </span>
									</a></li>
									<li class="li2"><a href="#" class="namea"> <strong
											class="strong1">0</strong> <span class="span1"> 被喜欢 </span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="home_main_right_right_div2"></div>
				<div class="home_main_right_right_div1">
					<div class="home_main_right_right_div1_top">
						<table>
							<tr>
								<td><img src="img/recommend1.png"
									style="width: 25px; height: 25px;" /></td>
								<td><span>个性推荐</span></td>
							</tr>
						</table>
					</div>
					<div class="home_main_right_right_div1_bottom">推荐电影音乐等</div>
				</div>
				<div class="home_main_right_right_div2"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var objUrl;
		$(function() {
			$("#pic").click(function() {
				$("#upload").click(); //隐藏了input:file样式后，点击头像就可以本地上传
				$("#upload").on("change", function() {
					objUrl = getObjectURL(this.files[0]); //获取图片的路径，该路径不是图片在本地的路径
					if (objUrl) {
						$("#i").attr("src", objUrl); //将图片路径存入src中，显示出图片
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

		function add_state() {
			var idea_1 = document.createElement("div");
			idea_1.className = "idea_1";

			var idea_1_top = document.createElement("div");
			idea_1_top.className = "idea_1_top";
			var btnmore = document.createElement("button");
			btnmore.className = "btnmore";
			var imgmore = document.createElement("img");
			imgmore.className = "imgmore";
			imgmore.src = "img/more.png";
			var idea_1_top_left = document.createElement("div");
			idea_1_top_left.className = "idea_1_top_left";
			var imginfo = document.createElement("img");
			imginfo.className = "imginfo";
			imginfo.src = "img/${sessionScope.head_portrait }";
			var idea_1_top_right = document.createElement("div");
			idea_1_top_right.className = "idea_1_top_right1";
			var diva = document.createElement("div");
			var divb = document.createElement("div");
			var idea_name = document.createElement("span");
			var idea_charsign = document.createElement("span");
			idea_name.className = "idea_name";
			idea_name.id = "idea_name"
			idea_charsign.id = "idea_charsign"
			idea_charsign.className = "idea_charsign";
			idea_name.innerText = "${sessionScope.nickname }";
			idea_charsign.innerText = "${sessionScope.sign }";
			idea_1_top.appendChild(btnmore);
			btnmore.appendChild(imgmore);
			idea_1_top_left.appendChild(imginfo);
			idea_1_top.appendChild(idea_1_top_left);
			idea_1_top.appendChild(idea_1_top_right);
			idea_1_top_right.appendChild(diva);
			idea_1_top_right.appendChild(divb);
			diva.appendChild(idea_name);
			divb.appendChild(idea_charsign);

			var idea_1_bottom = document.createElement("div");
			idea_1_bottom.className = "idea_1_bottom";
			var idea_character = document.createElement("div");
			idea_character.className = "idea_character";
			idea_character.id = 'new1';
			idea_1_bottom.appendChild(idea_character);
			idea_character.innerText = document.getElementById('character21').value;
			var idea_1_photo = document.createElement("div");
			idea_1_photo.className = "idea_1_photo";
			var idea_photo = document.createElement("div");
			idea_photo.className = "idea_photo";
			idea_1_photo.appendChild(idea_photo);
			var ul = document.createElement("ul");
			var photo1 = document.createElement("li");
			photo1.className = "photo1";
			var photo2 = document.createElement("img");
			photo2.className = "photo2";
			photo2.src = objUrl;
			photo1.appendChild(photo2);
			ul.appendChild(photo1);
			idea_photo.appendChild(ul);

			var idea_1_footer = document.createElement("div");
			idea_1_footer.className = "idea_1_footer";
			var ul1 = document.createElement("ul");
			var li_0 = document.createElement("li");
			var li_1 = document.createElement("li");
			var li_2 = document.createElement("li");
			var li_3 = document.createElement("li");
			li_0.className = "li_0";
			li_1.className = "li_0";
			li_2.className = "li_0";
			li_3.className = "li_0";
			var table0 = document.createElement("table");
			var tr0 = document.createElement("tr");
			var td01 = document.createElement("td");
			var td02 = document.createElement("td");
			var img0 = document.createElement("img");
			img0.className = "photo3";
			img0.src = "img/agree.png";
			td01.appendChild(img0);
			var span0 = document.createElement("span");
			span0.innerHTML = "1.1K";
			td02.appendChild(span0);
			li_0.appendChild(table0);
			table0.appendChild(tr0);
			tr0.appendChild(td01);
			tr0.appendChild(td02);

			var table1 = document.createElement("table");
			var tr1 = document.createElement("tr");
			var td11 = document.createElement("td");
			var td12 = document.createElement("td");
			var img1 = document.createElement("img");
			img1.className = "photo3";
			img1.src = "img/comment.png";
			td11.appendChild(img1);
			var span1 = document.createElement("span");
			span1.innerHTML = "365";
			td12.appendChild(span1);
			li_1.appendChild(table1);
			table1.appendChild(tr1);
			tr1.appendChild(td11);
			tr1.appendChild(td12);

			var table2 = document.createElement("table");
			var tr2 = document.createElement("tr");
			var td21 = document.createElement("td");
			var td22 = document.createElement("td");
			var img2 = document.createElement("img");
			img2.className = "photo3";
			img2.src = "img/share.png";
			td21.appendChild(img2);
			var span2 = document.createElement("span");
			span2.innerHTML = "分享";
			td22.appendChild(span2);
			li_2.appendChild(table2);
			table2.appendChild(tr2);
			tr2.appendChild(td21);
			tr2.appendChild(td22);

			var table3 = document.createElement("table");
			var tr3 = document.createElement("tr");
			var td31 = document.createElement("td");
			var td32 = document.createElement("td");
			var img3 = document.createElement("img");
			img3.className = "photo3";
			img3.src = "img/save1.png";
			td31.appendChild(img3);
			var span3 = document.createElement("span");
			span3.innerHTML = "收藏";
			td32.appendChild(span3);
			li_3.appendChild(table3);
			table3.appendChild(tr3);
			tr3.appendChild(td31);
			tr3.appendChild(td32);

			ul1.appendChild(li_0);
			ul1.appendChild(li_1);
			ul1.appendChild(li_2);
			ul1.appendChild(li_3);
			idea_1_footer.appendChild(ul1);
			idea_1.appendChild(idea_1_top);
			idea_1.appendChild(idea_1_bottom);
			idea_1.appendChild(idea_1_photo);
			idea_1.appendChild(idea_1_footer);
			var div = document.getElementById("home_main_right_left_bottom");
			div.appendChild(idea_1);
			$("#i").attr("src", "img/add.png" ); 
			$("#character21").empty();
	<%--$.ajax({
			type : 'POST',
			url : '${pageContext.request.contextPath }/StateServlet',
			dataType : "json",
			data : $('#form').serialize(),
			success : function(data) {
				
			}
		});--%>
		recur_function();
		}
	</script>
</body>

</html>