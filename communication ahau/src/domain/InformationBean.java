package domain;

/*������Ϣ*/
public class InformationBean {
	private String phonenumber; // �ֻ���(�ǿ�)
	private String nickname; // �ǳ�(�ǿ�)
	private String gender; // �Ա�(�ǿ�)
	private String birthday;// ��������(�ǿ�)
	private int age;// ����(�ǿ�)
	private String major; // רҵ
	private String wechat; // TIM
	private String location; // ���ڵ�
	private String sign; // ����ǩ��

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
