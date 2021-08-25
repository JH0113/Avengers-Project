package controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductListController {
   @RequestMapping("productListPage/{ctgr}")
   public String productPage(@PathVariable(value = "ctgr") String ctgr) {
      return "product/productListPage";
   }
}