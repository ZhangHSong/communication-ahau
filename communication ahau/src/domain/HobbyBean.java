package domain;
/*¸öÐÔ°®ºÃ*/
public class HobbyBean {
	private String phonenumber;
	private String constellation;
	private String bloodtype;
	private String exercise;
	private String idol;
	private String music;

	public HobbyBean() {
	}

	public HobbyBean(String phonenumber, String constellation, String bloodtype, String exercise, String idol,
			String music) {
		super();
		this.phonenumber = phonenumber;
		this.constellation = constellation;
		this.bloodtype = bloodtype;
		this.exercise = exercise;
		this.idol = idol;
		this.music = music;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
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

}
