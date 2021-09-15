package service.oneonone;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.OneOnOneDTO;
import repository.OneOnOneRepository;

public class OneOnOneService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;
	
	public void oneononeList(Model model, String userId) {
		OneOnOneDTO dto = new OneOnOneDTO();
		List<OneOnOneDTO> list = oneOnOneRepository.oneononeList(userId);
		model.addAttribute("oneononelist",list);
	}
}
