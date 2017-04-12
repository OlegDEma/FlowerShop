package shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.SubcategoryDao;
import shop.entity.Subcategory;
import shop.service.SubcategoryService;

@Service("subcategoryService")
public class SubcategoryServiceImpl implements SubcategoryService {

	@Autowired
	private SubcategoryDao subcategoryDao;
	
	public void save(Subcategory subcategory) {
		subcategoryDao.save(subcategory);
		
	}

	public void update(Subcategory subcategory) {
		subcategoryDao.save(subcategory);
		
	}

	public void delete(Subcategory subcategory) {
		subcategoryDao.delete(subcategory);
		
	}

	public Subcategory findOne(int id) {
		return subcategoryDao.findOne(id);
	}

	public List<Subcategory> findAll() {
		return subcategoryDao.findAll();
	}

	public void delete(int id) {
		subcategoryDao.delete(id);
		
	}

	public Subcategory findByName(String name) {
		return subcategoryDao.findByName(name);
	}

}
