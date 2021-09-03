package service.report;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.ReportDTO;
import repository.ReportRepository;

public class ProdReportService {
	@Autowired
	ReportRepository reportRepository;
	public void prodReportInsert(String prodNum, String memId, Model model, HttpSession session) {
		ReportDTO dto = new ReportDTO();
		dto.setMemId(memId);
		dto.setProdNum(prodNum);
		//dto.setReportedReason();
	}
	
}
