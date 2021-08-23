package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.ProductDTO;


public class SellPageRepository {
	String statement;
	String namespace = "mappers.sellMapper";
	@Autowired
	SqlSession sqlSession;
	public List<ProductDTO> sellList(String userId) {
		statement = namespace + ".sellList";
		return sqlSession.selectList(statement,userId);
	}
}
