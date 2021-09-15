package service.oneonone;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.OneOnOneDTO;
import repository.OneOnOneRepository;

@Service
public class OneOnOneEmployeeService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;
	
	public void oneononeEmployee(Model model) {
		List<OneOnOneDTO> list = oneOnOneRepository.oneononeEmployee();
		model.addAttribute("oneononeEmployee", list);
	}
}
