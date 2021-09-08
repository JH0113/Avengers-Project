package controller.product;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.product.ProductDetailService;
import service.product.WishService;

@Controller
public class ProductDetailController {
	@Autowired
	ProductDetailService productDetailService;
	@Autowired
	WishService wishService;

	@RequestMapping("prodDetailPage")
	public String productDetail(@RequestParam(value = "prodNum") String prodNum, Model model, HttpSession httpSession) {
		productDetailService.ProductDetail(prodNum, model);
		int wishCk = wishService.wishCk(prodNum, httpSession);
		model.addAttribute("wishCk", wishCk);
		return "product/prodDetailPage";
	}
}
