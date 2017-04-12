package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.Subcategory;

public interface SubcategoryDao extends JpaRepository<Subcategory, Integer> {
	
	Subcategory findByName(String name);

}
