<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/homepage.css" />
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
						<td><span class="login">登录 / 注册</span></td>
						<td><img src="img/signin.png" class="img1" /></td>
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
								<img src="img/bg.jpg" style="width: 50px; height: 50px;" />
							</div>
							<div class="publish_content_right">
								<div class="publish_content_main">
									<textarea class="text_content" onclick="change_function()"
										placeholder="分享你的心情..."></textarea>
								</div>
							</div>
						</div>
						<div class="publish_bottom">
							<div class="publish_bottom_left">
								<button class="Button btnimg1" type="button">
									<img src="img/camera.png" class="imginfo2" />添加图片
								</button>
							</div>
							<div class="publish_bottom_right" type="button">
								<button class="btn11">发布</button>
							</div>
						</div>
					</div>
				</div>

				<div class="home_main_right_left_bottom">
					<div class="idea_1">
						<div class="idea_1_top">
							<button class="btnmore" type="button">
								<img src="img/more.png" style="width: 25px; height: 25px;">
							</button>
							<div class="idea_1_top_left">
								<img src="img/bg.jpg" class="imginfo" />
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
					</div>
				</div>
			</div>

			<div class="home_main_right_right">
				<div class="home_main_right_right_div1">
					<div class="myselfinfo">
						<div class="infotop">
							<div class="headpic">
								<a href="<%=request.getContextPath()%>/info.jsp"><img
									class="imginfo" src="img/bg.jpg" /></a>
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
</body>

</html>