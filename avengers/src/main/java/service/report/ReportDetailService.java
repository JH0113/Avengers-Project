package service.report;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.ReportDTO;
import repository.ReportRepository;

public class ReportDetailService {
	@Autowired
	ReportRepository reportRepository;
	public void reportDetail(String reportedNum, Model model) {
		ReportDTO dto = reportRepository.reportDetail(reportedNum);
		model.addAttribute("reportCommand",dto);
	}
	
}
