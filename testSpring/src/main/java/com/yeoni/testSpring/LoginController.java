package com.yeoni.testSpring;

import java.util.Map;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpSession; 
import org.slf4j.Logger; 
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping; 
import org.springframework.web.bind.annotation.RequestMethod; 
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yeoni.testSpring.Member.service.MemberService;
import com.yeoni.testSpring.Member.vo.Member; 

/** * Handles requests for the application home page. */ 


	@SessionAttributes("loginUser")
	@Controller 
	public class LoginController { 
		
	@Autowired
	private MemberService mService;
		
		private static final Logger logger = LoggerFactory.getLogger(LoginController.class); 
		/** * Simply selects the home view to render by returning its name. */ 
		
		@RequestMapping(value="login.do", method=RequestMethod.POST)
		   public String memberLogin(Member m, Model model){
		      Member loginUser = mService.loginMember(m);
		      System.out.println(loginUser);
		    
		      if(loginUser != null) {
		         model.addAttribute("loginUser", loginUser);
		         
		         return "redirect:home.do";
		      }
		      return "redirect:home.do";
	}
		/** * Simply selects the home view to render by returning its name. */ 
		
		@RequestMapping(value = "loginProcess.do", method = RequestMethod.POST) 
		public String loginProcess(@RequestParam String nickname, HttpServletRequest request) { 
			logger.info("Welcome "+nickname); 
			HttpSession session = request.getSession();
			session.setAttribute("nickname", nickname); 
			
			
			
			return "redirect:chatlist.do"; 
			} 
	}
	
	
	
	