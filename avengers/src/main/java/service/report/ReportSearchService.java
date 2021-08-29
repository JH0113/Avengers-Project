package service.report;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.ReportDTO;
import repository.ReportRepository;

public class ReportSearchService {
	@Autowired
	ReportRepository reportRepository;
	public List<ReportDTO> reportSearch(String search_option,String keyword, Model model) {
		Map<String, Object> map = new HashMap<>();
		String trim_keyword= keyword.trim();
		map.put("search_option", search_option);
        map.put("keyword", "%"+trim_keyword+"%"); 
		
		return reportRepository.searchList(map);
	}
}
