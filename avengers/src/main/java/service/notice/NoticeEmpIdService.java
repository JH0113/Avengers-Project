//package service.notice;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.ui.Model;
//
//import authinfo.AuthinfoDTO;
//
//public class NoticeEmpIdService {
//	public void noticeEmpId(Model model, HttpSession session) {
//		AuthinfoDTO authinfo = (AuthinfoDTO)session.getAttribute("authinfo");
//		String noticeEmpId = authinfo.getUserId();
//		model.addAttribute("noticeEmpId",noticeEmpId);
//	}
//}
