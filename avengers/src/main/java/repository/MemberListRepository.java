package repository;

import java.util.List;

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
 

	public List<MemberDTO> memberSearchList(String keyword) {
		statement = namespace + ".memberSearchList";
		return sqlSession.selectList(statement,keyword);
	}
}
