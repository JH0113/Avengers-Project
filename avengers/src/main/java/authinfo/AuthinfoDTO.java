package authinfo;

public class AuthinfoDTO {
	String userId;
	String userPw;
	String userNick;
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
	public void setUserNick(String userNick) {
		this.userNick = userNick;
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
