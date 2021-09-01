package command;

import org.springframework.web.bind.annotation.RequestParam;

public class MemberCommand {
	String memId;  
	String memNick;
	String memPw;
	String memPwCon;
	String memName;
	String memAddr;
	String memPostNumber;
	String memDetailAdd;
	String memPhone;
	
	public boolean PwCk() {
		return memPw.equals(memPwCon);
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemNick() {
		return memNick;
	}
	public void setMemNick(String memNick) {
		this.memNick = memNick;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemPwCon() {
		return memPwCon;
	}
	public void setMemPwCon(String memPwCon) {
		this.memPwCon = memPwCon;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemAddr() {
		return memAddr;
	}
	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}
	public String getMemPostNumber() {
		return memPostNumber;
	}
	public void setMemPostNumber(String memPostNumber) {
		this.memPostNumber = memPostNumber;
	}
	public String getMemDetailAdd() {
		return memDetailAdd;
	}
	public void setMemDetailAdd(String memDetailAdd) {
		this.memDetailAdd = memDetailAdd;
	}
	public String getMemPhone() {
		return memPhone;
	}
	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}
	
	
	
}
