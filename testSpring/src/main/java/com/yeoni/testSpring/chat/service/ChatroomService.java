package com.yeoni.testSpring.chat.service;

import java.util.ArrayList;

import com.yeoni.testSpring.chat.vo.Chatroom;

public interface ChatroomService {

	ArrayList<Chatroom> selectList();

	int Chatroominsert(Chatroom cr);

	Chatroom Chatroomselect(String chatroomname);

	int outchatroomupdate();

	int joinroomupdate();

}
