package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.memberPage.SellPageService;
@Controller
public class MysellbuyController {
	@Autowired
	SellPageService sellPageService;
	@RequestMapping("mybuyPage")
	public String mybuy() {
		return "myPage/myBuyPage";
	}
	 
	@RequestMapping("mysellPage")
	public String mysellPage(Model model,HttpSession session) {
		sellPageService.sellPage(model,session);
		return "myPage/mySellPage";
	}
}
