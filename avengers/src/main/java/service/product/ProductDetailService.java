package service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.ProductDTO;
import repository.ProductRepository;

public class ProductDetailService {
	@Autowired
	ProductRepository productRepository;
	
	public void ProductDetail(String prodNum,Model model) {
		model.addAttribute("prodNum", prodNum);
		List<ProductDTO> list = productRepository.productList(prodNum);
		model.addAttribute("list", list);
	}
}
