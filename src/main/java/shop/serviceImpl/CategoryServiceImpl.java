package shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.CategoryDao;
import shop.entity.Category;
import shop.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDao categoryDao;
	
	public Category findOne(int id) {
		return categoryDao.findOne(id);		
	}	
	

	public void save(Category category) {
		categoryDao.save(category);
		
	}

	public void delete(Category category) {
		categoryDao.delete(category);
		
	}

	public void delete(int id) {
		categoryDao.delete(id);
		
	}

	public List<Category> findAll() {
		return categoryDao.findAll();
	}

	public void update(Category category) {
		categoryDao.save(category);
		
	}


	public Category findByName(String name) {
		return categoryDao.findByName(name);
	}

}
