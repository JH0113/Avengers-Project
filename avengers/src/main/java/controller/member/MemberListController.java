package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.MemberDTO;
import service.member.MemberListService;

@Controller
public class MemberListController {
	
	@Autowired
	MemberListService memberListService;
	
	@RequestMapping("memberListPage")
	public String memberListPage(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		memberListService.memberList(page,model);
		return "member/memberListPage";
	}	
	@RequestMapping("memListSearch")
	public String search(@RequestParam(value = "keyword", defaultValue = "") String keyword, Model model) {
		memberListService.memberListSearch(keyword,model);
		return "member/memberListSearchPage";
	}
	@RequestMapping("memberInfoPage")
	public String memberInfoPage() {
		
		return "member/memberInfoPage";
	}
}
