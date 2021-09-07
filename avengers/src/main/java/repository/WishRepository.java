package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.ProductDTO;
import model.WishDTO;

public class WishRepository {
	@Autowired
	SqlSession sqlSession;

	String namespace = "wishMapper";
	String statement;

	public void heart(WishDTO wishDTO) {
		statement = namespace + ".heart";
		sqlSession.insert(statement, wishDTO);
	}
	public List<ProductDTO> wishList(String userId) {
		statement = namespace + ".wishList";
		return sqlSession.selectList(statement, userId);
	}
	public void wishDelete(int prodNum) {
		statement = namespace + ".wishDelete";
		sqlSession.delete(statement, prodNum);
	}
	public String wishCk(String prodNum) {
		statement = namespace + ".wishCk";
		String memId = sqlSession.selectOne(statement, prodNum);
		return memId;
	}
}
