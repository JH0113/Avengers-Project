package service.report;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.ReportDTO;
import model.StartEndPageDTO;
import repository.ReportRepository;

public class ReportListService {
	@Autowired
	ReportRepository reportRepository;

	public void reportList(Integer page, Model model) {
		int limit = 10;
		int limitPage = 10;
		
		ReportDTO dto = new ReportDTO();
		if (page != null) {
			Long startRow = ((long) page - 1) * limit + 1;
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep); 
		}
		
		List<ReportDTO> list = reportRepository.reportList(dto);
		Integer countProd = reportRepository.countProd();
		Integer countMem = reportRepository.countMem();
		Integer count = countProd + countMem;
		
		model.addAttribute("reportPage",list);
		model.addAttribute("count",count);  	

		
		if (page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, limitPage, page, "reportPage", model);				
		}

	}
}
