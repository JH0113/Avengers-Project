package service.product;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import authinfo.AuthinfoDTO;
import command.ProductCommandDTO;
import model.ProductDTO;
import repository.ProductRepository;

public class ProductModifyService {
	@Autowired
	ProductRepository productRepository;
	
	public void productModifyPage(String prodNum,Model model) {

		ProductDTO dto = productRepository.productDetail(prodNum);
		model.addAttribute("productCommand", dto);
	}

	public void productModify(ProductCommandDTO prodCommand, HttpSession session) {
		ProductDTO productDTO=new ProductDTO();
		AuthinfoDTO authinfo=(AuthinfoDTO)session.getAttribute("authinfo");
		String memId = authinfo.getUserId();
		productDTO.setMemId(memId);  
		productDTO.setProdNum(prodCommand.getProdNum());
		productDTO.setProdName(prodCommand.getProdName());
		productDTO.setProdPrice(prodCommand.getProdPrice());
		productDTO.setProdDetail(prodCommand.getProdDetail());
		productDTO.setProdBrand(prodCommand.getProdBrand());
		productDTO.setProdKind(prodCommand.getProdKind());
		productDTO.setProdMethod(prodCommand.getProdMethod());
		productDTO.setProdLocation(prodCommand.getProdLocation());
		productDTO.setProdGuarantee(prodCommand.getProdGuarantee());
		productDTO.setProdState(prodCommand.getProdState());
		productDTO.setProdQuantity(prodCommand.getProdQuantity());
		
		
		String prodImage = "";
		if (!prodCommand.getProdImage()[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : prodCommand.getProdImage()) {
				String original = mf.getOriginalFilename();
				String originalExt = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalExt;
				prodImage += store;
				String realPath = session.getServletContext().getRealPath("WEB-INF/view/upload");
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
		if (!prodCommand.getProdImage2()[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : prodCommand.getProdImage2()) {
				String original = mf.getOriginalFilename();
				String originalExt = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalExt;
				prodImage2 += store;
				String realPath = session.getServletContext().getRealPath("WEB-INF/view/upload/");
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
		if (!prodCommand.getProdImage3()[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : prodCommand.getProdImage3()) {
				String original = mf.getOriginalFilename();
				String originalExt = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalExt;
				prodImage3 += store;
				String realPath = session.getServletContext().getRealPath("WEB-INF/view/upload");
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			productDTO.setProdImage3(prodImage3);
		}
		productRepository.productModify(productDTO);
		
	}
}
