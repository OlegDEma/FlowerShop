package shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.DeliveryDao;
import shop.entity.Delivery;
import shop.service.DeliveryService;

@Service("deliveryService")
public class DeliveryServiceImpl implements DeliveryService {

	@Autowired
	private DeliveryDao deliveryDao;
	
	public Delivery findOne(int id) {
		return deliveryDao.findOne(id);
	}

	public Delivery findByWayOfDelivery(String wayOfDelivery) {
		return deliveryDao.findByWayOfDelivery(wayOfDelivery);
	}

	public void save(Delivery delivery) {
		deliveryDao.save(delivery);
		
	}

	public void update(Delivery delivery) {
		deliveryDao.save(delivery);
		
	}

	public void delete(Delivery delivery) {
		deliveryDao.delete(delivery);
		
	}

	public void delete(int id) {
		deliveryDao.delete(id);
		
	}

	public List<Delivery> findAll() {		
		return deliveryDao.findAll();
	}

}
