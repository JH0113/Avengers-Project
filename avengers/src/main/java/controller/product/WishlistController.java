package controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WishlistController {
	@RequestMapping("wishlistPage")
	public String wishlistPage() {
		return "product/wishlistPage";
	}
}
