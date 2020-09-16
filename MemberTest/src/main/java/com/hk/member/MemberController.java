package com.hk.member;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
		
		return "memberList";
			
	}
	

}
