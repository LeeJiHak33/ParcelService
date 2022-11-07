package kr.ac.kopo.parcelservice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.parcelservice.model.Sender;

@Repository
public class SenderDaoImpl implements SenderDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Sender> list() {
		return sql.selectList("sender.list");
	}

	@Override
	public void add(Sender item) {
		sql.insert("sender.add", item);

	}

	@Override
	public Sender item(int id) {
		return sql.selectOne("sender.item", id);
	}

	@Override
	public void update(Sender item) {
		sql.update("sender.update", item);
	}

	@Override
	public void delete(int id) {
		sql.delete("sender.delete", id);

	}

}
