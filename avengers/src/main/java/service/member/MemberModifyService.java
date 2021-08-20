package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import authinfo.AuthinfoDTO;
import command.MemberCommand;
import model.MemberDTO;
import repository.MemberRepository;

public class MemberModifyService {
	@Autowired
	MemberRepository memberRepository; 
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder; 
	public void memUpdate(HttpSession session, MemberCommand memberCommand, Errors errors) {
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		String memId = authinfo.getUserId(); 
			
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setMemNick(memberCommand.getMemNick());
		memberDTO.setMemDetailAdd(memberCommand.getMemDetailAdd());
		memberDTO.setMemAddr(memberCommand.getMemAddr());
		memberDTO.setMemPhone(memberCommand.getMemPhone());
		memberDTO.setMemPostNumber(memberCommand.getMemPostNumber());
		memberDTO.setMemId(memId);
		memberRepository.memUpdate(memberDTO);
		
	}
	
	public void myCheck(HttpSession session, MemberCommand memberCommand, Errors errors) {
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		String memId = authinfo.getUserId(); 
		
		if(bcryptPasswordEncoder.matches(memberCommand.getMemPw(), authinfo.getUserPw())) {
			MemberDTO memberDTO = new MemberDTO();
			memberDTO.setMemId(memId);
		}else {
			errors.rejectValue("memPw", "InconsistencyPw");
		}
	}
}
