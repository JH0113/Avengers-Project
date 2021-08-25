package service.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;

import authinfo.AuthinfoDTO;
import model.MemberDTO;
import repository.LoginRepository;

public class FindIdService {
	@Autowired
	LoginRepository loginRepository;
	public void findIdCheck(MemberDTO memberDTO , HttpSession httpSession, Errors errors) {
		
		String userPhone = memberDTO.getMemPhone();
		if(userPhone.contains("-")) {
			String[] phone = userPhone.split("-");
			userPhone = phone[0]+phone[1]+phone[2];
		}
		AuthinfoDTO dto = loginRepository.findIdCheck(userPhone);
		if (dto == null) {
			errors.rejectValue("memId", "noneId");
		}else {
			if(memberDTO.getMemName().equals(dto.getUserName())) {
				System.out.println("이름이랑 전화번호 다 잘 맞음");
				memberDTO.setMemId(dto.getUserId());
				memberDTO.setMemPhone(dto.getUserPhone());
			} else {
				System.out.println("이름이랑 전화번호랑 다 안 맞음");
				errors.rejectValue("memId", "memnomatch");
			}
		}
	}
}
