package domain;
/*Í·Ïñ*/
public class HeadPhotoBean {
	private String phonenumber;
	private String head_portrait;

	public HeadPhotoBean(String phonenumber, String head_portrait) {
		super();
		this.phonenumber = phonenumber;
		this.head_portrait = head_portrait;
	}

	public HeadPhotoBean() {
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getHead_portrait() {
		return head_portrait;
	}

	public void setHead_portrait(String head_portrait) {
		this.head_portrait = head_portrait;
	}

}
