package repository;
 
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.MemberDTO;
import model.ProductDTO;

public class MemberListRepository {

	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.memberListMapper";
	String statement;

	
	public List<MemberDTO> memberList(MemberDTO dto) {
		statement = namespace + ".memList";
		return sqlSession.selectList(statement,dto);
	}
	public Integer count() {
		statement = namespace + ".count";
		return sqlSession.selectOne(statement);
	}
 
	public MemberDTO memberInfo(String memId) {
		statement = namespace + ".memberInfo";
		return sqlSession.selectOne(statement, memId);
	}
	
	public void memberDelete(String memId) {
		statement=namespace+".memberDelete";
		sqlSession.delete(statement,memId);
	}
	public MemberDTO memberDetail(String memId) {
		statement = namespace + ".memberDetail";
		return sqlSession.selectOne(statement, memId);
	}
	public List<ProductDTO> memberProductsDetail(String memId) {
		statement = namespace + ".memberProductsDetail";
		return sqlSession.selectList(statement,memId);
	}
	public Integer heartCount(String memId) {
		statement = namespace + ".heartCount";
		return sqlSession.selectOne(statement,memId);
	}

}
