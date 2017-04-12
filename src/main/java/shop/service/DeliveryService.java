package shop.service;

import java.util.List;

import shop.entity.Delivery;

public interface DeliveryService {

	Delivery findOne(int id);
	Delivery findByWayOfDelivery(String wayOfDelivery);
	void save(Delivery delivery);
	void update(Delivery delivery);
	void delete(Delivery delivery);
	void delete(int id);
	List<Delivery> findAll();
}
