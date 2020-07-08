package com.yeoni.testSpring;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class EchoHandler extends TextWebSocketHandler {

	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("sessionList add");
		sessionList.add(session);
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

		
		  Map<String,Object> map = session.getAttributes(); 
		  String userId = (String)map.get("id"); 
		  System.out.println("로그인 한 아이디 : " + userId);
		 

		for (WebSocketSession sess : sessionList) {
			sess.sendMessage(new TextMessage(userId + ": " + message.getPayload()));
			System.out.println("message 교환");
		}
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessionList.remove(session);
		System.out.println("remove session");
	}
}