package service.oneonone;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.OneOnOneDTO;
import repository.OneOnOneRepository;

public class OneOnOneRegistService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;
	
	public void registInfo(OneOnOneDTO oneOnOneDTO, String userId) {
		oneOnOneDTO.setMemId(userId);
		oneOnOneRepository.oneononeRegist(oneOnOneDTO);
	}
	
}
