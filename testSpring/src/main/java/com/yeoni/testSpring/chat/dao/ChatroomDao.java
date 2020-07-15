package com.yeoni.testSpring.chat.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yeoni.testSpring.chat.vo.Chatroom;

@Repository("cDao")
public class ChatroomDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<Chatroom> selectList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSessionTemplate.selectList("chatMapper.selectList");
	}

	public int Chatroominsert(Chatroom cr) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("chatMapper.insertChatRoom", cr);
	}

	public Chatroom Chatroomselect(String chatroomname) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("chatMapper.selectChatRoomOne", chatroomname);
	}

	public int outchatroomupdate() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("chatMapper.outchatroomupdate");
	}

	public int joinroomupdate() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("chatMapper.joinroomupdate");
	}

}













