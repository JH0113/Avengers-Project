package controller.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.product.ProductDetailService;

@Controller
public class ProductDetailController {
	@Autowired
	ProductDetailService productDetailService;

	@RequestMapping("prodDetailPage")
	public String productDetail(@RequestParam(value = "prodNum") String prodNum, Model model) {
		productDetailService.ProductDetail(prodNum, model);
		return "product/prodDetailPage";
	}
}
