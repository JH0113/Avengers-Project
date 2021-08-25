package authinfo;

public class AuthinfoDTO {
	String userId;
	String userPw;
	String userNick;
	String userName;
	String userPhone;
	String memImage;
	String grade;
	
	public String getMemImage() {
		return memImage;
	}
	public void setMemImage(String memImage) {
		this.memImage = memImage;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userName) {
		this.userNick = userNick;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
}
