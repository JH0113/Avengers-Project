package service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.NoticeDTO;
import model.StartEndPageDTO;
import repository.NoticeRepository;

public class NoticeListService {
	@Autowired
	NoticeRepository noticeRepository;
	
	public void noticeList(int page, Model model) {
		int limit = 5;
		int limitPage = 10;
		
		Long startRow = ((long)page-1)* limit +1;
		Long endRow = startRow + limit - 1;
		StartEndPageDTO sep = new StartEndPageDTO();
		sep.setStartRow(startRow);
		sep.setEndRow(endRow);
		
		NoticeDTO dto = new NoticeDTO();
		dto.setStartEndPageDTO(sep);
				
		List<NoticeDTO> list = noticeRepository.noticeList(dto);
		int count = noticeRepository.count();
		model.addAttribute("noticePage",list);
		model.addAttribute("count",count);
		
		PageAction pageAction = new PageAction();
		pageAction.page(count, limit, limitPage, page, "noticePage", model);
	}
}
