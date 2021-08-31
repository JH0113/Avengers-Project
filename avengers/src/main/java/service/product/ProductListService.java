package service.product;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.ProductDTO;
import repository.ProductRepository;

public class ProductListService {
	@Autowired
	ProductRepository productRepository;
	public void productList(Model model) {
		
		ProductDTO dto = new ProductDTO();
		
		List<ProductDTO> list = productRepository.productList(dto);
		model.addAttribute("productsList",list);
		
	}
	public void productListAll(Model model) {
		ProductDTO dto = new ProductDTO();
		
		List<ProductDTO> list = productRepository.productList(dto);
		Collections.shuffle(list);
		model.addAttribute("productsList",list);
		
	}
}
