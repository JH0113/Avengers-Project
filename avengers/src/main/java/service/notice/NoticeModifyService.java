package service.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import authinfo.AuthinfoDTO;
import command.NoticeCommand;
import model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeModifyService {
	@Autowired
	NoticeRepository noticeRepository;
	public void noticeModify(NoticeCommand noticeCommand, HttpSession session) {
		NoticeDTO dto = new NoticeDTO();
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		String empId=authinfo.getUserId();
		// Id말고 nick가져와야하는데....  authinfo에 추가해줘야함
		
		dto.setNoticeContents(noticeCommand.getNoticeContents());
		dto.setNoticeSub(noticeCommand.getNoticeSub());
		dto.setNoticeEmpId(empId);
		dto.setNoticeKind(noticeCommand.getNoticeKind());
		dto.setNoticeNum(noticeCommand.getNoticeNum());
		noticeRepository.noticeModify(dto);
	}
}
