package kr.ac.kopo.parcelservice.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.parcelservice.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void signup(Member item) {
		sql.insert("member.signup", item);

	}

	@Override
	public Member login(Member member) {
		return sql.selectOne("member.login",member);
	}

	@Override
	public int checkId(String id) {		
		return sql.selectOne("member.check_id", id);
	}

}
