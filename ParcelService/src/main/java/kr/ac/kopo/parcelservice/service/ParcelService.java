package kr.ac.kopo.parcelservice.service;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Parcel;

public interface ParcelService {
	List<Parcel> list();

	void delete(int id);

	void add(Parcel item);
	
	Parcel item(int id);
	
	void update(Parcel item);

}
