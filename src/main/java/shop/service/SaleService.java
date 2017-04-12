package shop.service;

import java.util.List;

import shop.entity.Sale;

public interface SaleService {

	void save(Sale sale);
	void update(Sale sale);
	void delete(Sale sale);
	void delete(int id);
	Sale findOne(int id);
	List<Sale> findAll();
	
	
}
