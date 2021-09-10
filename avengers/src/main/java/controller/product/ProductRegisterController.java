package controller.product;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.ProductCommandDTO;
import service.product.ProductRegistService;
import validator.ProductValidator;


@Controller
public class ProductRegisterController {
	@Autowired
	ProductRegistService productRegistService;
 
	@RequestMapping("productRegisterPage")
	public String ProductRegistPage(Model model, HttpSession httpSession) {
		return "product/productRegisterPage";
	}
	@RequestMapping(value = "productRegist",method = RequestMethod.POST )
	public String productRegist(ProductCommandDTO productCommandDTO, HttpSession session, Errors errors) {
		new ProductValidator().validate(productCommandDTO, errors);
		productRegistService.productRegist(productCommandDTO, session); 
		return "redirect:/";
	}
}