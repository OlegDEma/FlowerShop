package shop.service;

import java.util.List;

import shop.entity.Brand;

public interface BrandService {
	
	Brand findOne(int id);
	void save(Brand brand);
	List<Brand> findAll();
	void update(Brand brand);
	void delete(Brand brand);
	void delete(int id);

}
