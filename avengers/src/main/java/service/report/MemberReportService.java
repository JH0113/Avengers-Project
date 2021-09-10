package service.report;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model; 

import command.ReportCommand;
import model.ReportDTO;
import repository.ReportRepository;

public class MemberReportService {
	@Autowired
	ReportRepository reportRepository;
	
	public void memberReport(ReportCommand reportCommand, String memId, Model model, HttpSession session) {
		ReportDTO dto = new ReportDTO();
		dto.setMemId(memId);
		dto.setReportedReason(reportCommand.getReportedReason());
		dto.setReportedReasonDetail(reportCommand.getReportedReasonDetail());
		dto.setReporter(reportCommand.getReporter()); 
		
		reportRepository.memberReportInsert(dto);
	}

}
