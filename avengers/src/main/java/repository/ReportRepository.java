package repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.ReportDTO;
import model.ReportFinishDTO;

public class ReportRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.reportMapper";
	String statement;
	
	
	public List<ReportDTO> reportList(ReportDTO dto){
		statement = namespace + ".reportList";
		return sqlSession.selectList(statement,dto);
	}	
	public Integer countProd() {
		statement = namespace + ".countProd";
		return sqlSession.selectOne(statement);
	}	
	public Integer countMem() {
		statement = namespace + ".countMem";
		return sqlSession.selectOne(statement);
	}
	public ReportDTO reportDetail (String reportedNum) {
		statement = namespace + ".reportDetail";
		return sqlSession.selectOne(statement,reportedNum);
	}
	public void reportFinishInsert(ReportFinishDTO dto) {
		statement = namespace + ".reportFinishInsert";
		sqlSession.insert(statement,dto);
	}
	public void reportMemberCountUp(String memId) {
		statement = namespace + ".reportMemberCountUp";
		sqlSession.update(statement,memId);
	}
	public void reportCompletedMember(String reportedNum) {
		statement = namespace + ".reportCompletedMember";
		sqlSession.update(statement,reportedNum);
	}
	public void reportCompletedProd(String reportedNum) {
		statement = namespace + ".reportCompletedProd";
		sqlSession.update(statement,reportedNum);
	}
	public void reportCancelInsert(ReportFinishDTO dto) {
		statement = namespace + ".reportCancelInsert";
		sqlSession.update(statement,dto);
	}
	public ReportFinishDTO reportFinishDetail(String reportNum) {
		statement = namespace + ".reportFinishDetail";
		return sqlSession.selectOne(statement, reportNum);
	}
	public List<ReportDTO> searchList(Map<String, Object> map){   
		statement = namespace + ".searchList";
	    return sqlSession.selectList(statement,map); 
	}
	
}
