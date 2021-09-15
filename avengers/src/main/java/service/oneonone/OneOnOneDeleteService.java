package service.oneonone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repository.OneOnOneRepository;

@Service
public class OneOnOneDeleteService {
	@Autowired
	OneOnOneRepository oneOnOneRepository;
	public void oneononeDelete(int oneononeNum) {
		oneOnOneRepository.oneononeDelete(oneononeNum);
	}
}
