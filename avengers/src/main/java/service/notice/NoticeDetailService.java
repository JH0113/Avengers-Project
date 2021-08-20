package service.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.NoticeCommand;
import model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeDetailService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeDetail(String noticeNum, Model model) {
		noticeRepository.noticeReadCount(noticeNum);
		NoticeDTO dto = noticeRepository.noticeDetail(noticeNum);		
		model.addAttribute("noticeCommand", dto);
	}
	
}
