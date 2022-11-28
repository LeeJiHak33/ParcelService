package kr.ac.kopo.parcelservice.service;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Question;


public interface QuestionService {

	List<Question> list();

	void delete(int id);

	void add(Question item);

	Question item(int id);

	void update(Question item);

	void view(int id);

	


}
