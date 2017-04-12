package shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ModelDao;
import shop.entity.Model;
import shop.service.ModelService;

@Service("modelService")
public class ModelServiceImpl implements ModelService {

	@Autowired
	private ModelDao modelDao;
	
	public void save(Model model) {
		modelDao.save(model);
		
	}

	public void update(Model model) {
		modelDao.save(model);
		
	}

	public void delete(Model model) {
		modelDao.delete(model);
		
	}

	public void delete(int id) {
		modelDao.delete(id);
		
	}

	public Model findOne(int id) {
		return modelDao.findOne(id);
	}

	public Model findByNameOfModel(String nameOfModel) {
		return modelDao.findByNameOfModel(nameOfModel);
	}

	public List<Model> findAll() {
		return modelDao.findAll();
	}

}
