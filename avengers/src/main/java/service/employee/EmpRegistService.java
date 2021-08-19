package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import model.EmployeeDTO;
import repository.EmployeeRepository;

public class EmpRegistService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	public void empReist(EmployeeDTO employeeDTO) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpId(employeeDTO.getEmpId());
		dto.setEmpPw(bCryptPasswordEncoder.encode(employeeDTO.getEmpPw()));
		dto.setEmpName(employeeDTO.getEmpName());
		dto.setEmpNick(employeeDTO.getEmpNick());
		employeeRepository.empRegist(dto);
	}
}
