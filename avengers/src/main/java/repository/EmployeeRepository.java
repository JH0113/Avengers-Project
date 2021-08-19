package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.EmployeeDTO;

public class EmployeeRepository {
	String statement;
	String namespace = "employeeMapper";
	@Autowired
	SqlSession session;
	public void empRegist(EmployeeDTO dto) {
		statement = namespace + ".empRegist";
		session.insert(statement, dto);
	}
}
