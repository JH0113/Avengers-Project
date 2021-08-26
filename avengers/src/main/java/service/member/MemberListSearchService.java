package service.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MemberDTO;
import repository.MemberListRepository;

public class MemberListSearchService {
	@Autowired
	MemberListRepository memberListRepository;

	public List<MemberDTO> listAll(String search_option, String keyword, Model model){
		 Map<String,Object> map = new HashMap<>();
		 	String trim_keyword = keyword.trim();
	        map.put("search_option", search_option);
	        map.put("keyword", "%"+trim_keyword+"%"); 
	        return memberListRepository.listAll(map);	      
	}
}
