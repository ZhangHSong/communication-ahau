<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/info.css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="js/info.js">
	
</script>
<title>communication-ahau</title>
</head>

<body bgcolor="#F6F6F6">

	<div class="all">

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
					value="发现你的宇宙..." onfocus="this.value=''" /> <img
					class="search_pic" src="img/search.png" title="搜索" />
			</div>
			<!--登录框-->
			<div class="login-button">
				<button id="login" class="btn1">
					<table cellspacing="8">
						<tr>
							<td><span class="login">登录 / 注册</span></td>
							<td><img src="img/signin.png" class="img1" /></td>
						</tr>
					</table>
				</button>
			</div>
			<hr style="position: absolute; top: 68px;" width=100% />
		</div>
		<div class="publish_bg" id="publish_bg" onclick="recur_function()">

		</div>
		<div class="info_left">
			<div class="info_left_top"></div>
			<div class="info_left_bottom">
				<div class="info_left_bottom_div1">
					<img class="imgvia" src="img/via2.JPG" />
				</div>
				<div class="info_left_bottom_div2">
					<span class="name">${sessionScope.nickname }</span>
				</div>
				<div class="info_left_bottom_div3">
					<button class="btn111">
						<table>
							<tr>
								<td><img src="img/publish.png" class="imginfo11"></td>
								<td><a href="<%=request.getContextPath()%>/information.jsp"
									class="char1">编辑个人资料</a></td>
							</tr>
						</table>
					</button>
				</div>
				<div class="info_left_bottom_div4">
					<p class="char1">956位用户赞了</p>
					<p class="char1">84541位用户关注了</p>
					<p class="char1">个人主页被浏览了14889次</p>
				</div>
			</div>
		</div>
		<div class="info_right">
			<div class="info_right_top">
				<div class="info_right_top_top">
					<button class="Button btnimg1">
						<img src="img/camera.png" class="imginfo2" />&nbsp;编辑封面图片
					</button>
					<div class="div1">
						<img src="img/bg1.jpg" class="imginfo1" />
					</div>
				</div>
				<div class="info_right_top_bottom">
					<div class="idea_1_footer">
						<ul>
							<li class="li_0">
								<table>
									<tr>
										<td><img class="photo3" src="img/agree.png"></td>
										<td><span class="char1">赞</span></td>
									</tr>
								</table>
							</li>
							<li class="li_0">
								<table>
									<tr>
										<td><img class="photo3" src="img/save1.png"></td>
										<td><span class="char1">关注</span></td>
								</table>
							</li>
							<li class="li_0">
								<table>
									<tr>
										<td><img class="photo3" src="img/like1.png"></td>
										<td><span class="char1">喜欢</span></td>
								</table>
							</li>
						</ul>
					</div>
					<div class="info_right_top_bottom_right">
						<button class="btnimg2">
							<img src="img/music.png" class="imginfo2" />&nbsp;他的音乐
						</button>
					</div>
				</div>
			</div>
			<div class="info_right_bottom">
				<div class="info_right_bottom_left">
					<div class="idea_1">
						<div class="idea_1_top">
							<div class="idea_1_top_left">
								<img src="img/bg.jpg" class="imginfo" />
							</div>
							<div class="idea_1_top_right">
								<div>
									<span class="idea_name">早春的松</span>
								</div>
								<div>
									<span class="idea_charsign">个性签名</span>
								</div>
							</div>
							<button class="btnmore" type="button">
								<img src="img/more.png" style="width: 25px; height: 25px;">
							</button>
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
					</div>
				</div>
				<div class="info_right_bottom_right">
					<div class="info_right_bottom_right_div1">
						<div class="d1">
							<span class="char2">个人简介</span>
						</div>
						<div class="d2">
							<div class="d3">
								<p class="p1">性别:${sessionScope.gender }</p>
								<p class="p1">年龄:${sessionScope.age }</p>
								<p class="p1">所在地：${sessionScope.location }</p>
								<p class="p1">专业：${sessionScope.major }</p>
								<p class="p1">TIM：${sessionScope.wechat }</p>
								<p class="p1">星座：${sessionScope.constellation }</p>
								<p class="p1">血型：${sessionScope.bloodtype }</p>
								<p class="p1">喜欢的音乐：${sessionScope.music }</p>
								<p class="p1">喜欢的偶像：${sessionScope.idol }</p>
								<p class="p1">喜欢的运动：${sessionScope.exercise }</p>
							</div>
						</div>
					</div>
					<div class="info_right_bottom_right_div2"></div>

				</div>
			</div>
		</div>

	</div>
</body>

</html>