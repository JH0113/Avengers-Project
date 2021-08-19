package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import controller.employee.EmpId;
import model.EmployeeDTO;
import repository.EmployeeRepository;

public class EmpRegistService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void empReist(EmployeeDTO employeeDTO, Model model) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpId(employeeDTO.getEmpId());
		dto.setEmpPw(bCryptPasswordEncoder.encode(employeeDTO.getEmpPw()));
		dto.setEmpName(employeeDTO.getEmpName());
		dto.setEmpNick(employeeDTO.getEmpNick());
		employeeRepository.empRegist(dto);
		EmpId empId = new EmpId();
		empId.setMemId(dto.getEmpId());
		model.addAttribute("registInfo", empId);
	}
}
