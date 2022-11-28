package kr.ac.kopo.parcelservice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.parcelservice.model.Question;

@Repository
public class QuestionDaoImpl implements QuestionDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Question> list() {
		return sql.selectList("question.list");
	}

	@Override
	public void delete(int id) {
		sql.delete("question.delete", id);

	}

	@Override
	public void add(Question item) {
		sql.insert("question.add", item);

	}

	@Override
	public Question item(int id) {
		return sql.selectOne("question.item", id);
	}

	@Override
	public void update(Question item) {
		sql.update("question.update", item);

	}

	@Override
	public void view(int id) {
		sql.update("question.update2", id);

	}

}
