package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.product.ProductListService;

@Controller
public class MainController {
	@Autowired
	ProductListService productListService;
	@RequestMapping("main")
	public String mainPage(Model model) {
		productListService.productList(model);
		return "main/main";
	}
	@RequestMapping("test")
	public String testPage() {
		return "main/test";
	}
	@RequestMapping("prodDetailPage")
	public String productDetail() {
		return "product/prodDetailPage";
	}
}
