package service.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import Model.LoginDTO;
import authinfo.AuthinfoDTO;
import repository.LoginRepository;

public class LoginService {
	@Autowired
	LoginRepository loginRepository;
	public void login(LoginDTO loginDTO , HttpSession httpSession) {
		String userId = loginDTO.getUserId();
		AuthinfoDTO dto = loginRepository.login(userId);
		if (loginDTO.getUserPw().equals(dto.getUserPw())) {
			httpSession.setAttribute("authinfo", dto);
		}
	}
}
