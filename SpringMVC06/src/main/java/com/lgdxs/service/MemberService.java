package com.lgdxs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgdxs.entity.Member;
import com.lgdxs.repository.MemberRepository;

@Service
public class MemberService {
	@Autowired
	private MemberRepository memberRepository;
	
	/**
	 * 로그인 
	 * @param member
	 * @return
	 */
	public Member login(Member member) {
		Member info = memberRepository.findByIdAndPw(member.getId(), member.getPw());
//		if(memberRepository.existsByIdAndPw(member.getId(),member.getPw())) {
//			return true;
//		}
//		
//		return false;
		return info;
	}
	
	/**
	 * 회원가입
	 * @param member
	 */
	public void join(Member member) {
		memberRepository.save(member);
	}
}
