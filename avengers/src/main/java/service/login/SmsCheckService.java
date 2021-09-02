package service.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;

import model.MemberDTO;
import model.SmsDTO;
import repository.LoginRepository;
@Service
public class SmsCheckService {
	@Autowired
	LoginRepository loginRepository;
	
	public void smsCheck(MemberDTO memberDTO, HttpSession session, Errors errors, Model model) {
		
	 	String smsNum = memberDTO.getSmsNum(); // 회원이 쓴 코드
	 	System.out.println("회원이 쓴 코드 : " + smsNum);
	 	String ck=null;
	 	
	 	SmsDTO dto = (SmsDTO)session.getAttribute("dto");
	 	String phoneNum = dto.getMemPhone();
		String saveCode = loginRepository.findSmsNum(phoneNum); // db에서 불러온 저장된 코드
		System.out.println("saveCode : " + saveCode);
		
		if(saveCode != null) {
			if(smsNum.equals(saveCode)){
	        	System.out.println("true 마즘?"+smsNum.equals(saveCode));
	        	loginRepository.delSmsNum(phoneNum); // db에 저장된 인증번호 삭제
	        	ck="ok";
			}else{
				System.out.println("false 마즘?"+smsNum.equals(saveCode));
	        	loginRepository.delSmsNum(phoneNum); // db에 저장된 인증번호 삭제2
	        	ck="no";
			}
        }else {
        	ck="no";
        }
        model.addAttribute("chk", ck);
        
	}
	

	
}
