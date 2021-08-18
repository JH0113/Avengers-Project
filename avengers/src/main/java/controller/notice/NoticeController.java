package controller.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.notice.NoticeListService;

@Controller
public class NoticeController {
	@Autowired
	NoticeListService noticeListService;
	
	@RequestMapping("noticePage")
	public String noticePage(@RequestParam(value = "page",defaultValue = "1") int page, Model model) {
		noticeListService.noticeList(page,model);
		return "notice/noticePage";
	}
	@RequestMapping("noticeDetail")
	public String noticeDetail() {	    
	    return "notice/noticeDetail";
	}
}
