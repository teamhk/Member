package com.hk.member.mapper;

import java.util.List;

import com.hk.member.dto.MemberVO;

public interface MemberMapper {
	
	public List<MemberVO> memberList();
	
	public int memberRegister(MemberVO member);
	
	public MemberVO memberGetOne(int mno);
	
	public int memberUpdate(MemberVO member);
	
	public int memberDelete(int mno);
	
	public MemberVO memberLogin(MemberVO member);

}