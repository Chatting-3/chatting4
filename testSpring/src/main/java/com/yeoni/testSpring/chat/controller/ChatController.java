package com.yeoni.testSpring.chat.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.yeoni.testSpring.Member.vo.Member;
import com.yeoni.testSpring.chat.service.ChatroomService;
import com.yeoni.testSpring.chat.vo.Chatroom;

@Controller
public class ChatController {
	
	@Autowired
	ChatroomService cService;

	@RequestMapping("chatlist.do")
	public ModelAndView chatlist(ModelAndView mv) {
	
		ArrayList<Chatroom> chatroom = new ArrayList();
		
		chatroom = cService.selectList();
		System.out.println(chatroom);
		if(chatroom != null) {
			mv.addObject("list",chatroom);
			mv.setViewName("chat/chatlist");
		}else {
			mv.addObject("list",chatroom);
			mv.setViewName("chat/chatlist");
		}
		
		return mv;
	}
	
	@RequestMapping("chatroomjoin.do")
	public ModelAndView chatroomjoin(ModelAndView mv,HttpSession session,
										@RequestParam(value = "chatroomnumber", required = false) String chatroomnumber,
										@RequestParam(value="chatroomname", required = false) String chatroomname) {
		
		 int result = cService.joinroomupdate();
		
		Chatroom cr = new Chatroom();
		cr.setChatroom_no(chatroomnumber);
		cr.setChatroomname(chatroomname);
		System.out.println("방번호  : " + cr.getChatroom_no());
		System.out.println("방 이름 : " + cr.getChatroomname());

		
		mv.addObject("cr", cr).setViewName("chat/chatroomdetail");
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		loginUser.setChatroom_no(chatroomnumber);
		
		session.setAttribute("chatRoomnumber", loginUser.getChatroom_no());
		
		return mv;
	}
	
	@RequestMapping("chatroominsert.do")
	public ModelAndView Chatroominsert(HttpServletRequest request, Chatroom cr, HttpSession session, ModelAndView mv) {
		
		System.out.println(cr);
		int result = cService.Chatroominsert(cr);
		
		if(result > 0) {
			cr = cService.Chatroomselect(cr.getChatroomname());
			System.out.println("번호까지 다조회해와서 " + cr);
			mv.addObject("cr", cr).setViewName("redirect:chatlist.do");
			
			Member loginUser = (Member)session.getAttribute("loginUser");
			session.setAttribute("userId", loginUser.getId());
			
			return mv;
			
		}else {
			mv.addObject("<script> alert('채팅방 생성이 실패했습니다.'); history.back(); </script>");
			return mv;			
		}
		
	}
	
	@RequestMapping("crinsertView.do")
	public String chatroominsertView() {
		return "chat/chatroominsert";
	}
	
	@RequestMapping("outchatroom.do")
	public String outchatroom() {
		int result = cService.outchatroomupdate();
		
		if(result > 0) {
			System.out.println("update 성공");
		}else {
			System.out.println("update 실패");
		}
		return "redirect:chatlist.do";
	}
	
//	@RequestMapping("outchatroom.do")
//	public ModelAndView outchatroom(ModelAndView mv,HttpSession session,
//										@RequestParam(value="current_no", required=false) int current_no) {
//		
//		 int result = cService.joinroomupdate();
//		
//		Chatroom cr = new Chatroom();
//		cr.setCurrent_no(current_no - 1);
//		System.out.println("현재 인원 : " + cr.getCurrent_no());
//		
//
//		
//		mv.addObject("cr", cr).setViewName("chat/chatlist");
//		return mv;
//	}
	
	
	
}










