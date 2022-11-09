package kr.ac.kopo.parcelservice.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.parcelservice.model.Parcel;

@Repository
public class ParcelDaoImpl implements ParcelDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public void delete(int id) {
		sql.delete("parcel.delete",id);

	}

	@Override
	public Parcel list(int id) {
		return sql.selectOne("parcel.list", id);
	}

	@Override
	public void add(Parcel item) {
		sql.insert("parcel.add",item);
		
	}

	@Override
	public Parcel item(int id) {
		return sql.selectOne("parcel.item", id);
	}

	@Override
	public void update(Parcel item) {
		sql.update("parcel.update", item);
		
	}

}
