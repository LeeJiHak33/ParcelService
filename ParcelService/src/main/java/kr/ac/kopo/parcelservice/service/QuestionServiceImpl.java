package kr.ac.kopo.parcelservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.parcelservice.dao.QuestionDao;
import kr.ac.kopo.parcelservice.model.Question;

@Service
public class QuestionServiceImpl implements QuestionService {
	
	@Autowired
	QuestionDao dao;

	@Override
	public List<Question> list() {
		return dao.list();
	}

	@Override
	public void delete(int id) {
		dao.delete(id);
	}

	@Override
	public void add(Question item) {
		dao.add(item);
	}

	@Override
	public Question item(int id) {
		return dao.item(id);
	}

	@Override
	public void update(Question item) {
		dao.update(item);

	}

	@Override
	public void view(int id) {
		dao.view(id);

	}

}
