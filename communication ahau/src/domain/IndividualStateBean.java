package domain;
/*���˶�̬*/
public class IndividualStateBean {
	private String phonenumber;
	private String statenumber;

	public IndividualStateBean(String phonenumber, String statenumber) {
		super();
		this.phonenumber = phonenumber;		//�ֻ�����
		this.statenumber = statenumber;			//��̬���
	}

	public IndividualStateBean() {
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getStatenumber() {
		return statenumber;
	}

	public void setStatenumber(String statenumber) {
		this.statenumber = statenumber;
	}

}
