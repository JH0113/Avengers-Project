package service.report;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.ReportCommand;
import model.ReportDTO;
import repository.ReportRepository;

public class ProdReportService {
	@Autowired
	ReportRepository reportRepository;
	public void prodReportInsert(ReportCommand reportCommand, String prodNum, String memId, Model model, HttpSession session) {
		ReportDTO dto = new ReportDTO();
		dto.setMemId(memId);
		dto.setProdNum(prodNum);
		dto.setReportedReason(reportCommand.getReportedReason());
		dto.setReportedReasonDetail(reportCommand.getReportedReasonDetail());
		dto.setReporter(reportCommand.getReporter()); 
		reportRepository.prodReportInsert(dto);
		 
	} 
}
