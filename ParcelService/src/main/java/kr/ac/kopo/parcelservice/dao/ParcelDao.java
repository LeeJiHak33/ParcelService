package kr.ac.kopo.parcelservice.dao;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Parcel;

public interface ParcelDao {
	List<Parcel> list();

	void add(Parcel item);
	
	void delete(int id);

	Parcel item(int id);

	void update(Parcel item);
}
