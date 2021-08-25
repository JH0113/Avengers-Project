package command;

import java.util.Date;

public class ReportCommand {
	String reportedNum;
	String reporter;
	String memId;
	String reportedReason;
	String reportedReasonDetail;
	String prodNum;
	Date reportDate;
	String reportState;
	
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
	public String getReportState() {
		return reportState;
	}
	public void setReportState(String reportState) {
		this.reportState = reportState;
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
	public Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}
 
 
}
