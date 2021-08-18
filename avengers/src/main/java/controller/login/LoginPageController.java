package controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginPageController {
	@RequestMapping("loginPage")
	public String loginPage() {
		return "login/loginPage";
	}
}
