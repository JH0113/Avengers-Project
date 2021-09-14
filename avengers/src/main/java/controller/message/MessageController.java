package controller.message;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import authinfo.AuthinfoDTO;
import model.MsgContentsDTO;
import model.ProductDTO;
import service.message.MessageService;

@Controller
public class MessageController {
	@Autowired
	MessageService messageService;

	@RequestMapping("test")
	public String test(ProductDTO productDTO, Model model, HttpSession httpSession) {
		model.addAttribute("productdto", productDTO);
		AuthinfoDTO authinfoDTO = (AuthinfoDTO) httpSession.getAttribute("authinfo");
		if (!authinfoDTO.getUserId().equals(productDTO.getMemId())) {
			int msgRoom = messageService.readMsgRoom(authinfoDTO.getUserId(), productDTO.getProdNum());
			model.addAttribute("roomNum", msgRoom);
			messageService.readMsgText(msgRoom, model);
		}else {
			messageService.chatList(productDTO.getProdNum(), model);
		}
		return "main/test";
	}
	@RequestMapping("createMessageRoom")
	public String createMessageRoom(ProductDTO productDTO, HttpSession httpSession, Model model, HttpServletRequest request) {
		model.addAttribute("productdto", productDTO);
		AuthinfoDTO authinfoDTO = (AuthinfoDTO) httpSession.getAttribute("authinfo");
		messageService.createMessageRoom(productDTO.getProdNum(), authinfoDTO.getUserId());
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
	}
	@RequestMapping(value = "sendMsg", method = RequestMethod.POST)
	public String sendMsg(MsgContentsDTO msgContentsDTO, HttpServletRequest request) {
		messageService.sendMsg(msgContentsDTO);
		String referer = request.getHeader("Referer");
	    return "redirect:"+ referer;
	}
	@RequestMapping("sellerChat")
	public String sellerChat(@RequestParam(value = "roomNum") int roomNum, Model model, HttpSession httpSession) {
		messageService.readMsgText(roomNum, model);
		model.addAttribute("roomNum", roomNum);
		return "main/sellerChat";
	}
}
