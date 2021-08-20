package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.CartDTO;
import model.ProductCartDTO;
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
	public List<String> memProdNum(String memId){
		statement = namespace + ".memProdNum";
		return sqlSession.selectList(statement,memId);
	}
	public ProductCartDTO cartList(CartDTO dto) {
		statement = namespace + ".cartList";
		return sqlSession.selectOne(statement, dto);
	}
}
