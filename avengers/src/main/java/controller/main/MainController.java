package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.product.ProductListService;

@Controller
public class MainController {
	@Autowired
	ProductListService productListService;

	@RequestMapping("main")
	public String mainPage(Model model) {
		productListService.productListMain(model);
		return "main/main";
	}

	@RequestMapping("test")
	public String testPage() {
		return "main/test";
	}

	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String search(@RequestParam(value = "searchName") String searchName, Model model) {
		System.out.println(searchName);
		model.addAttribute("searchText", searchName);
		productListService.searchProduct(searchName, model);
		return "main/searchResultPage";
	}

}
