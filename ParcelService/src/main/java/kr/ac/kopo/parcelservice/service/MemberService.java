package kr.ac.kopo.parcelservice.service;

import kr.ac.kopo.parcelservice.model.Member;

public interface MemberService {
	
	boolean login(Member member);
	
	void signup(Member item);
	
	boolean checkId(String id);
}
