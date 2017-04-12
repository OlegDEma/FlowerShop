package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import shop.entity.Category;

public interface CategoryDao extends JpaRepository<Category,Integer> {
	
	Category findByName(String name);

}
