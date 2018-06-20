drop database communication_ahau;

CREATE database communication_ahau;
USE communication_ahau;


DROP TABLE IF EXISTS `signin_table`;
CREATE TABLE `user` (
  inumber int(10) NOT NULL AUTO_INCREMENT,
  phonenumber varchar(20) NOT NULL,		#手机号
  password varchar(16) NOT NULL,		#密码
  PRIMARY KEY (`inumber`)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `basic_information`;
CREATE TABLE `basic_information` (
  `phonenumber` varchar(20) NOT NULL,		#手机号
  `nickname` varchar(20) NOT NULL,		#昵称
  `gender` char(4) NOT NULL,					#性别
  `birthday` varchar(20) NOT NULL,			#出生日期
  `age` int(5) NOT NULL,							#年龄
  
  major varchar(20) ,			#专业
  `wechat` varchar(20)  ,			#TIM
  `location` varchar(20)  ,			#所在地
  `sign` varchar(50)  ,			#个性签名
  PRIMARY KEY (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `individual_hobby`;
CREATE TABLE `individual_hobby` (
  `phonenumber` varchar(20) NOT NULL,		#手机号
  `constellation` varchar(20) ,		#星座
  `bloodtype` varchar(10) ,					#血型
  `exercise` varchar(20) ,			#喜欢的运动
  `idol` varchar(20) ,							#喜欢的偶像
  `music` varchar(20)  ,			#喜欢的歌
  PRIMARY KEY (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `dynamic_state`;
CREATE TABLE `dynamic_state` (
  `statenumber` int  AUTO_INCREMENT,		#动态编号
   `phonenumber` varchar(20) NOT NULL,		#手机号
  `character1` varchar(150) ,		#文字（150个）
  `photo` varchar(50) ,					#图片，存储的是路径
  PRIMARY KEY (`statenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `user_relation`;
CREATE TABLE `user_relation` (
	relation_number int  AUTO_INCREMENT,		#关系编号
	from_user_id int NOT NULL, 		# 用户 A 的 id
	to_user_id int NOT NULL,		# 用户 B 的 Id
	rel_type int,		 #关注数据
  PRIMARY KEY (`relation_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `head_photo`;
CREATE TABLE `head_photo` (
  `phonenumber` varchar(20) NOT NULL,		#手机号
  `head_portrait` varchar(50)  ,			#头像，存储的是路径
  PRIMARY KEY (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `bg_photo`;
CREATE TABLE `bg_photo` (
  `phonenumber` varchar(20) NOT NULL,		#手机号
  `bgphoto` varchar(50)  ,			#背景图片，存储的是路径
  PRIMARY KEY (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;