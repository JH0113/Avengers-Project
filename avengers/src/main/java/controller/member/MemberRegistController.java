package controller.member;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.MemberCommand;
import service.join.MemberJoinService;
import service.login.LoginService;
import validator.MemberValidator;

@Controller
public class MemberRegistController {
	@RequestMapping("registPage")
	public String registPage(@ModelAttribute(value="memberCommand") MemberCommand memberCommand, Model model) {
		return "regist/registPage";
	}
	
	@Autowired
	MemberJoinService memberJoinService;
	@Autowired
	LoginService loginService;
	@RequestMapping(value="memjoin",method = RequestMethod.POST )
	public String memJoin(MemberCommand memberCommand,Errors errors) {
		new MemberValidator().validate(memberCommand, errors);
		if(errors.hasErrors()) {
			System.out.println("에러1");
			return "regist/registPage";
		}
		memberJoinService.memjoin(memberCommand);			
		return "redirect:/";
	}
}
