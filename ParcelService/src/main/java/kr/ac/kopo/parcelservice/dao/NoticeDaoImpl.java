package kr.ac.kopo.parcelservice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.parcelservice.model.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao {
	
	@Autowired
	SqlSession sql;

	

	@Override
	public void delete(int id) {
		sql.delete("notice.delete", id);

	}

	@Override
	public void add(Notice item) {
		sql.insert("notice.add", item);

	}

	@Override
	public Notice item(int id) {
		return sql.selectOne("notice.item", id);
	}

	@Override
	public void update(Notice item) {
		sql.update("notice.update", item);

	}

	@Override
	public List<Notice> list() {
		return sql.selectList("notice.list");
	}


}
