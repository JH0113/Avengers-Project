package model;

import java.util.Date;

public class ReportDTO {

	String reportedNum;
	String reporter;
	String memId;
	String reportedReason;
	String reportedReasonDetail;
	String prodNum;
	Date reportDate;
	StartEndPageDTO startEndPageDTO;
	
	public String getReportedNum() {
		return reportedNum;
	}
	public void setReportedNum(String reportedNum) {
		this.reportedNum = reportedNum;
	}
	public String getReporter() {
		return reporter;
	}
	public void setReporter(String reporter) {
		this.reporter = reporter;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}	
	public Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}
	public String getReportedReason() {
		return reportedReason;
	}
	public void setReportedReason(String reportedReason) {
		this.reportedReason = reportedReason;
	}
	public String getReportedReasonDetail() {
		return reportedReasonDetail;
	}
	public void setReportedReasonDetail(String reportedReasonDetail) {
		this.reportedReasonDetail = reportedReasonDetail;
	}
	public String getProdNum() {
		return prodNum;
	}
	public void setProdNum(String prodNum) {
		this.prodNum = prodNum;
	}
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	
	
}
