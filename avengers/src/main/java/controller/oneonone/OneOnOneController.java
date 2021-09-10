package controller.oneonone;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.NoticeCommand;
import command.OneOnOneCommand;
import service.oneonone.OneOnOneService;
import validator.NoticeValidator;

@Controller
public class OneOnOneController {
	@Autowired
	OneOnOneService oneononeService;
	@RequestMapping("oneononePage")
	public String oneononePage(Model model) {
		oneononeService.oneononeList(model);
		return "oneonone/oneononePage";
	}

	@RequestMapping("oneononeRegistPage")
	public String oneononeRegistPage() {
		return "oneonone/oneononeRegistPage";
	}
//	@RequestMapping(value = "oneononeRegist", method = RequestMethod.POST)
//	public String oneononeRegist(OneOnOneCommand oneononeCommand, Errors errors, HttpSession session, Model model) {
//		new NoticeValidator().validate(oneononeCommand, errors);
//		if(errors.hasErrors()) {
//			oneononeService.registInfo(oneononeCommand, model);
//			return "oneonone/oneononeRegistPage";
//		}
}
