package domain;

/*基本信息*/
public class AllBean {
	private String phonenumber; // 手机号(非空)
	private String nickname; // 昵称(非空)
	private String gender; // 性别(非空)
	private String birthday;// 出生日期(非空)
	private int age;// 年龄(非空)
	private String major; // 专业
	private String wechat; // TIM
	private String location; // 所在地
	private String sign; // 个性签名
	private String head_portrait; // 头像
	private String constellation;
	private String bloodtype;
	private String exercise;
	private String idol;
	private String music;
	private String bgphoto;	//背景图片

	public AllBean() {
	}

	public AllBean(String phonenumber, String nickname, String gender, String birthday, int age, String major,
			String wechat, String location, String sign, String head_portrait, String constellation, String bloodtype,
			String exercise, String idol, String music,String bgphoto) {
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
		this.head_portrait = head_portrait;
		this.constellation = constellation;
		this.bloodtype = bloodtype;
		this.exercise = exercise;
		this.idol = idol;
		this.music = music;
		this.bgphoto=bgphoto;
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

	public String getHead_portrait() {
		return head_portrait;
	}

	public void setHead_portrait(String head_portrait) {
		this.head_portrait = head_portrait;
	}

	public String getConstellation() {
		return constellation;
	}

	public void setConstellation(String constellation) {
		this.constellation = constellation;
	}

	public String getBloodtype() {
		return bloodtype;
	}

	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}

	public String getExercise() {
		return exercise;
	}

	public void setExercise(String exercise) {
		this.exercise = exercise;
	}

	public String getIdol() {
		return idol;
	}

	public void setIdol(String idol) {
		this.idol = idol;
	}

	public String getMusic() {
		return music;
	}

	public void setMusic(String music) {
		this.music = music;
	}

	public String getBgphoto() {
		return bgphoto;
	}

	public void setBgphoto(String bgphoto) {
		this.bgphoto = bgphoto;
	}
}
