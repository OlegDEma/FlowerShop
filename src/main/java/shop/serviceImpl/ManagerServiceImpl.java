package shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ManagerDao;
import shop.entity.Manager;
import shop.service.ManagerService;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	private ManagerDao managerDao;
	
	public void save(Manager manager) {
		managerDao.save(manager);
		
	}

	public void update(Manager manager) {
		managerDao.save(manager);
		
	}

	public void delete(Manager manager) {
		managerDao.delete(manager);
		
	}

	public void delete(int id) {
		managerDao.delete(id);
		
	}

	public List<Manager> findAll() {
		return managerDao.findAll();
	}

	public Manager findOne(int id) {
		return managerDao.findOne(id);
	}

	public Manager findByNameAndSurname(String name, String surname) {
		return managerDao.findByNameAndSurname(name, surname);
	}

}
