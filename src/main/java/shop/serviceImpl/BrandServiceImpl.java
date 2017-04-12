package shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.BrandDao;
import shop.entity.Brand;
import shop.service.BrandService;

@Service("brandService")
public class BrandServiceImpl implements BrandService {

	@Autowired
	BrandDao brandDao;
	
	public void save(Brand brand) {
		brandDao.save(brand);
		
	}

	public List<Brand> findAll() {
		return brandDao.findAll();
	}

	public void update(Brand brand) {
		brandDao.save(brand);
		
	}

	public void delete(Brand brand) {
		brandDao.delete(brand);
		
	}

	public void delete(int id) {
		brandDao.delete(id);
		
	}

	public Brand findOne(int id) {		
		return brandDao.findOne(id);
	}

}
