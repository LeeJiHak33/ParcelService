package kr.ac.kopo.parcelservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.parcelservice.dao.NoticeDao;
import kr.ac.kopo.parcelservice.model.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeDao dao;


	@Override
	public void delete(int id) {
		dao.delete(id);
		
	}

	@Override
	public void add(Notice item) {
		dao.add(item);
		
	}

	@Override
	public Notice item(int id) {
		return dao.item(id);
	}

	@Override
	public void update(Notice item) {
		dao.update(item);
		
	}

	@Override
	public List<Notice> list() {
		return dao.list();
	}

}
