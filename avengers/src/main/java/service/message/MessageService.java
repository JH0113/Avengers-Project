package service.message;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.MsgRoomCommandDTO;
import model.MsgContentsDTO;
import model.MsgRoomDTO;
import repository.MessageRepository;

@Service
public class MessageService {
	@Autowired
	MessageRepository messageRepository;

	public void createMessageRoom(String prodNum, String memId) {
		MsgRoomCommandDTO msgRoomCommandDTO = new MsgRoomCommandDTO();
		msgRoomCommandDTO.setMemId(memId);
		msgRoomCommandDTO.setProdNum(prodNum);
		messageRepository.createMessageRoom(msgRoomCommandDTO);
	}

	public int readMsgRoom(String memId, String prodNum) {
		MsgRoomCommandDTO msgRoomCommandDTO = new MsgRoomCommandDTO();
		msgRoomCommandDTO.setMemId(memId);
		msgRoomCommandDTO.setProdNum(prodNum);
		int msgRoom = messageRepository.readMsgRoom(msgRoomCommandDTO);
		return msgRoom;
	}

	public void readMsgText(int roomNum, Model model) {
		List<MsgContentsDTO> lsit = messageRepository.readMsgText(roomNum);
		model.addAttribute("msgText", lsit);
	}

	public void sendMsg(MsgContentsDTO msgContentsDTO) {
		messageRepository.sendMsg(msgContentsDTO);
	}
	
	public void chatList(String prodNum, Model model) {
		List<MsgRoomDTO> list = messageRepository.chatList(prodNum);
		model.addAttribute("chatList", list);
	}
}
