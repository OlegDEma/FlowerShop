package shop.service;

import java.util.List;

import shop.entity.Subcategory;

public interface SubcategoryService {
	
	void save(Subcategory subcategory);
	void update(Subcategory subcategory);
	void delete(Subcategory subcategory);
	Subcategory findOne(int id);
	List<Subcategory> findAll();
	void delete(int id);	
	Subcategory findByName(String name);
}
