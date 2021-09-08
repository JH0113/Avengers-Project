package service.product;

import org.springframework.beans.factory.annotation.Autowired;

import repository.ProductRepository;

public class ProductDelService {
	@Autowired
	ProductRepository productRepository;
	public void prodDelete(String prodNum) {
		productRepository.prodDelete(prodNum);
	}

}
