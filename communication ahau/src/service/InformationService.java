package service;

import java.sql.SQLException;

import dao.InformationDao;
import domain.InformationBean;

public class InformationService {
	public int register(InformationBean infor) throws SQLException {
		return new InformationDao().add(infor);
	}

	public int gengxin(InformationBean infor) throws SQLException {
		return new InformationDao().update(infor);
	}

	public InformationBean serach(String phonenumber) throws SQLException {
		return new InformationDao().find(phonenumber);
	}
}
