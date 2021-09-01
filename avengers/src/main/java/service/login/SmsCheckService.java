package service.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;

import model.MemberDTO;
import model.SmsDTO;
import repository.LoginRepository;
@Service
public class SmsCheckService {
	@Autowired
	LoginRepository loginRepository;
	
	public String smsCheck(MemberDTO memberDTO, HttpSession session, Errors errors) {
		
	 	String smsNum = memberDTO.getSmsNum(); // 회원이 쓴 코드
	 	System.out.println("회원이 쓴 코드 : " + smsNum);
	 	
	 	SmsDTO dto = (SmsDTO)session.getAttribute("dto");
	 	String phoneNum = dto.getMemPhone();
		String saveCode = loginRepository.findSmsNum(phoneNum); // db에서 불러온 저장된 코드
		System.out.println("saveCode : " + saveCode);
		
        if(smsNum.equals(saveCode)){
            return "ok";        
        }else {
            return "no";    
        }
        
 }
}
