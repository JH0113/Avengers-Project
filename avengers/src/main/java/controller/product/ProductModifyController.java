package controller.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.ProductCommandDTO;
import service.product.ProductModifyService;

@Controller
@RequestMapping("productModify")
public class ProductModifyController {
	
	@Autowired
	ProductModifyService productModifyService;
	
	@RequestMapping("prodModifyPage")
	public String prodModify(@RequestParam(value = "prodNum") String prodNum, ProductCommandDTO productCommand, Model model) {
		productModifyService.productModifyPage(prodNum, model);
		return "product/prodModifyPage";
	}
	
	
}
