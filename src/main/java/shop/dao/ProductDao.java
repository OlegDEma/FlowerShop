package shop.dao;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import shop.entity.Product;

import java.util.List;

public interface ProductDao extends JpaRepository<Product, Integer> {
	
	Product findByName(String name);
//	Page<Product> findByNameOfCategory(String category,Pageable pageable);
//    Page<Product> findByCategory(String category,Pageable pageable);
    @Query ("SELECT p FROM Product p WHERE p.category.name= :category")
    Page<Product> findByCategory(@Param("category") String category,
                                 Pageable pageable);

}
