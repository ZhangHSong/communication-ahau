package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.InformationBean;
import utils.JDBCUtil;

public class InformationDao {
	// 增加
	public int add(InformationBean infor) throws SQLException {
		// 创建queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// 编写sql
		String sqlString = "insert into basic_information(phonenumber,nickname,gender,birthday,age,major,wechat,location,sign) values(?,?,?,?,?,?,?,?,?) ";

		int result = qr.update(sqlString, infor.getPhonenumber(), infor.getNickname(), infor.getGender(),
				infor.getBirthday(), infor.getAge(), infor.getMajor(), infor.getWechat(), infor.getLocation(),
				infor.getSign());
		return result;
	}

	// 修改更新
	public int update(InformationBean infor) throws SQLException {
		// 创建queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// 编写sql
		String sqlString = "update  basic_information set nickname=?,gender=?,birthday=?,age=?,major=?,wechat=?,location=?,sign=? where phonenumber=? ";

		int result = qr.update(sqlString, infor.getNickname(), infor.getGender(), infor.getBirthday(), infor.getAge(),
				infor.getMajor(), infor.getWechat(), infor.getLocation(), infor.getSign(), infor.getPhonenumber());
		return result;
	}

	// 查询
	public InformationBean find(String phonenumber) throws SQLException {
		// 创建queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// 编写sql
		String sqlString = "select * from basic_information where phonenumber=?";

		InformationBean infor = qr.query(sqlString, new BeanHandler<>(InformationBean.class), phonenumber);
		return infor;
	}
}
