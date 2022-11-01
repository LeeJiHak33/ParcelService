package kr.ac.kopo.parcelservice.dao;

import kr.ac.kopo.parcelservice.model.Member;

public interface MemberDao {

	void signup(Member item);

	Member login(Member member);

	int checkId(String id);
}
