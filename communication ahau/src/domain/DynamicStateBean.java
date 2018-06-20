package domain;
/*动态格式*/
public class DynamicStateBean {
	private String phonenumber;
	private String character1;
	private String photo;

	public DynamicStateBean(String phonenumber,String character1, String photo) {
		super();
		this.phonenumber=phonenumber;	//手机号码
		this.character1 = character1;				//文字
		this.photo = photo;							//图片地址
	}

	public DynamicStateBean() {
	}


	public String getCharacter1() {
		return character1;
	}

	public void setCharacter1(String character1) {
		this.character1 = character1;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

}
