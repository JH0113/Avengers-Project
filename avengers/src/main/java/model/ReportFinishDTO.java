package model;

import java.util.Date;

public class ReportFinishDTO {
	String reportedNum;
	String prodNum;
	String memId;
	String reporter;
	String empId;
	String reportedReason;
	String reportedReasonDetail;
	Date reportDate;
	Date reportFinishDate;
	String reportState;
	
	
	public String getReportedNum() {
		return reportedNum;
	}
	public void setReportedNum(String reportedNum) {
		this.reportedNum = reportedNum;
	}
	public String getProdNum() {
		return prodNum;
	}
	public void setProdNum(String prodNum) {
		this.prodNum = prodNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getReporter() {
		return reporter;
	}
	public void setReporter(String reporter) {
		this.reporter = reporter;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
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
 
	public Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}
	public Date getReportFinishDate() {
		return reportFinishDate;
	}
	public void setReportFinishDate(Date reportFinishDate) {
		this.reportFinishDate = reportFinishDate;
	}
	public String getReportState() {
		return reportState;
	}
	public void setReportState(String reportState) {
		this.reportState = reportState;
	}

	
	 
}
