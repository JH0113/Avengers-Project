package controller.product;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.MemberCommand;
import command.ProductCommandDTO;
import service.product.ProductModifyService;

@Controller
@RequestMapping("productModify")
public class ProductModifyController {
	
	@Autowired
	ProductModifyService productModifyService;
	
	@RequestMapping("prodModifyPage")
	public String prodModify(@RequestParam(value = "prodNum") String prodNum, ProductCommandDTO productCommand, Model model) {
		productModifyService.productModifyPage(prodNum, model);		
		return "product/prodModifyPage";
	}
	@RequestMapping(value = "productModify", method = RequestMethod.POST)
	public String productModify(ProductCommandDTO prodCommand,HttpSession session,Model model) {	
		productModifyService.productModify(prodCommand,session);
		
		String encodedParam = "";
		   try {
		      encodedParam = URLEncoder.encode(prodCommand.getProdNum(),"utf-8");
		   } catch (UnsupportedEncodingException e) {      
		      e.printStackTrace();
		   }
		   return "redirect:/prodDetailPage?prodNum="+encodedParam;
	}
	
	
}
