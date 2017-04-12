package shop.service;

import java.util.List;

import shop.entity.Manager;

public interface ManagerService {
	void save(Manager manager);
	void update(Manager manager);
	void delete(Manager manager);
	void delete(int id);
	List<Manager> findAll();
	Manager findOne(int id);
	Manager findByNameAndSurname(String name, String surname);
}
