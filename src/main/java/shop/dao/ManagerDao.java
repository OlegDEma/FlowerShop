package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.Manager;

public interface ManagerDao extends JpaRepository<Manager,Integer> {
	
	Manager findByNameAndSurname(String name, String surname);

}
