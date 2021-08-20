package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.member.MemberListService;

@Controller
public class MemberListController {
	
	@Autowired
	MemberListService memberListService;
	
	@RequestMapping("memberListPage")
	public String memberListPage(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		//memberListService.memberList(page,model);
		return "member/memberListPage";
	}
}
