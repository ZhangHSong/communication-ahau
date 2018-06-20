package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.DynamicStateBean;
import utils.JDBCUtil;

public class DynamicStateDao {
	// 增加
		public int add(DynamicStateBean ds) throws SQLException {
			// 创建queryRunner
			QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
			// 编写sql
			String sqlString = "insert into dynamic_state (phonenumber,character1,photo) values (?,?,?) ";

			int result = qr.update(sqlString, ds.getPhonenumber(), ds.getCharacter1(),ds.getPhoto());
			return result;
		}

		// 查询
		public DynamicStateBean find(String phonenumber) throws SQLException {
			// 创建queryRunner
			QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
			// 编写sql
			String sqlString = "select phonenumber,character,photo from dynamic_state where phonenumber=?";

			DynamicStateBean ds = qr.query(sqlString, new BeanHandler<>(DynamicStateBean.class), phonenumber);
			return ds;
		}
		
		public String findNumber(String phonenumber) throws SQLException {
			// 创建queryRunner
			QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
			// 编写sql
			String sqlString = "select statenumber from dynamic_state where phonenumber=?";

			String number = qr.query(sqlString, new BeanHandler<>(String.class), phonenumber);
			return number;
		}
}
