package service.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.MemberDTO;
import model.ProductDTO;
import repository.ProductRepository;

public class ProductDetailService {
	@Autowired
	ProductRepository productRepository;
	
	public void ProductDetail(String prodNum,Model model) {
		ProductDTO dto = productRepository.productDetail(prodNum);
		model.addAttribute("productdto", dto);
		MemberDTO memberdto = productRepository.memberDetail(prodNum);
		model.addAttribute("memberdto", memberdto);
	}
}
