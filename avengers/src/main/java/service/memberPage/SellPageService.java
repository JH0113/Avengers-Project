package service.memberPage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import authinfo.AuthinfoDTO;
import model.ProductDTO;
import repository.SellPageRepository;

public class SellPageService {
	@Autowired
	SellPageRepository sellPageRepository; 
	
	public void sellPage(Model model,HttpSession session) {
		AuthinfoDTO authdto=(AuthinfoDTO)session.getAttribute("authinfo");
		String userId=authdto.getUserId();
		List<ProductDTO> list = sellPageRepository.sellList(userId);
		model.addAttribute("mySell", list);
	}
}
