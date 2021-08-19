package service.product;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import authinfo.AuthinfoDTO;
import command.ProductCommand;
import model.ProductDTO;
import repository.ProductRepository;

public class ProductRegistService {
	@Autowired
	ProductRepository productRepository;
	public void productRegist(ProductCommand productCommand,HttpSession session) {
		ProductDTO productDTO = new ProductDTO();
		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo"); 
		String memId = authinfo.getUserId();
		productDTO.setProdName(productCommand.getProdName());
		productDTO.setProdPrice(productCommand.getProdPrice());
		productDTO.setProdLocation(productCommand.getProdLocation());
		productDTO.setProdDetail(productCommand.getProdDetail());
		productDTO.setProdTag(productCommand.getProdTag());
		productDTO.setProdImage(productCommand.getProdImage());
		productDTO.setProdImageplus(productCommand.getProdImageplus());
		productDTO.setMemId(memId);
		productRepository.productRegist(productDTO);
	}
}
