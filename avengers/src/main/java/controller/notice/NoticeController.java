package controller.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.NoticeCommand; 
import service.notice.NoticeDeleteService;
import service.notice.NoticeDetailService;
import service.notice.NoticeJoinService;
import service.notice.NoticeListService;
import service.notice.NoticeModifyService;
import validator.NoticeValidator;

@Controller
public class NoticeController {
	@Autowired
	NoticeListService noticeListService;
	@Autowired
	NoticeJoinService noticeJoinService;
	@Autowired
	NoticeDetailService noticeDetailService;
	@Autowired
	NoticeModifyService noticeModifyService;
	@Autowired
	NoticeDeleteService noticeDeleteService;
	
	@RequestMapping("noticePage")
	public String noticePage(@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		noticeListService.noticeList(page,model);
		return "notice/noticePage";
	}
	@RequestMapping("noticeRegistPage")
	public String noticeRegist(@ModelAttribute(value = "noticeCommand") NoticeCommand noticeCommand ,Model model, HttpSession session) {	    
	    return "notice/noticeRegistPage";
	}
	@RequestMapping(value = "noticeRegist", method = RequestMethod.POST)
	public String noticeRegist(NoticeCommand noticeCommand, Errors errors, HttpSession session, Model model) {
		new NoticeValidator().validate(noticeCommand, errors);
		if(errors.hasErrors()) {
			noticeJoinService.registInfo(noticeCommand, model);
			return "notice/noticeRegistPage";
		}
		noticeJoinService.noticeInsert(noticeCommand, session, model);
		return "redirect:noticePage";
	}
	@RequestMapping("noticeDetailPage")
	public String noticeDetailPage(@RequestParam(value = "noticeNum") String noticeNum, Model model) {
		noticeDetailService.noticeDetail(noticeNum,model);
		return "notice/noticeDetailPage";
	}
	@RequestMapping("noticeModifyPage")
	public String noticeModifyPage(@RequestParam(value = "noticeNum") String noticeNum, NoticeCommand noticeCommand, Model model) {
		noticeDetailService.noticeDetail(noticeNum,model);
		return "notice/noticeModifyPage";
	}
	@RequestMapping(value = "noticeModify", method = RequestMethod.POST)
	public String noticeModify(NoticeCommand noticeCommand, HttpSession session) {
		noticeModifyService.noticeModify(noticeCommand, session);
		return "redirect:noticePage";
	}
	@RequestMapping("noticeDelete")
	public String noticeDelete(@RequestParam (value = "noticeNum") String noticeNum) {
		noticeDeleteService.noticeDelete(noticeNum);
		return "redirect:/noticePage";
	}
}