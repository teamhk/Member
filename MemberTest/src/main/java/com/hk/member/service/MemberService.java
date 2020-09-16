package com.hk.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.member.dto.MemberVO;
import com.hk.member.mapper.MemberMapper;

@Service
public class MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	public List<MemberVO> memberList(){
		return memberMapper.memberList();
	}
	
	public int memberRegister(MemberVO member) {
		int retVal = memberMapper.memberRegister(member);
		
		return retVal;
	}
	
	public MemberVO memberGetOne(int mno) {
		
		return memberMapper.memberGetOne(mno);
		
	}
	
	public int memberUpdate(MemberVO member) {
		int retVal = memberMapper.memberUpdate(member);
		return retVal;
		
	}
	
	public int memberDelete(int mno) {
		int retVal = memberMapper.memberDelete(mno);
		return retVal;
	}
	
	public MemberVO memberLogin(MemberVO member) {
		
		return memberMapper.memberLogin(member);
	}
	
}