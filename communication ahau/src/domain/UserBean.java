package domain;
/*登录信息*/
public class UserBean {
	private String phonenumber; // 手机号码
	private String password; // 密码

	public UserBean() {
	}

	public UserBean(String phonenumber, String password) {
		this.phonenumber = phonenumber;
		this.password = password;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
