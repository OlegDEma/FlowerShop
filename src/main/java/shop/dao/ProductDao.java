package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.Product;

public interface ProductDao extends JpaRepository<Product, Integer> {
	
	Product findByName(String name);

}
