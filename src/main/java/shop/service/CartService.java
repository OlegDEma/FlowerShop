package shop.service;

import java.util.List;

import shop.entity.Cart;

public interface CartService {
	
	Cart findByName(String name);
	Cart findOne(int id);
	void save(Cart cart);
	void delete(Cart cart);
	void delete(int id);
	List<Cart> findAll();
	void update(Cart cart);

}
