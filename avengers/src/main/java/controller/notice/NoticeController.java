package controller.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.NoticeCommand;
import service.notice.NoticeEmpIdService;
import service.notice.NoticeJoinService;
import service.notice.NoticeListService;

@Controller
public class NoticeController {
	@Autowired
	NoticeListService noticeListService;
	@Autowired
	NoticeEmpIdService noticeEmpIdService;
	@Autowired
	NoticeJoinService noticeJoinService;
	
	@RequestMapping("noticePage")
	public String noticePage(@RequestParam(value = "page",defaultValue = "1") int page, Model model) {
		noticeListService.noticeList(page,model);
		return "notice/noticePage";
	}
	@RequestMapping("noticeDetail")
	public String noticeDetail() {	    
	    return "notice/noticeDetail";
	}
	@RequestMapping("noticeRegist")
	public String noticeRegist(Model model, HttpSession session) {	    
		noticeEmpIdService.noticeEmpId(model,session);
	    return "notice/noticeRegist";
	}
	@RequestMapping("noticeJoin")
	public String noticeJoin(NoticeCommand noticeCommand, HttpSession session) {	    
		noticeJoinService.noticeInsert(noticeCommand, session);
		return "redirect:noticePage";
	}
}