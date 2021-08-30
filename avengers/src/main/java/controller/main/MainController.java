package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("main")
	public String mainPage() {
		return "main/main";
	}
	@RequestMapping("test")
	public String testPage() {
		return "main/test";
	}
	@RequestMapping("prodDetailPage")
	public String productDetail() {
		return "product/prodDetailPage";
	}
}
