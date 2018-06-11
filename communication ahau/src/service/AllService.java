package service;

import java.sql.SQLException;

import dao.AllDao;
import domain.AllBean;

public class AllService {

	public AllBean serach(String phonenumber) throws SQLException {
		return new AllDao().find(phonenumber);
	}
}
