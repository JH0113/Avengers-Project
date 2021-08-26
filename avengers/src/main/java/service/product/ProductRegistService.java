package service.product;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import authinfo.AuthinfoDTO;
import command.ProductCommandDTO;
import model.ProductDTO;
import repository.ProductRepository;

public class ProductRegistService {
	@Autowired
	ProductRepository productRepository;
	public void productRegist(ProductCommandDTO productCommandDTO,HttpSession httpSession) {
		ProductDTO productDTO = new ProductDTO();
		AuthinfoDTO authinfo = (AuthinfoDTO)httpSession.getAttribute("authinfo"); 
		String memId = authinfo.getUserId();
		productDTO.setMemId(memId);
		productDTO.setProdName(productCommandDTO.getProdName());
		productDTO.setProdPrice(productCommandDTO.getProdPrice());
		productDTO.setProdDetail(productCommandDTO.getProdDetail());
		productDTO.setProdBrand(productCommandDTO.getProdBrand());
		productDTO.setProdKind(productCommandDTO.getProdKind());
		productDTO.setProdMethod(productCommandDTO.getProdMethod());
		productDTO.setProdLocation(productCommandDTO.getProdLocation());
		productDTO.setProdGuarantee(productCommandDTO.getProdGuarantee());
		productDTO.setProdState(productCommandDTO.getProdState());
		productDTO.setProdQuantity(productCommandDTO.getProdQuantity());
		
		String prodImage = "";
		if (!productCommandDTO.getProdImage()[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : productCommandDTO.getProdImage()) {
				String original = mf.getOriginalFilename();
				String originalExt = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalExt;
				prodImage += store + ",";
				String realPath = httpSession.getServletContext().getRealPath("WEB-INF/view/upload");
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			productDTO.setProdImage(prodImage);
		}
		String prodImage2 = "";
		if (!productCommandDTO.getProdImage2()[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : productCommandDTO.getProdImage2()) {
				String original = mf.getOriginalFilename();
				String originalExt = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalExt;
				prodImage2 += store + ",";
				String realPath = httpSession.getServletContext().getRealPath("WEB-INF/view/upload/");
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			productDTO.setProdImage2(prodImage2);
		}
		String prodImage3 = "";
		if (!productCommandDTO.getProdImage3()[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : productCommandDTO.getProdImage3()) {
				String original = mf.getOriginalFilename();
				String originalExt = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalExt;
				prodImage3 += store + ",";
				String realPath = httpSession.getServletContext().getRealPath("WEB-INF/view/product/productImage");
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			productDTO.setProdImage3(prodImage3);
		}
		productRepository.productRegist(productDTO);
	}
}
