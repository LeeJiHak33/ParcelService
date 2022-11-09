package kr.ac.kopo.parcelservice.dao;

import kr.ac.kopo.parcelservice.model.Parcel;

public interface ParcelDao {
	Parcel list(int id);

	void add(Parcel item);
	
	void delete(int id);

	Parcel item(int id);

	void update(Parcel item);
}
