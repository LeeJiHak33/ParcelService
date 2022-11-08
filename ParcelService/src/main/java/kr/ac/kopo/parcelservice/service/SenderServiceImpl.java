package kr.ac.kopo.parcelservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.parcelservice.dao.SenderDao;
import kr.ac.kopo.parcelservice.model.Sender;

@Service
public class SenderServiceImpl implements SenderService {
	
	@Autowired
	SenderDao dao;

	@Override
	public List<Sender> list() {
		return dao.list();
	}

	@Override
	public void add(Sender item) {
		dao.add(item);

	}

	@Override
	public Sender item(String id) {
		return dao.item(id);
	}

	@Override
	public void update(Sender item) {
		dao.update(item);

	}

	@Override
	public void delete(String id) {
		dao.delete(id);

	}

}
