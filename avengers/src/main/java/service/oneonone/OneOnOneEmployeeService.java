package service.oneonone;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import controller.PageAction;
import model.NoticeDTO;
import model.OneOnOneDTO;
import model.StartEndPageDTO;
import repository.OneOnOneRepository;

@Service
public class OneOnOneEmployeeService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;
	
	public void oneononeEmployee(int page, Model model) {
		int limit = 5;
		int limitPage = 10;
		
		Long startRow = ((long)page-1)* limit +1;
		Long endRow = startRow + limit - 1;
		StartEndPageDTO sep = new StartEndPageDTO();
		sep.setStartRow(startRow);
		sep.setEndRow(endRow);
		
		OneOnOneDTO dto = new OneOnOneDTO();
		dto.setStartEndPageDTO(sep);
		
		List<OneOnOneDTO> list = oneOnOneRepository.oneononeEmployee(dto);
		int count = oneOnOneRepository.count();
		model.addAttribute("oneononeEmployee",list);
		model.addAttribute("count",count);
		
		PageAction pageAction = new PageAction();
		pageAction.page(count, limit, limitPage, page, "oneononeEmployeePage", model);		
	}
}
