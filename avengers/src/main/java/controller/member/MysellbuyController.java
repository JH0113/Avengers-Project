package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MysellbuyController {
	@RequestMapping("mybuy")
	public String mybuy() {
		return "myPage/myBuy";
	}
	@RequestMapping("mysell")
	public String mysell() {
		return "myPage/mySell";
	}
}
