package kr.ac.kopo.parcelservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.parcelservice.dao.MemberDao;
import kr.ac.kopo.parcelservice.model.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public void signup(Member item) {
		dao.signup(item);

	}

	@Override
	public boolean login(Member member) {
		Member item=dao.login(member);
		if(item != null) {
			
			member.setPasswd(null);
			member.setName(item.getName());
			member.setAddress(item.getAddress());
			return true;
		} else {
			return false;
			
		}
	}

	@Override
	public boolean checkId(String id) {
		if(dao.checkId(id) == 0)
			return true;
		else
			return false;
	}

}
