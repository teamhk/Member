package com.hk.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hk.member.dto.MemberVO;
import com.hk.member.service.MemberService;

@Controller
@RequestMapping("/auth")
public class LoginController {

	@Autowired
	MemberService memberService;
	
	@GetMapping("/login")
	public String memberLoginGet(Model model) {
		return "Login";
	}
	
	@PostMapping("/login")
	public String memberLoginPost(HttpSession session, MemberVO member) {
		MemberVO loginMember=memberService.memberLogin(member);
		boolean isLogin=loginMember!=null;
		if(isLogin) {
			session.setAttribute("loginMember", loginMember);
			return "redirect:../member/memberList";
		} else {
			return "LoginFail";
		}
	}
	
	@GetMapping("/logout")
	public String memberLogout(HttpSession session) {
		session.invalidate();
		return "redirect:../member/memberList";
	}
}
