package kr.ac.kopo.parcelservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.parcelservice.dao.ProductDao;
import kr.ac.kopo.parcelservice.model.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao dao;

	@Override
	public void add(Product item) {
		dao.add(item);

	}

	@Override
	public List<Product> list() {
		return dao.list();
	}

	@Override
	public Product item(int id) {
		return dao.item(id);
	}

	@Override
	public void delete(int id) {
		dao.delete(id);

	}

	@Override
	public void update(Product item) {
		dao.update(item);

	}

}
