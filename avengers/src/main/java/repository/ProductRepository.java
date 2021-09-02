package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.ProductDTO;

public class ProductRepository {
	@Autowired
	SqlSession sqlSession;

	String namespace = "productMapper";
	String statement;

	public void productRegist(ProductDTO productDTO) {
		statement = namespace + ".productRegist";
		sqlSession.insert(statement, productDTO);
	}

	public List<ProductDTO> productList(String ctgr) {
		statement = namespace + ".productList";
		return sqlSession.selectList(statement, ctgr);
	}

	public List<ProductDTO> searchProduct(String searchName) {
		statement = namespace + ".searchProduct";
		return sqlSession.selectList(statement, searchName);
	}

	public List<ProductDTO> productListMain(ProductDTO dto) {
		statement = namespace + ".productListMain";
		return sqlSession.selectList(statement, dto);
	}
	public ProductDTO productDetail(String prodNum) {
		statement = namespace + ".productDetail";
		return sqlSession.selectOne(statement, prodNum);
	}
}
