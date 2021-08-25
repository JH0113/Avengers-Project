package service.report;
 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.ReportCommand;
import model.ReportFinishDTO;
import repository.ReportRepository;

public class ReportFinishService {
	@Autowired
	ReportRepository reportRepository;
	public void reportFinishDetail(ReportCommand reportCommand, Model model) {
		String reportedNum = reportCommand.getReportedNum();
		ReportFinishDTO dto = reportRepository.reportFinishDetail(reportedNum);
		model.addAttribute("reportCommand",dto);
	}
}
