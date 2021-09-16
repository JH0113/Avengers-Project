package service.oneonone;

import org.springframework.beans.factory.annotation.Autowired;

import model.OneOnOneDTO;
import repository.OneOnOneRepository;

public class OneOnOneModifyService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;
	public void oneononeModify(OneOnOneDTO oneOnOneDTO) {
		oneOnOneRepository.oneononeUpdate(oneOnOneDTO);
		
	}
}
