package controller.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.LoginDTO;
import service.login.LoginService;

@Controller
public class LoginController {
	@Autowired
	LoginService loginService;
	
	@RequestMapping("loginPage")
	public String loginPage() {
		return "login/loginPage";
	}
	@RequestMapping(value = "login" , method = RequestMethod.POST)
	public String login(LoginDTO loginDTO , HttpSession httpSession) {
		loginService.login(loginDTO, httpSession);
		return "redirect:/";
	}
}
