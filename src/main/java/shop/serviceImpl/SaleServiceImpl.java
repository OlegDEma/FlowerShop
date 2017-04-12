package shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.SaleDao;
import shop.entity.Sale;
import shop.service.SaleService;

@Service("saleService")
public class SaleServiceImpl implements SaleService {

	@Autowired
	private SaleDao saleDao;
	
	public void save(Sale sale) {
		saleDao.save(sale);		
	}

	public void update(Sale sale) {
		saleDao.save(sale);		
	}

	public void delete(Sale sale) {
		saleDao.delete(sale);
		
	}

	public void delete(int id) {
		saleDao.delete(id);
		
	}

	public Sale findOne(int id) {
		return saleDao.findOne(id);
	}

	public List<Sale> findAll() {
		return saleDao.findAll();
	}
 
}
