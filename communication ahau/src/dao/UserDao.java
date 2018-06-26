package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.UserBean;
import utils.JDBCUtil;

public class UserDao {

	// ����
	public int add(UserBean user) throws SQLException {
		// ����queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ��дsql
		String sqlString = "insert into user(phonenumber,password1) values(?,?) ";

		int result = qr.update(sqlString, user.getPhonenumber(), user.getPassword1());
		return result;
	}

	// ɾ��
	// ��ѯ
	public UserBean find(String phonenumber, String password) throws SQLException {
		// ����queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ��дsql
		String sqlString = "select * from user where phonenumber=? and password1=? ";

		UserBean user = qr.query(sqlString, new BeanHandler<>(UserBean.class), phonenumber, password);
		return user;
	}

	// ��ѯ�ֻ���
	public UserBean findPhoneNumber(String phonenumber) throws SQLException {
		// ����queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ��дsql
		String sqlString = "select * from user where phonenumber=?";
		return qr.query(sqlString, new BeanHandler<>(UserBean.class), phonenumber);
	}
}
