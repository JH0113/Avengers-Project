package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import authinfo.AuthinfoDTO;

public class LoginRepository {
	String statement;
	String namespace = "aaa";
	@Autowired
	SqlSession session;
	public AuthinfoDTO login(String userId) {
		statement = namespace + ".login";
		AuthinfoDTO dto = session.selectOne(statement, userId);
		return dto;
	}
}
