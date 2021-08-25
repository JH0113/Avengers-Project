package controller.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;

import model.MemberDTO;
import service.login.FindIdService;
import validator.FindIdValidator;

@Controller
public class FindIdController {
	@Autowired
	FindIdService findIdService;
	@RequestMapping("findIdPage") //아이디 찾기 페이지
	public String findIdPage() {
		return "login/findIdPage";
	}
	
	@RequestMapping("findIdCheck") // 아이디 찾기 체크
	public String findIdCheck(MemberDTO memberDTO, Errors errors, HttpSession session,Model model) {
		new FindIdValidator().validate(memberDTO, errors);
		if (errors.hasErrors()) {
			System.out.println("공백있네욤 from.컨트롤러");
			return "login/findIdPage";
		}
		
		findIdService.findIdCheck(memberDTO, session, errors);
		if (errors.hasErrors()) {
			return "login/findIdPage";
		} 
		return "login/findIdResultPage";
	}
}
