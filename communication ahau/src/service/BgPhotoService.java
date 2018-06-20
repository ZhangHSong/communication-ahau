package service;

import java.sql.SQLException;

import dao.BgPhotoDao;
import domain.BgPhotoBean;

public class BgPhotoService {
	public int register(BgPhotoBean bp) throws SQLException {
		return new BgPhotoDao().add(bp);
	}

	public int gengxin(BgPhotoBean bp) throws SQLException {
		return new BgPhotoDao().update(bp);
	}

	public BgPhotoBean serach(String phonenumber) throws SQLException {
		return new BgPhotoDao().find(phonenumber);
	}
}
