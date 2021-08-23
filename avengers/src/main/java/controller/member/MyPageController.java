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
		memberMyInfoService.myInfo(model, session);
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
		memberMyInfoService.myInfo(model, session);
		return "redirect:myDetail";
	}
	
	@RequestMapping("myDetail") // 내 정보 확인
	public String myDetail(HttpSession session,Model model) {
		memberMyInfoService.myInfo(model, session);
		return "myPage/myDetail";
	}
	@RequestMapping("mySujung") // 내 정보 수정페이지
	public String mySujung(HttpSession session,Model model, @ModelAttribute MemberCommand memberCommand) {
		memberMyInfoService.myInfo(model, session);
		return "myPage/mySujung";
	}
	@RequestMapping(value="mySujungOk", method = RequestMethod.POST) // 내 정보 수정
	public String myUpdate(MemberCommand memberCommand, Errors errors, HttpSession session) {
		new MyInfoValidator().validate(memberCommand, errors);
		if (errors.hasErrors()) {
			return "myPage/mySujung";
		}
		
		memberModifyService.memUpdate(session, memberCommand, errors);
		if(errors.hasErrors()) {
			return "myPage/mySujung";
		}
		return "redirect:myDetail";
	}
	
}
