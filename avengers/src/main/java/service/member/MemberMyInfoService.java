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
	public void myInfo(Model model, HttpSession session) {
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		System.out.println(authinfo.getUserId());
		String memId = authinfo.getUserId();
		MemberDTO dto = memberRepository.myInfo(memId);
		model.addAttribute("memberCommand", dto);
	}
}
