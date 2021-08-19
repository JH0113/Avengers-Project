package controller.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.ProductCommand;
import service.product.ProductRegistService;

@Controller
public class ProductRegisterController {
	@RequestMapping("productRegisterPage")
	public String ProductRegist() {
		return "product/productRegisterPage";
	}
	@Autowired
	ProductRegistService productRegistService;
	@RequestMapping(value = "productRegister",method = RequestMethod.POST )
	public String productRegistOk(ProductCommand productCommand) {
		return "redirect:main";
	}
}