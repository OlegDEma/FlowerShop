package shop.service;

import java.util.List;

import shop.entity.Model;

public interface ModelService {
	
	void save(Model model);
	void update(Model model);
	void delete(Model model);
	void delete(int id);
	Model findOne(int id);
	Model findByNameOfModel(String nameOfModel);
	List<Model> findAll();

}
