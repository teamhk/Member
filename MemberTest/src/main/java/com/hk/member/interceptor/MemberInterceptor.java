package com.hk.member.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hk.member.dto.MemberVO;

public class MemberInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("---------------------MyInterceptor-preHandle");
		
		HttpSession session=request.getSession();
		
		MemberVO loginMember=(MemberVO)session.getAttribute("loginMember");
		
		if(loginMember==null) {
			
			response.sendRedirect("/auth/login");
			return false; 
		}
		return true;
	}

}
