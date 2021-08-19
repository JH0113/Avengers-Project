package controller.product;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.ProductCommand;
import service.product.ProductRegistService;

@Controller
public class ProductRegisterController {
	@RequestMapping("productRegisterPage")
	public String ProductRegistPage() {
		return "product/productRegisterPage";
	}
	@Autowired
	ProductRegistService productRegistService;
	@RequestMapping(value = "productRegister",method = RequestMethod.POST )
	public String productRegist(ProductCommand productCommand,HttpSession session) {
		productRegistService.productRegist(productCommand,session);
		return "redirect:main";
	}
}