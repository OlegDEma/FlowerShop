package shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ProductDescriptionDao;
import shop.entity.ProductDescription;
import shop.service.ProductDescriptionService;

@Service("poductDescriptionService")
public class ProductDescriptionServiceImpl implements ProductDescriptionService {


	@Autowired
	private ProductDescriptionDao productDescriptionDao;

	public void save(ProductDescription productDescription) {
		productDescriptionDao.save(productDescription);
	}

	public void update(ProductDescription productDescription) {
		productDescriptionDao.save(productDescription);
		
	}

	public void delete(ProductDescription productDescription) {
		productDescriptionDao.delete(productDescription);
		
	}

	public void delete(int id) {
		productDescriptionDao.delete(id);
		
	}

	public ProductDescription findOne(int id) {
		return productDescriptionDao.findOne(id);
	}

	public List<ProductDescription> findAll() {
		return productDescriptionDao.findAll();
	}

}
