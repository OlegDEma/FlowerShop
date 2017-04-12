package shop.entity;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Sale {

	@Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private LocalDate date;
	
	private int discount;
	
	private double total;
	
	@ManyToOne
	private User user;
	
	@OneToMany(mappedBy="sale")
	private List<Product> products;

	public Sale() {
		super();
	}

	public Sale(int discount, double total) {
		super();
		this.discount = discount;
		this.total = total;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}
	

	@Override
	public String toString() {
		return "Sale [id=" + id + ", date=" + date + ", discount=" + discount + ", total=" + total + "]";
	}
	
	
	
	
}
