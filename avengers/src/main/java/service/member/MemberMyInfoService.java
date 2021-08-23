package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import authinfo.AuthinfoDTO;
import model.MemberDTO;
import repository.MemberRepository;

public class MemberMyInfoService {
	@Autowired
	MemberRepository memberRepository;
	public void memMyInfo(Model model, HttpSession session) {
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		String memId = authinfo.getUserId();
		MemberDTO dto = memberRepository.myInfo(memId);
		model.addAttribute("memberCommand", dto);
	}
}
