package domain;

/*基本信息*/
public class InformationBean {
	private String phonenumber; // 手机号(非空)
	private String nickname; // 昵称(非空)
	private String gender; // 性别(非空)
	private String birthday;// 出生日期(非空)
	private int age;// 年龄(非空)
	private String major; // 专业
	private String wechat; // TIM
	private String location; // 所在地
	private String sign; // 个性签名

	public InformationBean() {
	}

	public InformationBean(String phonenumber, String nickname, String gender, String birthday, int age, String major,
			String wechat, String location, String sign) {
		super();
		this.phonenumber = phonenumber;
		this.nickname = nickname;
		this.gender = gender;
		this.birthday = birthday;
		this.age = age;
		this.major = major;
		this.wechat = wechat;
		this.location = location;
		this.sign = sign;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getWechat() {
		return wechat;
	}

	public void setWechat(String wechat) {
		this.wechat = wechat;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}
}
