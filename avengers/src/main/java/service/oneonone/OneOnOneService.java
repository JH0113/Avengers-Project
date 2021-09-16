package service.oneonone;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.OneOnOneDTO;
import model.StartEndPageDTO;
import repository.OneOnOneRepository;

public class OneOnOneService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;
	
	public void oneononeList(Model model, String userId) {
		List<OneOnOneDTO> list = oneOnOneRepository.oneononeList(userId);
		model.addAttribute("oneononelist",list);

	}
}
