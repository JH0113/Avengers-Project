package service.oneonone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.OneOnOneDTO;
import repository.OneOnOneRepository;

@Service
public class OneOnOneEmployeeDetailService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;

	public void oneononeEmployeeDetail(int oneononeNum, Model model) {
		OneOnOneDTO oneOnOneDTO = oneOnOneRepository.oneononeEmployeeDetail(oneononeNum);
		model.addAttribute("oneononedto", oneOnOneDTO);
	}
}
