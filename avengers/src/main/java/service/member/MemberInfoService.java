package service.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MemberDTO;
import repository.MemberListRepository;

public class MemberInfoService {
	@Autowired
	MemberListRepository memberListRepository;
	public void memberInfo(String memId, Model model) {
		MemberDTO dto = memberListRepository.memberInfo(memId);
		model.addAttribute("memberCommand",dto);
	}

}
