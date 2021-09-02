package model;

public class MemberDTO {
	String memId;
	String memNick;
	String memPw;
	String memName;
	String memAddr;
	String memPostNumber;
	String memDetailAdd;
	String memPhone;
	String memReportedCount;
	String memImage;
	StartEndPageDTO startEndPageDTO;
	String smsNum;
	
	String search_option;
	String keyword;
	
	
	public String getSearch_option() {
		return search_option;
	}
	public void setSearch_option(String search_option) {
		this.search_option = search_option;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getMemImage() {
		return memImage;
	}
	public void setMemImage(String memImage) {
		this.memImage = memImage;
	}
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
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
	public String getMemReportedCount() {
		return memReportedCount;
	}
	public void setMemReportedCount(String memReportedCount) {
		this.memReportedCount = memReportedCount;
	}
	public String getSmsNum() {
		return smsNum;
	}
	public void setSmsNum(String smsNum) {
		this.smsNum = smsNum;
	}
}
  