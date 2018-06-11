package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.HobbyBean;
import utils.JDBCUtil;

public class HobbyDao {
	// 增加
	public int add(HobbyBean hobby) throws SQLException {
		// 创建queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// 编写sql
		String sqlString = "insert into individual_hobby(phonenumber,constellation,bloodtype,exercise,idol,music) values(?,?,?,?,?,?) ";

		int result = qr.update(sqlString, hobby.getPhonenumber(), hobby.getConstellation(), hobby.getBloodtype(),
				hobby.getExercise(), hobby.getIdol(), hobby.getMusic());
		return result;
	}

	// 修改更新
	public int update(HobbyBean hobby) throws SQLException {
		// 创建queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// 编写sql
		String sqlString = "update  individual_hobby set constellation=?,bloodtype=?,exercise=?,idol=?,music=? where phonenumber=? ";

		int result = qr.update(sqlString, hobby.getConstellation(), hobby.getBloodtype(), hobby.getExercise(),
				hobby.getIdol(), hobby.getMusic(), hobby.getPhonenumber());
		return result;
	}

	// 查询
	public HobbyBean find(String phonenumber) throws SQLException {
		// 创建queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// 编写sql
		String sqlString = "select * from individual_hobby where phonenumber=?";

		HobbyBean hobby = qr.query(sqlString, new BeanHandler<>(HobbyBean.class), phonenumber);
		return hobby;
	}
}
