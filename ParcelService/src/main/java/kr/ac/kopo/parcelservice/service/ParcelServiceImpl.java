package kr.ac.kopo.parcelservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.parcelservice.dao.ParcelDao;
import kr.ac.kopo.parcelservice.model.Parcel;

@Service
public class ParcelServiceImpl implements ParcelService {
	
	@Autowired
	ParcelDao dao;

	@Override
	public void delete(int id) {
		dao.delete(id);
	}

	@Override
	public List<Parcel> list() {
		return dao.list();
	}

	@Override
	public void add(Parcel item) {
		dao.add(item);
		
	}

	@Override
	public Parcel item(int id) {
		return dao.item(id);
	}

	@Override
	public void update(Parcel item) {
		dao.update(item);
		
	}

}
