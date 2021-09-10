package service.oneonone;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.OneOnOneDTO;
import repository.OneOnOneRepository;

public class OneOnOneService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;
	
	public void oneononeList(Model model) {
		OneOnOneDTO dto = new OneOnOneDTO();
		List<OneOnOneDTO> list = oneOnOneRepository.oneononeList(dto);
		model.addAttribute("oneononelist",list);
	}
	
}
