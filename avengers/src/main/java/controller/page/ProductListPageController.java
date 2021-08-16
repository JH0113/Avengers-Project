package controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductListPageController {
	@RequestMapping("productListPage")
	public String productPage() {
		return "product/productListPage";
	}
}
