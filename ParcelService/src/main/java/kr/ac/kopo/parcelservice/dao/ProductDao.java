package kr.ac.kopo.parcelservice.dao;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Product;

public interface ProductDao {

	List<Product> list();

	Product item(int id);

	void delete(int id);

	void update(Product item);

	void add(Product item);

}
