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

@Controller
public class MyPageController {
	@Autowired
	MemberMyInfoService memberMyInfoService;
	@Autowired
	MemberModifyService memberModifyService;
	
	@RequestMapping("myPage")
	public String myPage() {
		return "myPage/myPage";
	}
	
	@RequestMapping("myDetail")
	public String myDetail(HttpSession session,Model model) {
		memberMyInfoService.myInfo(model, session);
		return "myPage/myDetail";
	}
	@RequestMapping("mySujung")
	public String mySujung(HttpSession session,Model model, @ModelAttribute MemberCommand memberCommand) {
		memberMyInfoService.myInfo(model, session);
		return "myPage/mySujung";
	}
	@RequestMapping(value="mySujungOk", method = RequestMethod.POST)
	public String myUpdate(MemberCommand memberCommand, Errors errors, HttpSession session) {
		memberModifyService.memUpdate(session, memberCommand, errors);
		if(errors.hasErrors()) {
			return "myPage/mySujung";
		}
		return "redirect:myDetail";
	}
	@RequestMapping("myCheck")
	public String myCheck(HttpSession session,Model model, @ModelAttribute MemberCommand memberCommand) {
		memberMyInfoService.myInfo(model, session);
		return "myPage/myCheck";
	}
	@RequestMapping("myCheckOk")
	public String myCheck(MemberCommand memberCommand, Errors errors, HttpSession session,Model model) {
		memberModifyService.myCheck(session, memberCommand, errors);
		if(errors.hasErrors()) {
			memberMyInfoService.myInfo(model, session);
			return "myPage/myCheck";
		}
		return "redirect:myDetail";
	}
	
}
