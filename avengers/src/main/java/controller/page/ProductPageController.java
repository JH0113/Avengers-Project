package controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductPageController {
	@RequestMapping("productPage")
	public String productPage() {
		return "product/productPage";
	}
}
