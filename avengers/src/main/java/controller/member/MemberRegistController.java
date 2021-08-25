package controller.member;


import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import authinfo.AuthinfoDTO;
import command.MemberCommand;
import service.join.MemberJoinService;
import service.login.LoginService;
import service.member.MemImageModifyService;
import validator.MemberValidator;

@Controller
public class MemberRegistController {
	@Autowired
	MemberJoinService memberJoinService;
	@Autowired
	LoginService loginService;
	@Autowired
	MemImageModifyService memImageModifyService;
	
	@RequestMapping("memberRegistPage")
	public String registPage(@ModelAttribute(value="memberCommand") MemberCommand memberCommand, Model model) {
		return "member/memberRegistPage";
	}
	
	@RequestMapping(value="memjoin",method = RequestMethod.POST )
	public String memJoin(MemberCommand memberCommand,Errors errors, Model model) {
		new MemberValidator().validate(memberCommand, errors);
		AuthinfoDTO authinfo=memberJoinService.idck(memberCommand.getMemId());
		System.out.println(authinfo);
		if(errors.hasErrors()) {
			memberJoinService.registInfo(memberCommand, model);
			if(authinfo !=null) {
				errors.rejectValue("memId", "idck");
				return "member/memberRegistPage";
			}
			return "member/memberRegistPage";
		}
		
		memberJoinService.memjoin(memberCommand, model);		
		return "login/loginPage";
	}
	@RequestMapping(value = "memImageRegist", method = RequestMethod.POST)
	public String memImageRegist(@RequestParam("memImage") MultipartFile[] memImage, HttpSession httpSession) {
		memImageModifyService.memImageRegist(memImage, httpSession);
		return "product/wishlistPage";
	}
}
