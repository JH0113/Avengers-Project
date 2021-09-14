package controller.oneonone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.OneOnOneDTO;
import service.oneonone.OneOnOneRegistService;
import service.oneonone.OneOnOneService;

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
	@Autowired
	OneOnOneRegistService oneononeRegistService;
	@RequestMapping(value = "oneononeRegist", method = RequestMethod.POST)
	public String oneononeRegist(OneOnOneDTO oneOnOneDTO) {
			oneononeRegistService.registInfo(oneOnOneDTO);
			return "redirect:/";
		}
}
