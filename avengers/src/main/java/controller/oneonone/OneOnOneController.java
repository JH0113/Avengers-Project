package controller.oneonone;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import authinfo.AuthinfoDTO;
import model.OneOnOneDTO;
import service.oneonone.OneOnOneDeleteService;
import service.oneonone.OneOnOneDetailService;
import service.oneonone.OneOnOneEmployeeDetailService;
import service.oneonone.OneOnOneEmployeeService;
import service.oneonone.OneOnOneModifyService;
import service.oneonone.OneOnOneRegistService;
import service.oneonone.OneOnOneService;

@Controller
public class OneOnOneController {
	@Autowired
	OneOnOneService oneononeService;
	@Autowired
	OneOnOneRegistService oneononeRegistService;
	@Autowired
	OneOnOneDetailService oneOnOneDetailService;
	@Autowired
	OneOnOneDeleteService oneoneDeleteService;
	@Autowired
	OneOnOneEmployeeService oneononeEmployeeService;
	@Autowired
	OneOnOneEmployeeDetailService oneononeEmployeeDetailService;
	@Autowired
	OneOnOneModifyService oneononeModifyService;
	
	@RequestMapping("oneononePage")
	public String oneononePage(Model model, HttpSession httpSession) {
		AuthinfoDTO authinfoDTO = (AuthinfoDTO) httpSession.getAttribute("authinfo");
		oneononeService.oneononeList(model, authinfoDTO.getUserId());
		return "oneonone/oneononePage";
	}
	@RequestMapping("oneononeEmployeePage")
	public String oneononeEmployeePage(@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		oneononeEmployeeService.oneononeEmployee(page,model);
		return "oneonone/oneononeEmployeePage";
	}

	@RequestMapping("oneononeRegistPage")
	public String oneononeRegistPage() {
		return "oneonone/oneononeRegistPage";
	}

	@RequestMapping(value = "oneononeRegist", method = RequestMethod.POST)
	public String oneononeRegist(OneOnOneDTO oneOnOneDTO, HttpSession httpSession) {
		AuthinfoDTO authinfoDTO = (AuthinfoDTO) httpSession.getAttribute("authinfo");
		oneononeRegistService.registInfo(oneOnOneDTO, authinfoDTO.getUserId());
		return "redirect:/";
	}
	@RequestMapping("oneononeDetailPage")
	public String oneononeDetailPage(@RequestParam(value = "oneononeNum") int oneononeNum, Model model) {
		oneOnOneDetailService.oneononeDetail(oneononeNum, model);
		return "oneonone/oneononeDetailPage";
	}
	@RequestMapping("oneononeEmployeeDetailPage")
	public String oneononeEmployeeDetailPage(@RequestParam(value = "oneononeNum") int oneononeNum, Model model) {
		oneononeEmployeeDetailService.oneononeEmployeeDetail(oneononeNum, model);
		return "oneonone/oneononeEmployeeDetailPage";
	}
	@RequestMapping("oneononeDelete")
	public String noticeDelete(@RequestParam (value = "oneononeNum") int oneononeNum) {
		oneoneDeleteService.oneononeDelete(oneononeNum);
		return "redirect:/";
	}
	@RequestMapping("oneononesubmit")
	public String modify(OneOnOneDTO oneOnOneDTO) {
		oneononeModifyService.oneononeModify(oneOnOneDTO);
		return "redirect:oneononeEmployeePage";
	}
}
