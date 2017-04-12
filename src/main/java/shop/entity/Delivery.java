package shop.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Delivery {
	
	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String wayOfDelivery;
	
	private String firmOfDelivery;
	
	@OneToMany(mappedBy="delivery")
	private List<Manager> managers;

	public Delivery(String wayOfDelivery, String firmOfDelivery) {
		super();
		this.wayOfDelivery = wayOfDelivery;
		this.firmOfDelivery = firmOfDelivery;
	}

	public Delivery() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWayOfDelivery() {
		return wayOfDelivery;
	}

	public void setWayOfDelivery(String wayOfDelivery) {
		this.wayOfDelivery = wayOfDelivery;
	}

	public String getFirmOfDelivery() {
		return firmOfDelivery;
	}

	public void setFirmOfDelivery(String firmOfDelivery) {
		this.firmOfDelivery = firmOfDelivery;
	}

	public List<Manager> getManagers() {
		return managers;
	}

	public void setManagers(List<Manager> managers) {
		this.managers = managers;
	}

	@Override
	public String toString() {
		return "Delivery [id=" + id + ", wayOfDelivery=" + wayOfDelivery + ", firmOfDelivery=" + firmOfDelivery
				+ ", managers=" + managers + "]";
	}
		
	
	

}
