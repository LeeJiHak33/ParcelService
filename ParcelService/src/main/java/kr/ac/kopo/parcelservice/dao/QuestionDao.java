package kr.ac.kopo.parcelservice.dao;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Question;

public interface QuestionDao {

	List<Question> list();

	void delete(int id);

	void add(Question item);

	Question item(int id);

	void update(Question item);

	void view(int id);
	


}
