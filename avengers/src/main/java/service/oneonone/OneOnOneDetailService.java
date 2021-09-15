package service.oneonone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.OneOnOneDTO;
import repository.OneOnOneRepository;

@Service
public class OneOnOneDetailService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;

	public void oneononeDetail(int oneononeNum, Model model) {
		OneOnOneDTO oneOnOneDTO = oneOnOneRepository.oneononeDetail(oneononeNum);
		model.addAttribute("oneononedto", oneOnOneDTO);
	}
}
