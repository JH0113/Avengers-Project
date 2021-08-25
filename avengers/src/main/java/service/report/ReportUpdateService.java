package service.report;

 
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import authinfo.AuthinfoDTO;
import command.ReportCommand;
import model.ReportFinishDTO;
import repository.ReportRepository;

public class ReportUpdateService {
	@Autowired
	ReportRepository reportRepository;
	public void reportUpdate(ReportCommand reportCommand, HttpSession session) {
		ReportFinishDTO dto = new ReportFinishDTO();
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		String empId= authinfo.getUserId(); // 세션의 emp
		String memId= reportCommand.getMemId(); // 신고당한 사람 아이디
		String reportedNum = reportCommand.getReportedNum();
		dto.setEmpId(empId); 
		dto.setMemId(reportCommand.getMemId());
		dto.setProdNum(reportCommand.getProdNum());
		dto.setReportedNum(reportCommand.getReportedNum());
		dto.setReportedReason(reportCommand.getReportedReason());
		dto.setReportedReasonDetail(reportCommand.getReportedReasonDetail());
		dto.setReporter(reportCommand.getReporter());  
  
		reportRepository.reportFinishInsert(dto); // 신고를 받아줌 > 신고완료테이블에 정보 이관됨
		reportRepository.reportMemberCountUp(memId); // 멤버 테이블의 신고횟수 count +1
		reportRepository.reportCompletedProd(reportedNum); // 상품 신고접수 테이블 신고상태를 처리완료로 바꾸기
		reportRepository.reportCompletedMember(reportedNum); // 멤버 신고접수 테이블 신고상태 처리완료로 바꾸기
		
	}

}
