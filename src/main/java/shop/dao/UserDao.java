package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.User;

public interface UserDao extends JpaRepository<User, Integer>{
	
	User findByNameAndSurname(String name, String surname);
	User findByName(String name);
	User findByPhone(String phone);
	User findByUuid(String uuid);

}
