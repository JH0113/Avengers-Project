package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.OneOnOneDTO;

public class OneOnOneRepository {
	@Autowired
	SqlSession sqlSession;

	String nameSpace = "mappers.oneononeMapper";
	String statement;

	public List<OneOnOneDTO> oneononeList(OneOnOneDTO dto) {
		statement = nameSpace + ".oneononeList";
		return sqlSession.selectList(statement, dto);
	}
	
}
