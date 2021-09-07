package controller.member;
 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import repository.MemberListRepository;
import service.member.MemberDeleteService;
import service.member.MemberDetailService;
import service.member.MemberInfoService;
import service.member.MemberListService;

@Controller
public class MemberListController {
	
	@Autowired
	MemberListService memberListService;
	@Autowired
	MemberInfoService memberInfoService;
	@Autowired
	MemberDeleteService memberDeleteService; 
	@Autowired
	MemberListRepository memberListRepository;
	@Autowired
	MemberDetailService memberDetailService;
	

	@RequestMapping("memberListPage")  
	public String search(
			@RequestParam(value="search_option",defaultValue = "") String search_option,
			@RequestParam(value="keyword",defaultValue = "") String keyword,
			@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) throws Exception {     
			
			memberListService.memberList(page,model, search_option, keyword);
            return "member/memberListPage";
	}
	@RequestMapping("memberInfoPage") // 멤버의 아이디를 클릭했을 때 보이는 상세정보, memberMyInfo랑 다른거임   
	public String memberInfoPage(@RequestParam(value = "memId") String memId, Model model) {
		memberInfoService.memberInfo(memId, model);
		return "member/memberInfoPage";
	}
	@RequestMapping("memberDelete") // 멤버 강제 탈퇴 시키기f
	public String memberDelete(@RequestParam(value = "memId")String memId, Model model) {
		memberDeleteService.memberDelete(memId);
		return "redirect:memberListPage";
	}

	@RequestMapping("memberDetailPage") // 회원끼리 정보보기 페이지 
	public String memberDetailPage(@RequestParam(value = "memId") String memId, Model model) {
		model.addAttribute("memId",memId);
		memberDetailService.memberDetail(memId,model);
		return "member/memberDetailPage";
	}
}

