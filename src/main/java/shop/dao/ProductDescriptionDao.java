package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.ProductDescription;

public interface ProductDescriptionDao extends JpaRepository<ProductDescription, Integer>{
	

}
