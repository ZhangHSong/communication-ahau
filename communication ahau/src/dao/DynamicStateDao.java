package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.DynamicStateBean;
import utils.JDBCUtil;

public class DynamicStateDao {
	// ����
		public int add(DynamicStateBean ds) throws SQLException {
			// ����queryRunner
			QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
			// ��дsql
			String sqlString = "insert into dynamic_state (phonenumber,character1,photo) values (?,?,?) ";

			int result = qr.update(sqlString, ds.getPhonenumber(), ds.getCharacter1(),ds.getPhoto());
			return result;
		}

		// ��ѯ
		public DynamicStateBean find(String phonenumber) throws SQLException {
			// ����queryRunner
			QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
			// ��дsql
			String sqlString = "select phonenumber,character,photo from dynamic_state where phonenumber=?";

			DynamicStateBean ds = qr.query(sqlString, new BeanHandler<>(DynamicStateBean.class), phonenumber);
			return ds;
		}
		
		public String findNumber(String phonenumber) throws SQLException {
			// ����queryRunner
			QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
			// ��дsql
			String sqlString = "select statenumber from dynamic_state where phonenumber=?";

			String number = qr.query(sqlString, new BeanHandler<>(String.class), phonenumber);
			return number;
		}
}
