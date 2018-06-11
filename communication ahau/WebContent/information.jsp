<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<title>person_info</title>
<link rel="stylesheet" type="text/css" href="css/p.css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<style type="text/css">
.float {
	float: left;
	width: 200px;
	height: 200px;
	overflow: hidden;
	border: 1px solid #CCCCCC;
	border-radius: 10px;
	padding: 5px;
	margin: 5px;
}

img {
	position: relative;
}

.result {
	width: 200px;
	height: 200px;
	text-align: center;
	box-sizing: border-box;
}

#file_input {
	display: none;
}

.se {
	width: 60px;
	height: 60px;
	display: inline-block;
	cursor: pointer;
	border: none;
	float: left;
	outline: none;
}

.submit {
	display: inline-block;
	padding: 0 14px;
	font-size: 14px;
	line-height: 32px;
	color: #8590a6;
	text-align: center;
	cursor: pointer;
	background: none;
	border: 1px solid;
	border-radius: 3px;
	outline: none;
	float: left;
	margin: 15px;
}

.delete {
	width: 200px;
	height: 200px;
	position: absolute;
	text-align: center;
	line-height: 200px;
	z-index: 10;
	font-size: 30px;
	background-color: rgba(255, 255, 255, 0.8);
	color: #777;
	opacity: 0;
	-webkit-transition-duration: 0.7s;
}

.delete:hover {
	cursor: pointer;
	opacity: 1;
}
</style>
<script src="js/change.js">
	
</script>
<script src="js/birthday_set.js">
	
</script>
<script src="js/click.js"></script>
<script type="text/javascript">      
      
      
window.onload = function(){      
    var input = document.getElementById("file_input");      
    var result;      
    var dataArr = []; // 储存所选图片的结果(文件名和base64数据)    
    var fd;  //FormData方式发送请求      
    var oSelect = document.getElementById("select");    
    var oAdd = document.getElementById("add");    
    var oSubmit = document.getElementById("submit");    
    var oInput = document.getElementById("file_input");    
       
    if(typeof FileReader==='undefined'){      
        alert("抱歉，你的浏览器不支持 FileReader");      
        input.setAttribute('disabled','disabled');      
    }else{      
        input.addEventListener('change',readFile,false);      
    }//handler      
      
          
    function readFile(){     
        fd = new FormData();      
        var iLen = this.files.length;    
        var index = 0;    
        for(var i=0;i<iLen;i++){    
            if (!input['value'].match(/.jpg|.gif|.png|.jpeg|.bmp/i)){//判断上传文件格式      
                return alert("上传的图片格式不正确，请重新选择");      
            }    
            var reader = new FileReader();    
            reader.index = i;      
            fd.append(i,this.files[i]);    
            reader.readAsDataURL(this.files[i]);  //转成base64      
            reader.fileName = this.files[i].name;    
    
    
            reader.onload = function(e){     
                var imgMsg = {      
                	phonenumber : <%=(String) session.getAttribute("phonenumber")%>
                    name : this.fileName,//获取文件名      
                    base64 : this.result   //reader.readAsDataURL方法执行完后，base64数据储存在reader.result里      
                }     
                dataArr.push(imgMsg);      
                result = '<div class="delete">delete</div><div class="result"><img src="'+this.result+'" alt=""/></div>';      
                var div = document.createElement('div');    
                div.innerHTML = result;      
                div['className'] = 'float';    
                div['index'] = index;      
                document.getElementsByTagName('body')[0].appendChild(div);  　//插入dom树      
                var img = div.getElementsByTagName('img')[0];    
                img.onload = function(){      
                    var nowHeight = ReSizePic(this); //设置图片大小      
                    this.parentNode.style.display = 'block';      
                    var oParent = this.parentNode;      
                    if(nowHeight){      
                        oParent.style.paddingTop = (oParent.offsetHeight - nowHeight)/2 + 'px';      
                    }      
                }     
    
    
                div.onclick = function(){}    
                    this.remove();               // 在页面中删除该图片元素    
                    delete dataArr[this.index];  // 删除dataArr对应的数据    
                        
                }    
                index++;    
            }      
        }      
    }      
          
          
    function send(){     
    
    
        var submitArr = [];    
        for (var i = 0; i < dataArr.length; i++) {    
            if (dataArr[i]) {    
                submitArr.push(dataArr[i]);    
            }    
        }    
        // console.log('提交的数据：'+JSON.stringify(submitArr))   
        $.ajax({      
            url : "headPhotoAction",  
            type : 'post',   
            data : JSON.stringify(submitArr),      
            dataType: 'json',      
            //processData: false,   用FormData传fd时需有这两项      
            //contentType: false,      
            success : function(data){
            	var d = eval("("+data+")");
            	alert("d.head_portrait");
            	 //$("#select").text(""+d.head_portrait+"");
            	              }
  
        })      
    }      
          
       
    
    
    oSelect.onclick=function(){     
        oInput.value = "";   // 先将oInput值清空，否则选择图片与上次相同时change事件不会触发    
        //清空已选图片    
        $('.float').remove();    
        dataArr = [];     
        index = 0;            
        oInput.click();     
    }     
    
    
    
    
    oSubmit.onclick=function(){      
        if(!dataArr.length){      
            return alert('请先选择文件');      
        }      
        send();      
    }      
}
/*     
 用ajax发送fd参数时要告诉jQuery不要去处理发送的数据，     
 不要去设置Content-Type请求头才可以发送成功，否则会报“Illegal invocation”的错误，     
 也就是非法调用，所以要加上“processData: false,contentType: false,”     
 * */      
      
                  
