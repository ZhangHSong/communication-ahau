package service;

import java.sql.SQLException;

import dao.HeadPhotoDao;
import domain.HeadPhotoBean;

public class HeadPhotoService {
	public int register(HeadPhotoBean hp) throws SQLException {
		return new HeadPhotoDao().add(hp);
	}

	public int gengxin(HeadPhotoBean hp) throws SQLException {
		return new HeadPhotoDao().update(hp);
	}

	public HeadPhotoBean serach(String phonenumber) throws SQLException {
		return new HeadPhotoDao().find(phonenumber);
	}
}
