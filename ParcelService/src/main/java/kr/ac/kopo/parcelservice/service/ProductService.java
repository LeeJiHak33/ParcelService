package kr.ac.kopo.parcelservice.service;

import java.util.List;

import kr.ac.kopo.parcelservice.model.Product;

public interface ProductService {

	void add(Product item);
	
	List<Product> list();

	Product item(int id);

	void delete(int id);

	void update(Product item);

	

}
