package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindPwController {
	@RequestMapping("findPwPage")
	public String findPwPage() {
		return "member/findPwPage";
	}
}
