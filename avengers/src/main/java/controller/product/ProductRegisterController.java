package controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductRegisterController {
	@RequestMapping("productRegisterPage")
	public String ProductRegist() {
		return "product/productRegisterPage2";
	}
}