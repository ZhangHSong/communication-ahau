package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.HobbyBean;
import utils.JDBCUtil;

public class HobbyDao {
	// ����
	public int add(HobbyBean hobby) throws SQLException {
		// ����queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ��дsql
		String sqlString = "insert into individual_hobby(phonenumber,constellation,bloodtype,exercise,idol,music) values(?,?,?,?,?,?) ";

		int result = qr.update(sqlString, hobby.getPhonenumber(), hobby.getConstellation(), hobby.getBloodtype(),
				hobby.getExercise(), hobby.getIdol(), hobby.getMusic());
		return result;
	}

	// �޸ĸ���
	public int update(HobbyBean hobby) throws SQLException {
		// ����queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ��дsql
		String sqlString = "update  individual_hobby set constellation=?,bloodtype=?,exercise=?,idol=?,music=? where phonenumber=? ";

		int result = qr.update(sqlString, hobby.getConstellation(), hobby.getBloodtype(), hobby.getExercise(),
				hobby.getIdol(), hobby.getMusic(), hobby.getPhonenumber());
		return result;
	}

	// ��ѯ
	public HobbyBean find(String phonenumber) throws SQLException {
		// ����queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ��дsql
		String sqlString = "select * from individual_hobby where phonenumber=?";

		HobbyBean hobby = qr.query(sqlString, new BeanHandler<>(HobbyBean.class), phonenumber);
		return hobby;
	}
}
