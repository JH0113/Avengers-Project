package controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import command.MemberCommand;
import model.MemberDTO;
import model.SmsDTO;
import service.login.FindPwService;
import service.login.SmsCheckService;
import validator.FindPwValidator;
import validator.MemberPwModifyValidator;
import validator.MemberValidator;

@Controller
public class FindPwController {
	@Autowired
	FindPwService findPwService;
	@Autowired
	SmsCheckService smsCheckService;
	@RequestMapping("findPwPage") // 본인 확인 페이지
	public String findPwPage() {
		return "login/findPwPage";
	}
	
	@RequestMapping(value="findPwCheck",method = RequestMethod.POST) // 비번 변경 전 본인확인 체크
	public String findPwCheck(MemberDTO memberDTO, Errors errors, HttpSession session,Model model) {
		new FindPwValidator().validate(memberDTO, errors);
		
		findPwService.findPwCheck(memberDTO, session, errors);
		if (errors.hasErrors()) {
			return "login/findPwPage";
		} 
		return "login/smsCheckPage";
	}
	
	
	@RequestMapping("smsCheckPage") // 전화번호 입력 페이지
	public String smsCheckPage() {
		return "login/smsCheckPage";
	}
	

	@RequestMapping(value="smsCheck",method = RequestMethod.POST) // sms 문자 전송
	public String smsCheck(MemberDTO memberDTO,Errors errors, HttpSession session, HttpServletResponse response){
		findPwService.sendSms(memberDTO, session,  errors);
		if (errors.hasErrors()) {
			return "login/smsCheckPage";
		} 
		return "login/smsNumPage";
	}
	
	@RequestMapping("smsNumPage") // 인증번호 입력 페이지
	public String smsNumPage() {
		return "login/smsNumPage";
	}
	
	@RequestMapping(value="smsCheck2",method = RequestMethod.POST) // 인증번호 확인
	public String smsNumCheck(MemberDTO memberDTO, Errors errors, HttpSession session, Model model) {
		smsCheckService.smsCheck(memberDTO, session, errors, model); // 유저가 인증번호 입력하고 비교해야함
		return "login/chkOk";
	}
	
	@RequestMapping("memPwModifyPage") // 비밀번호 변경 페이지
	public String memPwModifyPage() {
		return "login/memPwModifyPage";
	}
	
	@RequestMapping(value="memPwModify",method = RequestMethod.POST) // 비밀번호 변경
	public String memPwModify(HttpSession session, MemberCommand memberCommand,Errors errors, Model model,HttpServletResponse response) throws IOException {
		new MemberPwModifyValidator().validate(memberCommand, errors);

		findPwService.memberPwModify(session, memberCommand, errors);
		if (errors.hasErrors()) {
			return "login/memPwModifyPage";
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script language='javascript'>");
			out.println("alert('비밀번호가 변경되었습니다.')");
			out.println("</script>");
			out.flush();
			
			return "login/loginPage";
		}
	}
	
	
}
