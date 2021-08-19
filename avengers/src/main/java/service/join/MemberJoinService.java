package service.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import command.MemberCommand;
import model.MemberDTO;
import repository.MemberRepository;

public class MemberJoinService {
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BCryptPasswordEncoder bcryptPasswordEncoder;

	public void memjoin(MemberCommand memberCommand, Model model) {
		MemberDTO dto = new MemberDTO();
		dto.setMemId(memberCommand.getMemId());
		dto.setMemNick(memberCommand.getMemNick());
		dto.setMemPw(bcryptPasswordEncoder.encode(memberCommand.getMemPw()));
		dto.setMemName(memberCommand.getMemName());
		dto.setMemAddr(memberCommand.getMemAddr());
		dto.setMemPostNumber(memberCommand.getMemPostNumber());
		dto.setMemDetailAdd(memberCommand.getMemDetailAdd());
		dto.setMemPhone(memberCommand.getMemPhone());
		memberRepository.memjoin(dto);
		model.addAttribute("registInfo", dto);
		
	}
	
}
