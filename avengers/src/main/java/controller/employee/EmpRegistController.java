package controller.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.EmployeeDTO;
import service.employee.EmpRegistService;

@Controller
public class EmpRegistController {
	@Autowired
	EmpRegistService empRegistService;
	@RequestMapping("empRegistPage")
	public String empRegistPage() {
		return "employee/empRegistPage";
	}
	@RequestMapping(value = "empRegist", method = RequestMethod.POST)
	public String empRegist(EmployeeDTO employeeDTO, Model model) {
		empRegistService.empReist(employeeDTO, model);
		return "login/loginPage";
	}
}
