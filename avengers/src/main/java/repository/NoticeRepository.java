package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.NoticeDTO;

public class NoticeRepository {
	@Autowired
	SqlSession sqlSession;
	String nameSpace = "mappers.noticeMapper";
	String statement;
	
	public List<NoticeDTO> noticeList(NoticeDTO dto) {
		statement = nameSpace + ".noticeList";
		return sqlSession.selectList(statement,dto);
	}
	public Integer count() {
		statement = nameSpace + ".count";
		return sqlSession.selectOne(statement);
	}
	public void noticeInsert(NoticeDTO dto) {
		statement = nameSpace + ".noticeInsert";
		sqlSession.insert(statement,dto);
	}	
	public void noticeReadCount(String noticeNum) {
		statement = nameSpace + ".noticeReadCount";
		sqlSession.update(statement, noticeNum);
	}
	public NoticeDTO noticeDetail(String noticeNum) {
		statement = nameSpace + ".noticeDetail";
		return sqlSession.selectOne(statement, noticeNum);
	}
	public void noticeModify(NoticeDTO dto) {
		statement = nameSpace + ".noticeModify";
		sqlSession.update(statement, dto); 
	}
	public void noticeDelete(String noticeNum) {
		statement = nameSpace + ".noticeDelete";
		sqlSession.delete(statement, noticeNum);
	}
}
