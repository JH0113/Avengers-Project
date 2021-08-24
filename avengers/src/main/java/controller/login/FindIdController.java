package controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindIdController {
	@RequestMapping("findIdPage")
	public String findIdPage() {
		return "login/findIdPage";
	}
}
