package kr.ac.kopo.parcelservice.dao;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Sender;

public interface SenderDao {

	List<Sender> list();

	void add(Sender item);

	Sender item(String id);

	void update(Sender item);

	void delete(String id);

}