function ReSizePic(ThisPic) {      
    var RePicWidth = 200; //这里修改为您想显示的宽度值      
      
    var TrueWidth = ThisPic.width; //图片实际宽度      
    var TrueHeight = ThisPic.height; //图片实际高度      
          
    if(TrueWidth>TrueHeight){      
        //宽大于高      
        var reWidth = RePicWidth;      
        ThisPic.width = reWidth;      
        //垂直居中      
        var nowHeight = TrueHeight * (reWidth/TrueWidth);      
        return nowHeight;  //将图片修改后的高度返回，供垂直居中用      
    }else{      
        //宽小于高      
        var reHeight = RePicWidth;      
        ThisPic.height = reHeight;      
    }      
}      
      
      
                  
</script>
</head>

<body>

	<div class="all">
		<div class="header">
			<a href="www.ahau.edu.cn">
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
					<div class="main_left_div_info s1">概览</div>
				</div>

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

				<div class="main_left_div"></div>
				<div class="main_left_div"></div>
			</div>


			<div class="main_right_1" id="main_right_1">
				<div class="main_right_div">

					<%-- <div class="main_right_div_info1">
							<img class="add_pic1" src="img/person.png" /> <input
								class="change" type="file" name="head_portrait" />
								<div class="container">    --%>


					<div class="container">
						<button id="select" class="se"
							style="background: url(img/add.png)"></button>
						<input type="file" id="file_input" name="head_portrait" />
						<!--用input标签并选择type=file，记得带上multiple，不然就只能单选图片了-->
						<button id="submit" class="submit">上传图片</button>
					</div>


				</div>
			</div>
			<form action="${pageContext.request.contextPath }/InformationServlet"
				method="post" id="ti">
				<div class="main_right_2" id="main_right_2">
					<div class="main_right_div">
						<div class="main_right_div_info1">
							昵称: <input class="div11" type="text" name="nickname"
								value="${sessionScope.nickname }" />
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
						<div class="main_right_div_info">
							性别: <select class="xiala" name="gender"
								value="${sessionScope.gender }">
								<option value="">请选择</option>
								<option>男</option>
								<option>女</option>
								<option>保密</option>
							</select>
						</div>
					</div>

					<div class="main_right_div">
						<div class="main_right_div_info">
							地址: <select class="xiala" name="province">
								<option selected value="">选择省份</option>
								<option value="江苏省">江苏省</option>
								<option value="北京">北京</option>
								<option value="天津">天津</option>
								<option value="上海">上海</option>
								<option value="重庆">重庆</option>
								<option value="广东省">广东省</option>
								<option value="浙江省">浙江省</option>
								<option value="福建省">福建省</option>
								<option value="湖南省">湖南省</option>
								<option value="湖北省">湖北省</option>
								<option value="山东省">山东省</option>
								<option value="辽宁省">辽宁省</option>
								<option value="吉林省">吉林省</option>
								<option value="云南省">云南省</option>
								<option value="四川省">四川省</option>
								<option value="安徽省">安徽省</option>
								<option value="江西省">江西省</option>
								<option value="黑龙江省">黑龙江省</option>
								<option value="河北省">河北省</option>
								<option value="陕西省">陕西省</option>
								<option value="海南省">海南省</option>
								<option value="河南省">河南省</option>
								<option value="山西省">山西省</option>
								<option value="内蒙古">内蒙古</option>
								<option value="广西">广西</option>
								<option value="贵州省">贵州省</option>
								<option value="宁夏">宁夏</option>
								<option value="青海省">青海省</option>
								<option value="新疆">新疆</option>
								<option value="西藏">西藏</option>
								<option value="甘肃省">甘肃省</option>
								<option value="台湾省">台湾省</option>
								<option value="香港">香港</option>
								<option value="澳门">澳门</option>
								<option value="国外">国外</option>
							</select> <SELECT style="width: 80" class="xiala" name="city">
								<OPTION value="">所在城市</OPTION>
							</SELECT>
						</div>
					</div>

					<div class="main_right_div">
						<div class="main_right_div_info1">
							专业：<input type="text" class="div11" name="major"
								value="${sessionScope.major }" />
						</div>
					</div>

					<div class="main_right_div">
						<div class="main_right_div_info1">
							个性签名：<input type="text" class="div11" name="sign"
								value="${sessionScope.sign }" />
						</div>
					</div>

					<div class="main_right_div">
						<div class="main_right_div_info1">
							QQ：<input type="text" class="div11" name="wechat"
								value="${sessionScope.wechat }" />
						</div>
					</div>
				</div>



				<div class="main_right_gexinghua" id="main_right_gexinghua">

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_div_sytle">
							我的星座： <select class="xiala" name="constellation">
								<option>请选择</option>
								<option>水瓶座</option>
								<option>双鱼座</option>
								<option>白羊座</option>
								<option>金牛座</option>
								<option>双子座</option>
								<option>巨蟹座</option>
								<option>狮子座</option>
								<option>处女座</option>
								<option>天枰座</option>
								<option>天蝎座</option>
								<option>射手座</option>
								<option>魔蝎座</option>
							</select>
						</div>
					</div>

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_div_sytle">
							血型：&nbsp;&nbsp;&nbsp; <select class="xiala" name="bloodtype">
								<option>请选择</option>
								<option>A</option>
								<option>B</option>
								<option>O</option>
								<option>AB</option>
							</select>
						</div>
					</div>

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_word">
							<div class="main_right_gexinghua_div_sytle">
								喜欢的歌：&nbsp;&nbsp;&nbsp; <input type="text" class="div11"
									name="music" value="${sessionScope.music }" />
							</div>
						</div>
					</div>

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_word">
							<div class="main_right_gexinghua_div_sytle">
								喜欢的偶像： <input type="text" class="div11" name="idol"
									value="${sessionScope.idol }" />
							</div>
						</div>
					</div>

					<div class="main_right_gexinghua_div">
						<div class="main_right_gexinghua_word">
							<div class="main_right_gexinghua_div_sytle">
								喜欢的运动： <input type="text" class="div11" name="exercise"
									value="${sessionScope.exercise }" />
							</div>
						</div>
					</div>

				</div>
			</form>

			<div class="div222">

				<input type="button" class="btn1" value="提交" tabindex="8"
					id="tijiao" onclick="GO()" />
			</div>


		</div>

	</div>
</body>

</html>
