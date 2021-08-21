package service.product;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

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
		productDTO.setMemId(memId);

		String prodImageStore= "";
		if(!productCommand.getProdImage()[0].getOriginalFilename().equals("")) {
			for(MultipartFile mf : productCommand.getProdImage()) {
				String original = mf.getOriginalFilename();
				String originalExt = 
						original.substring(original.lastIndexOf("."));
				String store = 
						UUID.randomUUID().toString().replace("-","")
						+originalExt;
				prodImageStore += store + ",";
				String realPath = 
						session.getServletContext()
						       .getRealPath("WEB-INF/view/product/upload");
				File file = new File(realPath + "/" + store);
				try {mf.transferTo(file);} 
				catch (Exception e) {e.printStackTrace();} 
			}
			productDTO.setProdImage(prodImageStore);
		}
		String prodImageStorePlus= "";
		if(!productCommand.getProdImageplus()[0].getOriginalFilename().equals("")) {
			for(MultipartFile mf : productCommand.getProdImageplus()) {
				String original = mf.getOriginalFilename();
				String originalExt = 
						original.substring(original.lastIndexOf("."));
				String store = 
						UUID.randomUUID().toString().replace("-","")
						+originalExt;
				prodImageStorePlus += store + ",";
				String realPath = 
						session.getServletContext()
						       .getRealPath("WEB-INF/view/product/upload");
				File file = new File(realPath + "/" + store);
				try {mf.transferTo(file);} 
				catch (Exception e) {e.printStackTrace();} 
			}
			productDTO.setProdImageplus(prodImageStorePlus);
		}
		productRepository.productRegist(productDTO);
		
	}
}
