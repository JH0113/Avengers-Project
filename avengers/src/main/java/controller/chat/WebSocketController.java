package controller.chat;

import java.io.IOException;
import java.util.HashMap;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@ServerEndpoint(value = "/chat/{userId}")
public class WebSocketController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	// 왜 static 으로 만들었을까?
	static HashMap<String, Session> userList = new HashMap<String, Session>();

	// 서버 접속시
	@OnOpen
	public void onOpen(Session session, @PathParam("userId") String id) {
		// @PathParam 은 웹소켓에서 사용하는 @PathVariables
		// 1. userId 가 중복되는지 확인
		if (userList.get(id) != null) {
			logger.info("중복 발생");
			sendMsg(session, "사용중인 아이디 입니다.");
		} else {// 중복이 아닐 경우
			logger.info("중복 아님");
			userList.put(id, session);
			broadCast(id + "님이 접속 하였습니다.   현재 접속자 수 : " + userList.size());
		}
	}

	// 서버 종료시
	@OnClose
	public void onClose(Session session) {
		String val = session.getId();// 종료한 sessionId 확인

		Set<String> keys = userList.keySet();
		for (String key : keys) {
			if (val.equals(userList.get(key).getId())) {
				logger.info("종료하려는 userId : " + key);
				userList.remove(key, session);
				logger.info("현재 접속자 : " + userList.size());
				broadCast(key + "님께서 나가셨습니다.    현재 접속자(" + userList.size() + ")");
			}
		}
	}

	// 메시지 수신시
	@OnMessage
	public void onMessage(String msg, Session session) {
		broadCast(msg);
	}

	// 에러 발생시
	@OnError
	public void onError(Session session, Throwable e) {
		logger.info("문제 세션 : " + session);
		System.out.println(e.toString());
	}

	// 메시지 전체 전송
	private void broadCast(String text) {
		logger.info("전달 대상 : " + userList.size());
		Set<String> keys = userList.keySet();
		try {
			for (String key : keys) {
				logger.info("key : " + key);
				Session session = userList.get(key);
				session.getBasicRemote().sendText(text);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 한명에게 메시지 전달
	private void sendMsg(Session session, String msg) {
		try {
			session.getBasicRemote().sendText(msg);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}