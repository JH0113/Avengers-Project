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
	public List<ProductDTO> productList(ProductDTO dto){
		statement = namespace + ".productList";
		return sqlSession.selectList(statement,dto);
	}
}
