package command;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class NoticeCommand {
	String noticeNum;
	String noticeSub;
	String noticeContents;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date noticeDate;
	String noticeHits;
	String noticeEmpId;
	String noticeKind;

	public String getNoticeKind() {
		return noticeKind;
	}
	public void setNoticeKind(String noticeKind) {
		this.noticeKind = noticeKind;
	}
	public String getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(String noticeNum) {
		this.noticeNum = noticeNum;
	}
	public String getNoticeSub() {
		return noticeSub;
	}
	public void setNoticeSub(String noticeSub) {
		this.noticeSub = noticeSub;
	}
	public String getNoticeContents() {
		return noticeContents;
	}
	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNoticeHits() {
		return noticeHits;
	}
	public void setNoticeHits(String noticeHits) {
		this.noticeHits = noticeHits;
	}
	public String getNoticeEmpId() {
		return noticeEmpId;
	}
	public void setNoticeEmpId(String noticeEmpId) {
		this.noticeEmpId = noticeEmpId;
	}
	
	
}
