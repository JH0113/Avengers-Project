package controller.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import service.product.ProductListService;

@Controller
public class ProductListController {
	@Autowired
	ProductListService productListService;
   @RequestMapping("productListPage/{ctgr}")
   public String productPage(@PathVariable(value = "ctgr") String ctgr) {
	  System.out.println(ctgr);
      return "product/productListPage";
   }
   @RequestMapping("productListPage2")
   public String productPage(Model model) {
	  productListService.productListAll(model);
      return "product/prodListPage2";
   }
}