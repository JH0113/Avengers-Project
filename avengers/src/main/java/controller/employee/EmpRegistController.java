package controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmpRegistController {
	@RequestMapping("empRegistPage")
	public String EmpRegistPage() {
		return "employee/empRegistPage";
	}
}
