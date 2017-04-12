package shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import shop.entity.Delivery;

public interface DeliveryDao extends JpaRepository<Delivery, Integer>{
	
	Delivery findByWayOfDelivery(String wayOfDelivery);

}
