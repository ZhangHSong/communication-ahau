package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.BgPhotoBean;
import utils.JDBCUtil;

public class BgPhotoDao {
	// ����
		public int add(BgPhotoBean bp) throws SQLException {
			// ����queryRunner
			QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
			// ��дsql
			String sqlString = "insert into bg_photo(phonenumber,bgphoto) values(?,?) ";

			int result = qr.update(sqlString, bp.getPhonenumber(), bp.getBgphoto());
			return result;
		}

		// �޸ĸ���
		public int update(BgPhotoBean bp) throws SQLException {
			// ����queryRunner
			QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
			// ��дsql
			String sqlString = "update  bg_photo set bgphoto=? where phonenumber=? ";

			int result = qr.update(sqlString, bp.getBgphoto(),bp.getPhonenumber());
			return result;
		}

		// ��ѯ
		public BgPhotoBean find(String phonenumber) throws SQLException {
			// ����queryRunner
			QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
			// ��дsql
			String sqlString = "select * from bg_photo where phonenumber=?";

			BgPhotoBean bp = qr.query(sqlString, new BeanHandler<>(BgPhotoBean.class), phonenumber);
			return bp;
		}
}
