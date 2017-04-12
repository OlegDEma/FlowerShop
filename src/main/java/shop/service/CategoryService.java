package shop.service;

import java.util.List;

import shop.entity.Category;

public interface CategoryService {
	
	Category findByName(String name);
	Category findOne(int id);
	void save(Category category);
	void delete(Category category);
	void delete(int id);
	List<Category> findAll();
	void update(Category category);
}
