package com.example.demo;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.svc.MemSvc;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemController {

	@Autowired
	MemSvc memSvc; 
	
	//로그인페이지
	@RequestMapping("/login")
	public String mtdLogin() {
		return "member/login";
	}
	
	//로그인처리
	@RequestMapping("/loginProc")
	public String mtdLoginProc(HttpServletRequest req, HttpSession session, Model model) {
		
		String uid = req.getParameter("uid");
		String upw = req.getParameter("upw");
		
		int chk = memSvc.LoginProc(uid,upw);
		
		if (chk==1) {
			System.out.println("로그인 성공");
			session.setAttribute("uid_session", uid);
			session.setMaxInactiveInterval(10*60);
			return "redirect:/";
		} else {
			System.out.println("로그인 실패");
			
			model.addAttribute("uid",uid);
			return "member/login";
		}
			
			
	}
	
	//회원가입 동의페이지
	@RequestMapping("/privacy")
	public String mtdPrivacy() {
		return "member/privacy";
	}
	
	//회원가입페이지
	@RequestMapping("/join")
	public String mtdJoin() {
		return "member/join";
	}
	
	//회원가입 처리 joinProc
	@RequestMapping("/joinProc")
	public String mtdJoinProc(HttpServletRequest req) {
		
		String uid = req.getParameter("uid");
		String upw = req.getParameter("upw");
		String uname = req.getParameter("uname");
		String uemail = req.getParameter("uemail");
		
		System.out.println(uid);
		System.out.println(upw);
		System.out.println(uname);
		System.out.println(uemail);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("item1", uid);
		map.put("item2", upw);
		map.put("item3", uname);
		map.put("item4", uemail);
		
		memSvc.joinProc(map);
		
		return "redirect:/";
	}
}
