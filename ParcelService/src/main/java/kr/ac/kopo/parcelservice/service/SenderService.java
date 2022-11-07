package kr.ac.kopo.parcelservice.service;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Sender;


public interface SenderService {

	List<Sender> list();

	void add(Sender item);

	Sender item(int id);

	void update(Sender item);

	void delete(int id);

}
