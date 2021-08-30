package repository;
 
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.MemberDTO;

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

//	public List<MemberDTO> memberSearchList(String keyword) {
//		statement = namespace + ".memberSearchList";
//		return sqlSession.selectList(statement,keyword);
//	}
//	
	public MemberDTO memberInfo(String memId) {
		statement = namespace + ".memberInfo";
		return sqlSession.selectOne(statement, memId);
	}
	
	public void memberDelete(String memId) {
		statement=namespace+".memberDelete";
		sqlSession.delete(statement,memId);
	}

	public List<MemberDTO> listAll(Map<String, Object> map){   
		statement = namespace + ".listAll";
	    return sqlSession.selectList(statement,map); 
	}
 

}
