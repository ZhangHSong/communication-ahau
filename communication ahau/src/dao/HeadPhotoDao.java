package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.HeadPhotoBean;
import utils.JDBCUtil;

public class HeadPhotoDao {
	// ����
	public int add(HeadPhotoBean hp) throws SQLException {
		// ����queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ��дsql
		String sqlString = "insert into head_photo(phonenumber,head_portrait) values(?,?) ";

		int result = qr.update(sqlString, hp.getPhonenumber(), hp.getHead_portrait());
		return result;
	}

	// �޸ĸ���
	public int update(HeadPhotoBean hp) throws SQLException {
		// ����queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ��дsql
		String sqlString = "update  head_photo set head_portrait=? where phonenumber=? ";

		int result = qr.update(sqlString, hp.getHead_portrait());
		return result;
	}

	// ��ѯ
	public HeadPhotoBean find(String phonenumber) throws SQLException {
		// ����queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ��дsql
		String sqlString = "select * from head_photo where phonenumber=?";

		HeadPhotoBean hp = qr.query(sqlString, new BeanHandler<>(HeadPhotoBean.class), phonenumber);
		return hp;
	}
}
