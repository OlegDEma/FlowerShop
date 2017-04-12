package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.Model;

public interface ModelDao extends JpaRepository<Model,Integer> {
	
	Model findByNameOfModel(String nameOfModel);

}
