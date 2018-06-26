package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import domain.AllBean;
import utils.JDBCUtil;

public class AllDao {

	// ≤È—Ø
	public AllBean find(String phonenumber) throws SQLException {
		// ¥¥Ω®queryRunner
		QueryRunner qr = new QueryRunner(JDBCUtil.getDataSource());
		// ±‡–¥sql
		String sqlString = "select a.phonenumber,a.nickname,a.gender,a.birthday,a.age,a.major,a.wechat,a.location,a.sign,c.head_portrait,b.constellation,b.bloodtype,b.exercise,b.idol,b.music,d.bgphoto "
				+ "from basic_information a , individual_hobby b , head_photo c  ,bg_photo d "
				+ "where  a.phonenumber=? and a.phonenumber=b.phonenumber and a.phonenumber=c.phonenumber  and a.phonenumber=d.phonenumber ";

		AllBean all = qr.query(sqlString, new BeanHandler<>(AllBean.class), phonenumber);
		System.out.println("alldao:"+all);
		return all;
	}
}
