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

	public void productList(String ctgr, Model model) {
		System.out.println(ctgr);
		model.addAttribute("ctgr", ctgr);
		List<ProductDTO> list = productRepository.productList(ctgr);
		model.addAttribute("list", list);
	}

	public void productListMain(Model model) {
		ProductDTO dto = new ProductDTO();

		List<ProductDTO> list = productRepository.productListMain(dto);
		Collections.shuffle(list);
		model.addAttribute("productsList", list);
	}
	
	public void searchProduct(String searchName, Model model) {
		List<ProductDTO> list = productRepository.searchProduct(searchName);
		model.addAttribute("searchProduct", list);
	}
}
