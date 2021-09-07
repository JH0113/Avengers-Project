package service.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import authinfo.AuthinfoDTO;
import model.ProductDTO;
import model.WishDTO;
import repository.WishRepository;

@Service
public class WishService {
	@Autowired
	WishRepository wishRepository;
	
	public void wishList(HttpSession httpSession, Model model) {
		AuthinfoDTO authinfoDTO = (AuthinfoDTO) httpSession.getAttribute("authinfo");
		List<ProductDTO> list = wishRepository.wishList(authinfoDTO.getUserId());
		model.addAttribute("list", list);
	}

	public void heart(int prodNum, HttpSession httpSession, Model model) {
		AuthinfoDTO authinfoDTO = (AuthinfoDTO) httpSession.getAttribute("authinfo");
		WishDTO wishDTO = new WishDTO();
		wishDTO.setProdNum(prodNum);
		wishDTO.setUserId(authinfoDTO.getUserId());
		wishRepository.heart(wishDTO);
		List<ProductDTO> list = wishRepository.wishList(wishDTO.getUserId());
		model.addAttribute("list", list);
	}
	public void wishDelete(int prodNum, HttpSession httpSession, Model model) {
		wishRepository.wishDelete(prodNum);
		AuthinfoDTO authinfoDTO = (AuthinfoDTO) httpSession.getAttribute("authinfo");
		List<ProductDTO> list = wishRepository.wishList(authinfoDTO.getUserId());
		model.addAttribute("list", list);
	}
}
