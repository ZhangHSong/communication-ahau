package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.UserBean;
import utils.JDBCUtil;

public class UserDao {

	// 增加
	public int add(UserBean user) throws SQLException {
		// 创建queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// 编写sql
		String sqlString = "insert into user(phonenumber,password1) values(?,?) ";

		int result = qr.update(sqlString, user.getPhonenumber(), user.getPassword1());
		return result;
	}

	// 删除
	// 查询
	public UserBean find(String phonenumber, String password) throws SQLException {
		// 创建queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// 编写sql
		String sqlString = "select * from user where phonenumber=? and password1=? ";

		UserBean user = qr.query(sqlString, new BeanHandler<>(UserBean.class), phonenumber, password);
		return user;
	}

	// 查询手机号
	public UserBean findPhoneNumber(String phonenumber) throws SQLException {
		// 创建queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// 编写sql
		String sqlString = "select * from user where phonenumber=?";
		return qr.query(sqlString, new BeanHandler<>(UserBean.class), phonenumber);
	}
}
