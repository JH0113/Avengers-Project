package controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	@RequestMapping("myPage")
	public String myPage() {
		return "myPage/myPage";
	}
}
