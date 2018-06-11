package domain;
/*动态格式*/
public class DynamicStateBean {
	private String statenumber;
	private String character;
	private String photo;

	public DynamicStateBean(String statenumber, String character, String photo) {
		super();
		this.statenumber = statenumber;		//动态编号
		this.character = character;				//文字
		this.photo = photo;							//图片地址
	}

	public DynamicStateBean() {
	}

	public String getStatenumber() {
		return statenumber;
	}

	public void setStatenumber(String statenumber) {
		this.statenumber = statenumber;
	}

	public String getCharacter() {
		return character;
	}

	public void setCharacter(String character) {
		this.character = character;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

}
