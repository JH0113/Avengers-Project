package controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegistPageController {
	@RequestMapping("registPage")
	public String registPage() {
		return "regist/registPage";
	}
}