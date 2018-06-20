package service;

import java.sql.SQLException;

import dao.DynamicStateDao;
import domain.DynamicStateBean;

public class DynamicStateService {
	public int register(DynamicStateBean ds) throws SQLException {
		return new DynamicStateDao().add(ds);
	}

	public DynamicStateBean serach(String phonenumber) throws SQLException {
		return new DynamicStateDao().find(phonenumber);
	}
	
	public String find(String phonenumber) throws SQLException {
		return new DynamicStateDao().findNumber(phonenumber);
	}
}
