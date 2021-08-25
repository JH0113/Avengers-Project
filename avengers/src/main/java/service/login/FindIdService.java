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
		AuthinfoDTO dto = loginRepository.findIdCheck(userPhone);
		if (dto == null) {
			errors.rejectValue("userId", "noneId");
		}else {
			memberDTO.setMemId(dto.getUserId());
			memberDTO.setMemPhone(dto.getUserPhone());
			
		}
	}
}
