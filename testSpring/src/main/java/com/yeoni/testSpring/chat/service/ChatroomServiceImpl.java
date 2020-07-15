package com.yeoni.testSpring.chat.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yeoni.testSpring.chat.dao.ChatroomDao;
import com.yeoni.testSpring.chat.vo.Chatroom;

@Service("cService")
public class ChatroomServiceImpl implements ChatroomService{
	
	@Autowired
	ChatroomDao cDao;

	@Override
	public ArrayList<Chatroom> selectList() {
		// TODO Auto-generated method stub
		return cDao.selectList();
	}

	@Override
	public int Chatroominsert(Chatroom cr) {
		// TODO Auto-generated method stub
		return cDao.Chatroominsert(cr);
	}

	@Override
	public Chatroom Chatroomselect(String chatroomname) {
		// TODO Auto-generated method stub
		return cDao.Chatroomselect(chatroomname);
	}

	@Override
	public int outchatroomupdate() {
		// TODO Auto-generated method stub
		return cDao.outchatroomupdate();
	}

	@Override
	public int joinroomupdate() {
		// TODO Auto-generated method stub
		return cDao.joinroomupdate();
	}

}
