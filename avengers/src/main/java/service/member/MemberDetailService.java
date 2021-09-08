package service.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MemberDTO;
import model.ProductDTO;
import repository.MemberListRepository;

public class MemberDetailService {
	@Autowired
	MemberListRepository memberListRepository;
	public void memberDetail(String memId, Model model) {
		MemberDTO dto = memberListRepository.memberDetail(memId);
		List<ProductDTO> list = memberListRepository.memberProductsDetail(memId); 
		model.addAttribute("memberDTO",dto);
		model.addAttribute("list",list);
		int heartCount = memberListRepository.heartCount(memId);
		model.addAttribute("heartCount",heartCount);
	}
}
