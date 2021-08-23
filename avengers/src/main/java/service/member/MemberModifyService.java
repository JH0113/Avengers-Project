package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.validation.Errors;

import authinfo.AuthinfoDTO;
import command.MemberCommand;
import model.LoginDTO;
import model.MemberDTO;
import repository.LoginRepository;
import repository.MemberRepository;

public class MemberModifyService {
	@Autowired
	MemberRepository memberRepository; 
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	LoginRepository loginRepository;
	public void memModifyUpdate(HttpSession session, MemberCommand memberCommand, Errors errors) {
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
	
	public boolean memPwCheck(HttpSession session, MemberCommand memberCommand, Errors errors) {
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
		
		if(bcryptPasswordEncoder.matches(memberCommand.getMemPw(), authinfo.getUserPw())) {
			return true;
		}else {
			errors.rejectValue("memPw", "InconsistencyPw");
		}
		return false;
	}
	
}
