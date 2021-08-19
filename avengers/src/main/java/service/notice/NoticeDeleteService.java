package service.notice;

import org.springframework.beans.factory.annotation.Autowired;

import repository.NoticeRepository;

public class NoticeDeleteService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeDelete(String noticeNum) {
		noticeRepository.noticeDelete(noticeNum);
	}
}	
