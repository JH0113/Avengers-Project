package controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductRegisterPage {
	@RequestMapping("productRegisterPage")
	public String ProductRegist() {
		return "product/productRegisterPage2";
	}
}