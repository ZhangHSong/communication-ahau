package domain;
/*个人动态*/
public class IndividualStateBean {
	private String phonenumber;
	private String statenumber;

	public IndividualStateBean(String phonenumber, String statenumber) {
		super();
		this.phonenumber = phonenumber;		//手机号码
		this.statenumber = statenumber;			//动态编号
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
