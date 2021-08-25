package service.report;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired; 

import authinfo.AuthinfoDTO;
import command.ReportCommand;
import model.ReportFinishDTO;
import repository.ReportRepository;

public class ReportCancelService {
	@Autowired
	ReportRepository reportRepository;
	public void reportCancel(ReportCommand reportCommand, HttpSession session) {
		ReportFinishDTO dto = new ReportFinishDTO();
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		String empId= authinfo.getUserId(); // 세션의 emp
		dto.setEmpId(empId); 
		dto.setMemId(reportCommand.getMemId());
		dto.setProdNum(reportCommand.getProdNum());
		dto.setReportedNum(reportCommand.getReportedNum());
		dto.setReportedReason(reportCommand.getReportedReason());
		dto.setReportedReasonDetail(reportCommand.getReportedReasonDetail());
		dto.setReporter(reportCommand.getReporter());  
		
		reportRepository.reportCancelInsert(dto); // 신고완료테이블에 정보 insert (반려한다고 해서 삭제하는건 아님)
		reportRepository.reportCompletedProd(reportCommand.getReportedNum()); // 상품 신고접수 테이블 신고상태를 처리완료로 바꾸기
		reportRepository.reportCompletedMember(reportCommand.getReportedNum()); // 멤버 신고접수 테이블 신고상태 처리완료로 바꾸기
	}
}
