package controller.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	@RequestMapping("noticePage")
	public String noticePage() {
		return "notice/noticePage";
	}
}
