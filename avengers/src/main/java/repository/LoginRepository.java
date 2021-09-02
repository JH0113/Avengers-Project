package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import authinfo.AuthinfoDTO;
import model.MemberDTO;
import model.SmsDTO;

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
	
	public AuthinfoDTO findIdCheck(String userPhone) {
		
		statement = namespace + ".findId";
		return session.selectOne(statement, userPhone);
	}
	
	public AuthinfoDTO findPwCheck(String userId) {
		
		statement = namespace + ".findPw";
		return session.selectOne(statement, userId);
	}
	
	public void memberPwModify(MemberDTO dto) {
		statement = namespace + ".memPwModify";
		session.update(statement, dto);
	}
	
	public void sendSms(SmsDTO smsDTO) {
		statement = namespace + ".sendSms";
		session.insert(statement, smsDTO);
	}
	
	public String findSmsNum(String phoneNum) {
		statement = namespace + ".findSmsNum";
		return session.selectOne(statement, phoneNum);
	}
	
	public void delSmsNum(String phoneNum) {
		statement = namespace + ".delSmsNum";
		session.delete(statement, phoneNum);
	}
}
