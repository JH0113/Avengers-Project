package controller.regist;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegistController {
	@RequestMapping("registPage")
	public String registPage() {
		return "regist/registPage";
	}
}
