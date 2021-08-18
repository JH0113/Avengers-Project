package service.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import authinfo.AuthinfoDTO;
import command.NoticeCommand;
import model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeJoinService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeInsert(NoticeCommand noticeCommand, HttpSession session) {
		NoticeDTO dto = new NoticeDTO();
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		String empId=authinfo.getUserId();
		
		dto.setNoticeContents(noticeCommand.getNoticeContents());
		dto.setNoticeSub(noticeCommand.getNoticeSub());
		dto.setNoticeEmpId(empId);

		noticeRepository.noticeInsert(dto);
	}
}
