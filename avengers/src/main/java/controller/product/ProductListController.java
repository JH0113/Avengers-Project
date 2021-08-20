package controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductListController {
   @RequestMapping("productListPage")
   public String productPage() {
      return "product/productListPage";
   }
}