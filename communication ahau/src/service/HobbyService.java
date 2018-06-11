package service;

import java.sql.SQLException;

import dao.HobbyDao;
import domain.HobbyBean;

public class HobbyService {
	public int register(HobbyBean hobby) throws SQLException {
		return new HobbyDao().add(hobby);
	}

	public int gengxin(HobbyBean infor) throws SQLException {
		return new HobbyDao().update(infor);
	}

	public HobbyBean serach(String phonenumber) throws SQLException {
		return new HobbyDao().find(phonenumber);
	}
}
