package kr.ac.kopo.parcelservice.dao;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Notice;

public interface NoticeDao {
	
	
	void delete(int id);

	void add(Notice item);

	Notice item(int id);

	void update(Notice item);

	List<Notice> list();

}
