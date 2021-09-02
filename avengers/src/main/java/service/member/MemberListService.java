package service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.MemberDTO;
import model.StartEndPageDTO;
import repository.MemberListRepository;

public class MemberListService {
	@Autowired
	MemberListRepository memberListRepository;

	public void memberList(Integer page, Model model, String search_option, String keyword) {
		int limit = 10;
		int limitPage = 10;
		
		MemberDTO dto = new MemberDTO();
		if (page != null) {
			Long startRow = ((long) page - 1) * limit + 1;
			Long endRow = startRow + limit - 1;
			StartEndPageDTO sep = new StartEndPageDTO();
			sep.setStartRow(startRow);
			sep.setEndRow(endRow);
			dto.setStartEndPageDTO(sep);
			dto.setKeyword(keyword);
			dto.setSearch_option(search_option);
		}

		List<MemberDTO> list = memberListRepository.memberList(dto);
		Integer count = memberListRepository.count();
		model.addAttribute("memberListPage",list);
		model.addAttribute("count",count);
		model.addAttribute("search_option", search_option);
		model.addAttribute("keyword",keyword); 
		
		if (page != null) {
			PageAction pageAction = new PageAction();
			pageAction.page(count, limit, limitPage, page, "memberListPage", model);
		}
	}
 
}
