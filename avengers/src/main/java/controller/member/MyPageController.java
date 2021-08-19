package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.member.MemberMyInfoService;

@Controller
public class MyPageController {
	@Autowired
	MemberMyInfoService memberMyInfoService;
	
	@RequestMapping("myPage")
	public String myPage() {
		return "myPage/myPage";
	}
	
	@RequestMapping("myDetail")
	public String myDetail(HttpSession session,Model model) {
		memberMyInfoService.myInfo(model, session);
		return "myPage/myDetail";
	}
}
