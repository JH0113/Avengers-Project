package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import authinfo.AuthinfoDTO;
import model.MemberDTO;

public class MemberRepository {
	
	String statement;
	String namespace = "mappers.joinMapper";
	@Autowired
	SqlSession sqlSession;
	public void memjoin(MemberDTO dto) {
		statement = namespace + ".memjoin";
		sqlSession.insert(statement, dto);
	}
	public MemberDTO myInfo(String memId) {
		statement = namespace + ".myInfo";
		return sqlSession.selectOne(statement, memId);
	}
	public void memUpdate(MemberDTO dto) {
		statement = namespace + ".memUpdate";
		sqlSession.update(statement, dto);
	}
	public void memImageRegist(MemberDTO dto) {
		statement = namespace + ".memImageRegist";
		sqlSession.update(statement, dto);
	}
	public AuthinfoDTO relogin(MemberDTO dto) {
		statement = namespace + ".relogin";
		AuthinfoDTO authinfoDTO = sqlSession.selectOne(statement, dto);
		return authinfoDTO;
	}
	public AuthinfoDTO idck(String userId) {
		statement = namespace + ".idck";
		return sqlSession.selectOne(statement, userId);
	}

}
