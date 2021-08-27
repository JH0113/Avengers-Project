package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.MemberCommand;
import service.member.MemberModifyService;
import service.member.MemberMyInfoService;
import validator.LoginDtoValidator;
import validator.MemberValidator;
import validator.MyInfoValidator;
import validator.MyPageValidator;

@Controller
public class MyPageController {
	@Autowired
	MemberMyInfoService memberMyInfoService;
	@Autowired
	MemberModifyService memberModifyService;
	
	@RequestMapping("myPage") // 마이페이지
	public String myPage() {
		return "myPage/myPage";
	}
	
	@RequestMapping("memPwCheckPage") // 내 정보 보기 전 비번 체크 페이지
	public String memPwCheckPage(HttpSession session,Model model, @ModelAttribute MemberCommand memberCommand) {
		memberMyInfoService.memMyInfo(model, session);
		return "myPage/memPwCheckPage";
	}
	
	@RequestMapping("memPwCheck") // 비번 체크
	public String memPwCheck(MemberCommand memberCommand, Errors errors, HttpSession session,Model model) {
		new MyPageValidator().validate(memberCommand, errors);
		if (errors.hasErrors()) {
			return "myPage/memPwCheckPage";
		}
		if(!memberModifyService.memPwCheck(session, memberCommand, errors)) {
			if (errors.hasErrors()) {
				return "myPage/memPwCheckPage";
			}	
		}
		memberMyInfoService.memMyInfo(model, session);
		return "redirect:memMyInfoDetailPage";
	}
	
	@RequestMapping("memMyInfoDetailPage") // 내 정보 확인
	public String memMyInfoDetailPage(HttpSession session,Model model) {
		memberMyInfoService.memMyInfo(model, session);
		return "myPage/memMyInfoDetailPage";
	}
	@RequestMapping("memModifyPage") // 내 정보 수정페이지
	public String memModifyPage(HttpSession session,Model model, @ModelAttribute MemberCommand memberCommand) {
		memberMyInfoService.memMyInfo(model, session);
		return "myPage/memModifyPage";
	}
	@RequestMapping(value="memModify", method = RequestMethod.POST) // 내 정보 수정
	public String memModifyUpdate(MemberCommand memberCommand, Errors errors, HttpSession session) {
		new MyInfoValidator().validate(memberCommand, errors);
		if (errors.hasErrors()) {
			return "myPage/memModifyPage";
		}
		
		memberModifyService.memModifyUpdate(session, memberCommand, errors);
		if(errors.hasErrors()) {
			return "myPage/memModifyPage";
		}
		return "redirect:memMyInfoDetailPage";
	}

	
}
