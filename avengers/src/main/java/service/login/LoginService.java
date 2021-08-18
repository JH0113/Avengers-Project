package service.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;

import authinfo.AuthinfoDTO;
import model.LoginDTO;
import repository.LoginRepository;

public class LoginService {
	@Autowired
	LoginRepository loginRepository;
	public void login(LoginDTO loginDTO , HttpSession httpSession, Errors errors) {
		String userId = loginDTO.getUserId();
		AuthinfoDTO dto = loginRepository.login(userId);
		if (dto.getUserId().equals("")) {
			errors.rejectValue("userId", "noneId");
		}else {
			if (loginDTO.getUserPw().equals(dto.getUserPw())) {
				httpSession.setAttribute("authinfo", dto);
			}else {
				errors.rejectValue("userPw", "InconsistencyPw");
			}
			
		}
	}
}
