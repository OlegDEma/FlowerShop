package shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.CartDao;
import shop.entity.Cart;
import shop.entity.Product;
import shop.service.CartService;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Autowired 
	private CartDao cartDao;
	
	public Cart findByName(String name) {
		
		return cartDao.findByName(name);
	}

	public Cart findOne(int id) {
		return cartDao.findOne(id);
	}

	public void save(Cart cart){
		List<Product> products = cart.getProduct();

		double total = 0;

		for (Product product:products) {

			total+= product.getPrice();

		}

		cart.setTotal(total);

		cartDao.save(cart);
	}

	public void delete(Cart cart) {
		cartDao.delete(cart);
		
	}

	public void delete(int id) {
		cartDao.delete(id);
		
	}

	public List<Cart> findAll() {
		return cartDao.findAll();
	}

	public void update(Cart cart) {

		List<Product> products = cart.getProduct();

		double total = 0;

		for (Product product:products) {

			total+= product.getPrice();

		}

		cart.setTotal(total);

		cartDao.save(cart);
		
	}

}

