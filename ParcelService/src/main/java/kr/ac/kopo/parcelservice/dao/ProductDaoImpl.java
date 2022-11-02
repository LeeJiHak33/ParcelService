package kr.ac.kopo.parcelservice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.parcelservice.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Product> list() {		
		return sql.selectList("product.list");
	}

	@Override
	public Product item(int id) {
		return sql.selectOne("product.item", id);
	}

	@Override
	public void delete(int id) {
		sql.delete("product.delete", id);

	}

	@Override
	public void update(Product item) {
		sql.update("product.update", item);

	}

	@Override
	public void add(Product item) {
		sql.insert("produtc.add", item);

	}

}
