package service;

import java.sql.SQLException;

import dao.UserDao;
import domain.UserBean;

public class UserService {
	public int register(UserBean user) throws SQLException {
		return new UserDao().add(user);
	}

	public UserBean login(String phonenumber, String password) throws SQLException {
		return new UserDao().find(phonenumber, password);
	}
	
	public UserBean serach(String phonenumber) throws SQLException {
		return new UserDao().findPhoneNumber(phonenumber);
	}
}
