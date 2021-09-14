package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import command.MsgRoomCommandDTO;
import model.MsgContentsDTO;
import model.MsgRoomDTO;

public class MessageRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.messageMapper";
	String statement;

	public void createMessageRoom(MsgRoomCommandDTO msgRoomCommandDTO) {
		statement = namespace + ".createRoom";
		sqlSession.insert(statement, msgRoomCommandDTO);
		statement = namespace + ".createMsg";
		sqlSession.insert(statement, msgRoomCommandDTO);
	}

	public Integer readMsgRoom(MsgRoomCommandDTO msgRoomCommandDTO) {
		statement = namespace + ".readMsgRoom";
		Integer roomNum = sqlSession.selectOne(statement, msgRoomCommandDTO);
		System.out.println(roomNum);
		if (roomNum == null) {
			return 0;
		}
		return roomNum;
	}

	public List<MsgContentsDTO> readMsgText(int roomNum) {
		statement = namespace + ".readMsgText";
		return sqlSession.selectList(statement, roomNum);
	}

	public void sendMsg(MsgContentsDTO msgContentsDTO) {
		statement = namespace + ".sendMsg";
		sqlSession.insert(statement, msgContentsDTO);

	}
	
	public List<MsgRoomDTO> chatList(String prodNum) {
		statement = namespace + ".chatList";
		return sqlSession.selectList(statement, prodNum);
	}
}
