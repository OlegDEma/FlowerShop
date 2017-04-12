package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.Cart;

public interface CartDao extends JpaRepository<Cart, Integer>{
	
	Cart findByName(String name);

}
