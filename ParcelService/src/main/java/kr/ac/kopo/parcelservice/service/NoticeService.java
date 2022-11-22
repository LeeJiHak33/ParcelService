package kr.ac.kopo.parcelservice.service;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Notice;

public interface NoticeService {

	void delete(int id);

	void add(Notice item);

	Notice item(int id);

	void update(Notice item);

	List<Notice> list();


}
