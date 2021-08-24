package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.ReportDTO;

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
}
