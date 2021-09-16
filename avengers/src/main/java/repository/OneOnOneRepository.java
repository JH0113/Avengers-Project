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

	public List<OneOnOneDTO> oneononeList(String memId) {
		statement = nameSpace + ".oneononeList";
		return sqlSession.selectList(statement,memId);
	}
	public Integer count() {
		statement = nameSpace + ".count";
		return sqlSession.selectOne(statement);
	}	
	public List<OneOnOneDTO> oneononeEmployee(OneOnOneDTO dto) {
		statement = nameSpace + ".oneononeEmployeeList";
		return sqlSession.selectList(statement,dto);
	}

	public void oneononeRegist(OneOnOneDTO oneOnOneDTO) {
		statement = nameSpace + ".oneononeRegist";
		sqlSession.insert(statement, oneOnOneDTO);
			
	}
	
	public OneOnOneDTO oneononeDetail(int oneononeNum) {
		statement = nameSpace + ".oneononeDetail";
		return sqlSession.selectOne(statement, oneononeNum);
	}
	public OneOnOneDTO oneononeEmployeeDetail(int oneononeNum) {
		statement = nameSpace + ".oneononeEmployeeDetail";
		return sqlSession.selectOne(statement, oneononeNum);
	}
	public void oneononeDelete(int oneononeNum) {
		statement = nameSpace + ".oneononeDelete";
		sqlSession.delete(statement, oneononeNum);
	}
	public void oneononeUpdate(OneOnOneDTO oneOnOneDTO) {
		statement = nameSpace + ".oneononeUpdate";
		sqlSession.update(statement, oneOnOneDTO);
		
	}
}
