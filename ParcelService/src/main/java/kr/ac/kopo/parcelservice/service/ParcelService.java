package kr.ac.kopo.parcelservice.service;

import kr.ac.kopo.parcelservice.model.Parcel;

public interface ParcelService {
	Parcel list(int id);

	void delete(int id);

	void add(Parcel item);
	
	Parcel item(int id);
	
	void update(Parcel item);

}
