package service.member;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import authinfo.AuthinfoDTO;
import model.MemberDTO;
import repository.MemberRepository;

public class MemImageModifyService {
	@Autowired
	MemberRepository memberRepository;

	public void memImageRegist(MultipartFile[] memImage, HttpSession httpSession) {
		MemberDTO dto = new MemberDTO();
		AuthinfoDTO authinfoDTO = (AuthinfoDTO) httpSession.getAttribute("authinfo");
		dto.setMemId(authinfoDTO.getUserId());
		String memImage1 = "";
		if (!memImage[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : memImage) {
				String original = mf.getOriginalFilename();
				String originalExt = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalExt;
				memImage1 += store;
				String realPath = httpSession.getServletContext().getRealPath("WEB-INF/view/upload");
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			dto.setMemImage(memImage1);
		}
		memberRepository.memImageRegist(dto);
		authinfoDTO = memberRepository.relogin(dto);
		httpSession.setAttribute("authinfo", authinfoDTO);
	}
}
