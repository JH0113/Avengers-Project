package service.product;

import org.springframework.beans.factory.annotation.Autowired;

import command.ProductCommand;
import model.ProductDTO;
import repository.ProductRepository;

public class ProductRegistService {
	@Autowired
	ProductRepository productRepository;
	public void productRegist(ProductCommand productCommand) {
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProdName(productCommand.getProdName());
		productDTO.setProdPrice(productCommand.getProdPrice());
		productDTO.setProdLocation(productCommand.getProdLocation());
		productDTO.setProdContext(productCommand.getProdContext());
		productDTO.setProdTag(productCommand.getProdTag());
		productDTO.setProdImage(productCommand.getProdImage());
		productDTO.setProdImageplus(productCommand.getProdImageplus());
		productRepository.productRegist(productDTO);
	}
}
