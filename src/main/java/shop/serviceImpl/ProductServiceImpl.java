package shop.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import shop.dao.CartDao;
import shop.dao.ProductDao;
import shop.dao.UserDao;
import shop.entity.Cart;
import shop.entity.Product;
import shop.entity.User;
import shop.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private CartDao cartDao;
	
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

	@Override
	public List<Product> findAllByPriceESC(String sort) {
		List<Product> products = sort(sort);
		Collections.sort(products,new Comparator<Product>() {
			@Override
			public int compare(Product o1, Product o2) {
				return (int) (o1.getPrice() - o2.getPrice());
			}
		});
		return products;
	}

	@Override
	public List<Product> findAllByPriceDESC(String sort) {
		List<Product> products = sort(sort);
		Collections.sort(products,new Comparator<Product>() {
			@Override
			public int compare(Product o1, Product o2) {
				return (int) (o2.getPrice() - o1.getPrice());
			}
		});
		return products;
	}

	@Override
	public List<Product> findAllByName(String sort) {
		List<Product> products = sort(sort);
		Collections.sort(products,new Comparator<Product>() {
			@Override
			public int compare(Product o1, Product o2) {
				return o1.getName().compareTo(o2.getName());

			}
		});
		return products;
	}

	public Page<Product> findAll(int currentPage, int numberOfItem) {

		List<Product> products = productDao.findAll();

		Pageable pageable = new PageRequest(currentPage, numberOfItem);

		return productDao.findAll(pageable);

	}

    public Page<Product> findAll(int currentPage, int numberOfItem, Sort sort) {


		List<Product> products = productDao.findAll();

		Pageable pageable = new PageRequest(currentPage, numberOfItem , sort);

		return productDao.findAll(pageable);

	}

	public Page<Product> findAll(int currentPage, int numberOfItem, String category) {


		List<Product> products = productDao.findAll();

		Pageable pageable = new PageRequest(currentPage,numberOfItem);

		return productDao.findByCategory(category ,pageable);

	}

	@Override
	public String getCartInfoProduct(Principal principal) {

	User user = userDao.findOne(Integer.parseInt(principal.getName()));
	if(user.getCarts().get(0) == null){
        System.out.println("NNUULLLL");
        Cart cart = new Cart();
//		user.getCarts().add(cart);
        cart.setName("default");
		cart.setUser(user);
		cartDao.save(cart);
//		userDao.save(user);
	}
		User user1 = userDao.findOne(Integer.parseInt(principal.getName()));
		Cart cart = user1.getCarts().get(0);
		List<Product> list = cart.getProduct();
		String numberOfprod = null ;
		int i = 0;
		for (Product product: list) {
			i+= 1 ;
		}
		numberOfprod = String.valueOf(i);
		return numberOfprod;
	}


}
