package domain;
/*��¼��Ϣ*/
public class UserBean {
	private String phonenumber; // �ֻ�����
	private String password1; // ����

	public UserBean() {
	}

	public UserBean(String phonenumber, String password1) {
		this.phonenumber = phonenumber;
		this.password1 = password1;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

}
