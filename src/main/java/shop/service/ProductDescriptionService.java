package shop.service;

import java.util.List;

import shop.entity.ProductDescription;

public interface ProductDescriptionService {
	void save(ProductDescription productDescription);
	void update(ProductDescription productDescription);
	void delete(ProductDescription productDescription);
	void delete(int id);
	ProductDescription findOne(int id);
	List<ProductDescription> findAll();
	

}
