package com.hk.member;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hk.member.dto.MemberVO;
import com.hk.member.service.MemberService;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService memberService;
	
	@GetMapping("/member/list")
	public String memberList(Locale locale, Model model) {
		
		logger.info("MemberList controller! The client locale is {}.", locale);
		
		model.addAttribute("members", memberService.memberList());
		
		return "member/memberList";
			
	}
	
	@GetMapping("/member/register")
	public String memberRegisterGet(Model model) {
		
		return "member/memberRegisterGet";
	}
	
	@PostMapping("/member/register")
	public String memberRegisterPost(Model model, MemberVO member) {
		
		int RetVal = memberService.memberRegister(member);
		
		logger.info("멤버 register 성공/실패 알려주기 + ["+RetVal+"]");
		
		model.addAttribute("name", member.getMname());
		
		return "member/memberRegisterPost";
	}
	
	@GetMapping("/member/update")
	public String memberUpdateGet(@RequestParam("mno") int mno, Model model) {
		
		model.addAttribute("member", memberService.memberGetOne(mno));
		
		return "member/memberUpdateGet";
	}
	
	@PostMapping("member/update")
	public String memberUpdatePost(Model model, MemberVO member) {
		
		memberService.memberUpdate(member);
		model.addAttribute("member", member);
		
		return "member/memberUpdatePost";
	}
	
	@GetMapping("member/delete")
	public String memberDeleteGet(@RequestParam("mno") int mno, Model model) {
		
		model.addAttribute("mno", mno);
		return "member/memberDeleteGet";
	}
	
	@PostMapping("member/delete")
	public String memberDeletePost(@RequestParam("mno") int mno, Model model) {
		System.out.println("mno:"+mno);
		memberService.memberDelete(mno);
		
		return "member/memberDeletePost";
	}
	
	
	

}
