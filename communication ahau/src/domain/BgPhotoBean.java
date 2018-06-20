package domain;

public class BgPhotoBean {
	private String phonenumber;
	private String bgphoto;

	public BgPhotoBean(String phonenumber, String bgphoto) {
		super();
		this.phonenumber = phonenumber;
		this.bgphoto = bgphoto;
	}

	public BgPhotoBean() {
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getBgphoto() {
		return bgphoto;
	}

	public void setBgphoto(String bgphoto) {
		this.bgphoto = bgphoto;
	}

}
