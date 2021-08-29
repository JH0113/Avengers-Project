package controller.member;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.MemberDTO;
import repository.MemberListRepository;
import service.member.MemberDeleteService;
import service.member.MemberInfoService;
import service.member.MemberListSearchService;
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
	MemberListSearchService memberListSearchService;
	@Autowired
	MemberListRepository memberListRepository;
	
	@RequestMapping("memberListPage") // 그냥 모든 멤버 리스트 보여주기
	public String memberListPage(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		memberListService.memberList(page,model);
		return "member/memberListPage";
	}	
	@RequestMapping("memberSearch") // keyword를 입력받아 검색한 리스트 > 페이지 이동 시켜줄거임
	public ModelAndView search(
			@RequestParam(defaultValue = "") String search_option,
			@RequestParam(defaultValue = "") String keyword, Model model) throws Exception {           
            List<MemberDTO> list= memberListSearchService.listAll(search_option,keyword, model); 
            
            ModelAndView mav=new ModelAndView();
          
            HashMap<String,Object> map=new HashMap<>(); //여러개의 값들을 저장해야하기 때문에 map 생성
            
            map.put("list", list); //map에 자료 저장
            map.put("search_option", search_option);
            map.put("keyword",keyword);             
            mav.setViewName("member/memberListSearchPage"); //포워딩할 뷰
            mav.addObject("map", map); //ModelAndView에 map을 저장
            
            model.addAttribute("list",list); // 리스트는 model로 attribute해서 jsp파일에서 읽을수있음
            model.addAttribute("keyword",keyword); // 검색 결과 노출 시 필요한 keyword
            
            return mav; 
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

