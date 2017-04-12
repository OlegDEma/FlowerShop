package shop.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import shop.dao.ProductDao;
import shop.entity.Product;
import shop.entity.User;
import shop.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	public void save(Product product) {
		productDao.save(product);
		
	}

	public void update(Product product) {
		productDao.save(product);
		
	}

	public void delete(Product product) {
		productDao.delete(product);
		
	}

	public void delete(int id) {
		productDao.delete(id);
		
	}

	public Product findOne(int id) {
		return productDao.findOne(id);
	}

	public List<Product> findAll() {
		return productDao.findAll();
	}

	public Product findByName(String name) {		
		return productDao.findByName(name);
	}

	@Transactional
	public void saveImageForProduct( String id , MultipartFile multipartFile) {

		Product product = productDao.findOne(Integer.parseInt(id));

		String path = System.getProperty("catalina.home") + "/resources/" + product.getName() + "/"
				+ multipartFile.getOriginalFilename();

		product.setImage("resources/" + product.getName() + "/" + multipartFile.getOriginalFilename());

		File file = new File(path);

		try {
			file.mkdirs();
			try {
				FileUtils.cleanDirectory(
						new File(System.getProperty("catalina.home") + "/resources/" + product.getName() + "/"));
			} catch (IOException e) {
				e.printStackTrace();
			}
			multipartFile.transferTo(file);
		} catch (IOException e) {
			System.out.println("error with file");
		}
	}

	public List<Product> sort(String nameOfCategory) {
		List<Product> products = productDao.findAll();
		List<Product> list = new ArrayList<Product>();
		for(Product product : products){
			if (product.getCategory().getName().equals(nameOfCategory)){
				list.add(product);
			}
		}
		return list;
	}


}
