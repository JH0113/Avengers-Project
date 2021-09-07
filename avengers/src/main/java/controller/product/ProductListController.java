package controller.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.product.ProductListService;

@Controller
public class ProductListController {
	@Autowired
	ProductListService productListService;

	@RequestMapping("productListPage")
	public String productPage(@RequestParam(value = "prodKind") String ctgr, Model model) {
		productListService.productList(ctgr, model);
		return "product/productListPage";
	}
}