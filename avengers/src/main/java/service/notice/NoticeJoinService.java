package service.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import authinfo.AuthinfoDTO;
import command.MemberCommand;
import command.NoticeCommand;
import model.NoticeDTO;
import repository.NoticeRepository;

public class NoticeJoinService {
	@Autowired
	NoticeRepository noticeRepository;
	
	public void noticeInsert(NoticeCommand noticeCommand, HttpSession session, Model model) {
		NoticeDTO dto = new NoticeDTO();
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		String empId=authinfo.getUserNick();
		dto.setNoticeEmpId(empId);
		dto.setNoticeContents(noticeCommand.getNoticeContents());
		dto.setNoticeSub(noticeCommand.getNoticeSub());	
		dto.setNoticeKind(noticeCommand.getNoticeKind());
		noticeRepository.noticeInsert(dto);
		model.addAttribute("registInfo",dto);
	}
	public void registInfo(NoticeCommand noticeCommand, Model model) {
		model.addAttribute("registInfo",noticeCommand);
	}	
}
