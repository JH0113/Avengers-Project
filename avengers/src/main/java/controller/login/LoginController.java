package controller.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.LoginDTO;
import service.login.LoginService;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	LoginService loginService;
	// request(login)을 url로 치고 들어왔을 때를 차단.
	@RequestMapping(method = RequestMethod.GET)
	public String main() {
		return "redirect:/";
	}
	// request(login)을 정식 post 방식으로 받았을 때 로그인 서비스 실행.
	@RequestMapping(method = RequestMethod.POST)
	public String login(LoginDTO loginDTO , HttpSession httpSession) {
		loginService.login(loginDTO, httpSession);
		return "redirect:/";
	}
	@RequestMapping("logout")
	public String logOut(HttpSession httpSession) {
		httpSession.invalidate();
		return "redirect:/";
	}
}
