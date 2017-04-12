package shop.service;

import java.security.Principal;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import shop.entity.Product;

public interface ProductService {
	
	void save(Product product);
	void update(Product product);
	void delete(Product product);
	void delete(int id);
	Product findOne(int id);
	List<Product> findAll();
	Product findByName(String name);
	public void saveImageForProduct(String id, MultipartFile multipartFile);
	List<Product> sort(String nameOfCategory);
}
