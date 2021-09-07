package controller.product;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import authinfo.AuthinfoDTO;
import service.product.WishService;

@Controller
public class WishlistController {
	@Autowired
	WishService wishService;

	@RequestMapping("wishlistPage")
	public String wishlistPage(HttpSession httpSession, Model model) {
		wishService.wishList(httpSession, model);
		return "product/wishlistPage";
	}

	@RequestMapping("heart")
	public String heart(@RequestParam(value = "prodNum") int prodNum, HttpSession httpSession, Model model) {
		wishService.heart(prodNum, httpSession, model);
		return "product/wishlistPage";
	}
	@RequestMapping("wishDelete")
	public String wishDelete(@RequestParam("prodNum") int prodNum, HttpSession httpSession, Model model) {
		wishService.wishDelete(prodNum,httpSession, model);
		return "product/wishlistPage";
	}
}
