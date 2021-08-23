package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.MemberDTO;
import service.member.MemberDeleteService;
import service.member.MemberInfoService;
import service.member.MemberListService;
import service.member.MemberMyInfoService;

@Controller
public class MemberListController {
	
	@Autowired
	MemberListService memberListService;
	@Autowired
	MemberInfoService memberInfoService;
	@Autowired
	MemberDeleteService memberDeleteService;
	
	@RequestMapping("memberListPage") // 그냥 모든 멤버 리스트
	public String memberListPage(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		memberListService.memberList(page,model);
		return "member/memberListPage";
	}	
	@RequestMapping("memListSearch") // keyword를 입력받아 검색한 리스트
	public String search(@RequestParam(value = "keyword", defaultValue = "") String keyword, Model model) {
		memberListService.memberListSearch(keyword,model);
		return "member/memberListSearchPage";
	}
	@RequestMapping("memberInfoPage") // 멤버의 아이디를 클릭했을 때 보이는 상세정보, memberMyInfo랑 다른거임   
	public String memberInfoPage(@RequestParam(value = "memId")String memId, Model model) {
		memberInfoService.memberInfo(memId, model);
		return "member/memberInfoPage";
	}
	@RequestMapping("memberDelete") // 멤버 강제 탈퇴 시키기
	public String memberDelete(@RequestParam(value = "memId")String memId, Model model) {
		memberDeleteService.memberDelete(memId);
		return "redirect:memberListPage";
	}

}

